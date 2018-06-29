package jp_2dgames.game.state;

import jp_2dgames.game.util.CauseOfDeathMgr;
import jp_2dgames.game.unlock.UnlockMgr;
import jp_2dgames.game.save.GameData;
import jp_2dgames.game.particle.ParticleKira;
import jp_2dgames.game.particle.EffectCloud;
import jp_2dgames.game.util.Pad;
import jp_2dgames.game.item.ItemConst;
import jp_2dgames.game.actor.Npc;
//import flixel.addons.effects.FlxWaveSprite;
import jp_2dgames.game.util.Key;
import jp_2dgames.game.gimmick.Door;
import jp_2dgames.game.gimmick.Pit;
import jp_2dgames.game.gui.UIText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import jp_2dgames.game.gui.GuiBuyDetail;
import jp_2dgames.lib.TextUtil;
import flixel.util.FlxColor;
import jp_2dgames.lib.Snd;
import jp_2dgames.game.particle.ParticleSmoke;
import flixel.math.FlxRandom;
import jp_2dgames.game.particle.ParticleMessage;
import jp_2dgames.game.particle.ParticleRecovery;
import flixel.math.FlxPoint;
import flixel.text.FlxText;
import jp_2dgames.game.particle.Particle;
import jp_2dgames.game.particle.ParticleDamage;
import jp_2dgames.game.item.ItemUtil;
import jp_2dgames.game.item.DropItem;
import jp_2dgames.game.gui.Message;
import jp_2dgames.game.gui.Inventory;
import jp_2dgames.game.gui.GuiStatus;
import jp_2dgames.game.actor.Enemy;
import jp_2dgames.game.actor.Player;
import jp_2dgames.game.item.ItemUtil.IType;
import jp_2dgames.game.item.ItemData.ItemExtraParam;
import jp_2dgames.game.item.ItemData;
import flixel.group.FlxGroup.FlxTypedGroup;
import jp_2dgames.lib.Layer2D;
import flixel.FlxSprite;
import jp_2dgames.lib.TmxLoader;
import flixel.FlxG;
import flixel.FlxState;
import jp_2dgames.game.save.Save;
import jp_2dgames.game.Field;

import jp_2dgames.game.gui.GuiKey;
import flixel.FlxCamera;
/**
 * 状態
 *  
 **/
private enum State {
  FloorStart;   // フロア開始演出楼层开始演出
  FloorStart2;  // フロア開始演出2楼层开始演出
  Main;         // メイン処理主处理
  GameoverWait; // ゲームオーバー待ち時間 游戏结束等待
  Gameover;     // ゲームオーバー 游戏结束
  Gameclear;    // ゲームクリア 游戏通关
  End;          // 終了
}

/**
 * メインゲーム 主游戏
 */
class PlayState extends FlxState {

  // タイマー 结束时 定时器
  private static inline var TIMER_GAMEOVER:Int = 60;

  // プレイヤー情報 玩家信息
  private var _player:Player;
  public var player(get, never):Player;
  private function get_player() {
    return _player;
  }
  // マップ情報 地图信息
  private var _lField:Layer2D;
  public var lField(get, never):Layer2D;
  private function get_lField() {
    return _lField;
  }

  // シーケンス管理 游戏流程状态管理
  private var _seq:SeqMgr;

  // 状態 状态
  private var _state:State;

  // 汎用タイマー 通用定时器
  private var _timer:Int;

  // 背景
  private var _back:FlxSprite;
  // 背景エフェクト 背景特效
  //private var _wave:FlxWaveSprite = null;

  // フロア開始演出用テキスト 楼层开始导演用文本
  private var _txtFloor:FlxText;
  // フロア開始演出用スプライト 楼层开始导演用雪碧
  private var _sprStarts:Array<FlxSprite>;

  // CSVデータ csv数据
  private var _csv:Csv;

  // ステータス 主角信息生命等显示状态
  private var _guistatus:GuiStatus;
  public var guistatus(get, never):GuiStatus;
  public function get_guistatus() {
    return _guistatus;
  }

  // ターン数 回合数
  private var _turn:Int = 0;

  // 階段エフェクトタイマー 楼梯效果计时器
  private var _tStair:Int = 0;

  // デバッグ用アイテム 调试物品
  private var _debugItem:DropItem;
  // デバッグ用敵 敌人调试
  private var _debugEnemy:Enemy;

  //屏幕按键
  private var _guiKey:GuiKey;
  
  //
  public static var hudCam:FlxCamera;
  public static var uiCam:FlxCamera;
  /**
	 * 生成
	 */
  override public function create():Void {
    super.create();
	//FlxG.camera.antialiasing = true;
    if(Global.isLoadGame()) {
      // セーブデータをロード
      // グローバルデータのみ 保存数据是否载入载入
      Save.load(LoadType.Glob, false, false);
    }

    // 状態を設定 设定状态
    _state = State.FloorStart;
    _timer = 0;
    // スプライト表示 雪碧显示
    var xspr = FlxG.width/4;
    var yspr = FlxG.height/1.5;
    _sprStarts = new Array<FlxSprite>();
    {
      // プレイヤー 玩家
      var spr = new FlxSprite(xspr, yspr).loadGraphic("assets/images/player.png", true);
      spr.animation.add("play", [10, 11], 8);
      spr.animation.play("play");
      spr.velocity.x = 75;
      this.add(spr);
      _sprStarts.push(spr);
    }

    // ネコ 猫
    xspr -= Field.GRID_SIZE;
    for(itemid in ItemConst.ORB1...(ItemConst.ORB4+1)) {
      if(Global.hasItem(itemid)) {
        var idx = itemid - ItemConst.ORB1 + 1;
        var spr = new FlxSprite(xspr, yspr).loadGraphic("assets/images/cat.png", true);
        spr.animation.add("play", [6, 7, 8, 7], 8); // 右
        spr.animation.play("play");
        spr.velocity.x = 75;
        spr.color = Npc.typeToColor(idx);
        this.add(spr);
        _sprStarts.push(spr);
        xspr -= Field.GRID_SIZE;
      }
    }

    // フロア開始演出スタート 当前层开始前的过场
    _txtFloor = new FlxText(FlxG.width/3, FlxG.height/2.5, 256, "", 48);
    _txtFloor.text = 'Floor ${Global.getFloor()}';
    _txtFloor.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.GREEN, 3);
    _txtFloor.color = FlxColor.WHITE;
    FlxTween.tween(_txtFloor, {x:_txtFloor.x-32}, 1, {ease:FlxEase.expoOut});
    this.add(_txtFloor);
    FlxG.camera.fade(FlxColor.BLACK, 0.5, true, function() {
      FlxG.camera.shake(0, 0.5, function() {
        _floorStart();
      });
    });

    // BGM再生開始 背景音乐开始播放
    var floor = Global.getFloor();
    var nBgm = 1;
    switch(floor) {
      case 1, 2:
        // フロア1/2はフロア番号がBGM 楼层1/2在楼层号码bgm
        nBgm = floor;
      default:
        // それ以外はランダム 除此之外是随机
        nBgm = FlxG.random.int(1, 16);
    }
    var strBgm = TextUtil.fillZero(nBgm, 3);
    Snd.playMusic(strBgm);

    // 显示屏幕按钮
	  _guiKey = new GuiKey();
	
  }

  private function _floorStart():Void {
    _state = State.FloorStart2;

    // 暗転解除 删除过场的内容
    this.remove(_txtFloor);
    for(spr in _sprStarts) {
      this.remove(spr);
    }
    // インスタンス生成 正式游戏内容开始
    _start();
    FlxG.camera.fade(FlxColor.BLACK, 0.3, true, function() {
      // フェード終了 黑色屏幕结束
      _state = State.Main;
    }, true);
  }

  //** 正式游戏开始**/
  private function _start() {
    //物品镜头
    hudCam = new FlxCamera(0, 0, FlxG.width, FlxG.height);
    // CSV読み込み csv读入
    _csv = new Csv();
    Enemy.csv = _csv.enemy;
    ItemUtil.create();

    // マップ読み込み 地图读入
    var tmx = new TmxLoader();
    tmx.load(Global.getFloorMap());
    var layer = tmx.getLayer(0);
    // 背景レイヤーを生成 背景生成分层
    _lField = new Layer2D();
    // 背景画像を登録 背景图像注册
    _back = new FlxSprite();
    this.add(_back);

    // トラップ生成 陷阱生成
    Pit.parent = new FlxTypedGroup<Pit>(32);
    for(i in 0...Pit.parent.maxSize) {
      Pit.parent.add(new Pit());
    }

    // ドア生成 门生成
    Door.parent = new FlxTypedGroup<Door>(4);
    for(i in 0...Door.parent.maxSize) {
      Door.parent.add(new Door());
    }

    // 階段の位置をランダムに配置する 楼梯的位置随机部署
    Field.randomize(layer, Global.getFloor(), _csv);

    // フィールドを登録 设置楼梯图层位置
    setFieldLayer(layer);

    // 各種登録
    this.add(Pit.parent);
    this.add(Door.parent);
    // ドアHPを登録
    Door.parent.forEach(function(d:Door) {
      this.add(d.hpText);
    });

    // アイテム管理生成
    var items = new FlxTypedGroup<DropItem>(128);
    for(i in 0...items.maxSize) {
      items.add(new DropItem());
    }
    this.add(items);
    DropItem.parent = items;

    // NPC生成
    Npc.parent = new FlxTypedGroup<Npc>(4);
    for(i in 0...Npc.parent.maxSize) {
      var npc = new Npc();
      Npc.parent.add(npc);
    }
    this.add(Npc.parent);

    // 敵管理生成
    var enemies = new FlxTypedGroup<Enemy>(32);
    for(i in 0...enemies.maxSize) {
      var e = new Enemy();
      // IDに配列要素を設定 id排列要素设定
      e.ID = i;
      enemies.add(e);
    }
    this.add(enemies);
    Enemy.parent = enemies;

    // プレイヤー生成
    {
      var pt = layer.search(Field.PLAYER);
      _player = new Player(Std.int(pt.x), Std.int(pt.y), _csv.player);
      this.add(_player);
     FlxG.camera.follow(_player, TOPDOWN, 1);
      pt.put();
    }
    this.add(_player.cursor);
    for(arrow in _player.arrowList) {
      this.add(arrow);
    }

    // 敵からアクセスしやすいようにする
    Enemy.target = _player;

    // バステアイコン登録
    this.add(_player.balloon);
    // 敵のHPバー・バステアイコン登録
    enemies.forEach(function(e:Enemy) {
      this.add(e.hpBar);
      this.add(e.balloon);
    });

    // 魔法弾作成
    MagicShot.parent = new MagicShotMgr(enemies.maxSize);
    for(i in 0...MagicShot.parent.maxSize) {
      var ms = new MagicShot();
      MagicShot.parent.add(ms);
      // トレイルエフェクト登録
      this.add(ms.trail);
    }
    this.add(MagicShot.parent);

    // 雲エフェクト
    EffectCloud.parent = new FlxTypedGroup<EffectCloud>(EffectCloud.MAX_CLOUD);
    for(i in 0...EffectCloud.MAX_CLOUD) {
      var c = new EffectCloud();
      EffectCloud.parent.add(c);
    }
    this.add(EffectCloud.parent);

    // ナイトメア管理
    NightmareMgr.instance = new NightmareMgr(_csv.enemy_nightmare);

    // メッセージ生成
    var message = new Message(_csv.message, _csv.hint);
    Message.instance = message;
	// ui提示信息
    UIText.instance = new UIText(_csv.uitext);

    // 状态显示
    _guistatus = new GuiStatus();
    this.add(_guistatus);
	
    // パーティクル
    var particles = new FlxTypedGroup<Particle>(256);
    for(i in 0...particles.maxSize) {
      particles.add(new Particle());
    }
    this.add(particles);
    Particle.parent = particles;

    // パーティクル（ダメージ数値）
    {
      var part = new FlxTypedGroup<ParticleDamage>(16);
      for(i in 0...part.maxSize) {
        part.add(new ParticleDamage());
      }
      this.add(part);
      ParticleDamage.parent = part;

    }

    // パーティクル（HP回復数値）
    {
      var part = new FlxTypedGroup<ParticleRecovery>(4);
      for(i in 0...part.maxSize) {
        part.add(new ParticleRecovery());
      }
      this.add(part);
      ParticleRecovery.parent = part;
    }

    // パーティクル（メッセージ）
    {
      var part = new FlxTypedGroup<ParticleMessage>(8);
      for(i in 0...part.maxSize) {
        part.add(new ParticleMessage());
      }
      this.add(part);
      ParticleMessage.parent = part;
    }

    // パーティクル（敵の出現）
    {
      var part = new FlxTypedGroup<ParticleSmoke>(Enemy.parent.maxSize);
      for(i in 0...part.maxSize) {
        part.add(new ParticleSmoke());
      }
      this.add(part);
      ParticleSmoke.parent = part;
    }

    // パーティクル（きらきら）
    {
      ParticleKira.parent = new FlxTypedGroup<ParticleKira>(32);
      for(i in 0...ParticleKira.parent.maxSize) {
        ParticleKira.parent.add(new ParticleKira());
      }
      this.add(ParticleKira.parent);
    }

    //商店购买菜单生成
    GuiBuyDetail.create(640/2 - GuiBuyDetail.BG_WIDTH/2 - 80, FlxG.height/2 - GuiBuyDetail.BG_HEIGHT/2);

    if(Global.isLoadGame() == false) {
      // 敵やアイテムを自動配置
      Generator.exec(_csv, layer);
    }

    // メッセージを描画に登録
	//进程信息
    this.add(message);

    // 物品生成
    var inventory = new Inventory();
    this.add(inventory);
	
    var camBg = new FlxSprite(-FlxG.width*2 -64,-32);
    add(camBg);
    //镜头管理
    FlxG.camera.antialiasing = false;

    hudCam.zoom               = 1; // For 1/2 zoom out.
    hudCam.follow(camBg);
    hudCam.targetOffset.x     = 0;
    hudCam.targetOffset.y     = 0;
    hudCam.alpha              = 1;
    hudCam.useBgAlphaBlending = true;
    hudCam.bgColor            = FlxColor.TRANSPARENT;
	//FlxG.cameras.add(hudCam);
    
    Inventory.instance = inventory;
    inventory.setGuiStatus(_guistatus);
	  
    // アイテムデータ設定 物品数据设置
    Global.setItemList();
    inventory.kill();
	
	
    // シーケンス管理 程序总管理器
    _seq = new SeqMgr(this, _csv);

    // アンロック管理 解锁信息管理
    this.add(UnlockMgr.createInstance());

    // デバッグ情報設定
    //    FlxG.watch.add(player, "_state");
    //    FlxG.watch.add(player, "_stateprev");
    //    FlxG.watch.add(_seq, "_state");
    //    FlxG.watch.add(_seq, "_stateprev");
    //    FlxG.watch.add(this, "_state");

    //    var playdata = GameData.getPlayData();
    //    FlxG.watch.add(playdata, "playtime");
    //    FlxG.watch.add(playdata, "cntPlay");
    //    FlxG.watch.add(playdata, "cntGameclear");
    //    FlxG.watch.add(playdata, "maxFloor");
    //    FlxG.watch.add(playdata, "maxLv");
    //    FlxG.watch.add(playdata, "maxMoney");
    //    FlxG.watch.add(playdata, "maxItem");
    //    FlxG.watch.add(playdata, "cntEnemyKill");
    //    FlxG.watch.add(playdata, "cntNightmareKill");

    //    FlxG.debugger.visible = true;
    FlxG.debugger.toggleKeys = ["ALT"];
    //    FlxG.debugger.drawDebug = true;
    // セーブデータからロードする
    if(Global.isLoadGame()) {
      // ロード実行
      Save.load(LoadType.All, false, false);
      Global.SetLoadGame(false);
      // ナイトメア出現チェック
      NightmareMgr.checkAndStartEffect();
    }
    else {
      // フロア開始時のセーブ
      Save.save(false, false);
      // ゲームデータもセーブしておく
      GameData.save();
      // フロア踏破アンロックチェック
      UnlockMgr.check("floor", Global.getFloor());
    }

    // 雲エフェクト開始チェック
    NightmareMgr.checkAndStartCloud();

    // デバッグ用アイテム
    _debugItem = new DropItem();
    _debugItem.alpha = 0.5;
    this.add(_debugItem);
	
    //添加屏幕按键
    add(_guiKey);
  }

  /**
   * フィールド情報を設定する 设定场地信息
   **/
  public function setFieldLayer(layer:Layer2D) {
    // フィールド情報をコピー 复制字段信息
    _lField.copy(layer);

    // 背景画像を作成
    Field.createBackground(_lField, _back);
    //if(_wave == null) { //FlxWaveSprite 没有这个类
     // _wave = new FlxWaveSprite(_back, WaveMode.ALL, 0, -1, 0);
    this.add(_back);
    Field.setWaveSprite(_back);//设置开幕效果
    //}
    Field.setCollisionLayer(_lField);
  }

  /**
   * 破棄 
   */
  override public function destroy():Void {
    UnlockMgr.destroyInstance();
    Particle.parent         = null;
    ParticleDamage.parent   = null;
    ParticleRecovery.parent = null;
    ParticleSmoke.parent    = null;
    ParticleKira.parent     = null;
    NightmareMgr.instance   = null;
    EffectCloud.parent      = null;
    MagicShot.parent        = null;
    DropItem.parent         = null;
    Enemy.parent            = null;
    Enemy.csv               = null;
    Pit.parent              = null;
    Door.parent             = null;
    Message.instance        = null;
    UIText.instance         = null;
    Inventory.instance      = null;
    ItemUtil.destroy();
    Field.clear();
    super.destroy();
  }

  /**
   * 更新
   */
  override public function update(elapsed:Float):Void {
    super.update(elapsed);
    // ゲームパッド更新 游戏手柄更新
    Pad.update();
    switch(_state) {
      case State.FloorStart:
        if(Key.press.A) {
          // フェード・画面揺れキャンセル 淡出 屏幕震动取消
          FlxG.camera.stopFX();
          _floorStart();
        }
      case State.FloorStart2:

      case State.Main:
        // 階段エフェクト 显示楼梯效果
        _tStair++;
        if(_tStair%120 == 1) {
          Field.startStairEffect();
        }

        // シーケンス更新 消息顺序更新
        switch(_seq.update()) {
          case SeqMgr.RET_NONE:
            // そのまま続行 直接继续

          case SeqMgr.RET_GAMECLEAR:
            // ゲームクリア 游戏通关
            Snd.playSe("flash", true);
            FlxG.camera.flash(FlxColor.WHITE, 1, function() {
              Snd.playSe("flash", true);
              FlxG.camera.fade(FlxColor.WHITE, 2, false, function() {
                  // スコア送信 成绩发送
                  GameData.sendScore(_player.params.lv);
                  // エンディングへ遷移 场景转换
                  FlxG.switchState(new EndingState());
              });
            }, true);
            _state = State.Gameclear;

          case SeqMgr.RET_GAMEOVER:
            // ゲームオーバー 游戏结束
            Snd.playSe("gameover");
            Snd.stopMusic();
            _timer = TIMER_GAMEOVER;
            _state = State.GameoverWait;

            // アンロックチェック 解锁检查
            var deathID = CauseOfDeathMgr.toIdx();
            UnlockMgr.check("death", deathID);

            // スコア送信 发送分数
            GameData.sendScore(_player.params.lv);

            // セーブデータを消す 清除数据存档
            Save.erase();

            // ゲームオーバーの表示 游戏结束显示
            var spr = new FlxSprite(0, 180-32).makeGraphic(FlxG.width, 64, FlxColor.BLACK);
            spr.alpha = 0.5;
            spr.scale.y = 0;
            FlxTween.tween(spr.scale, {y:1}, 1, {ease:FlxEase.expoOut});
            spr.scrollFactor.set(0,0);
            this.add(spr);
            var txt = new FlxText(250+2, 150+2, 0, 640);
            txt.setFormat(Reg.PATH_FONT, 48);
            txt.color = FlxColor.BLACK;
            txt.text = "GAME OVER";
            this.add(txt);
            txt.scrollFactor.set(0,0);
            var txt2 = new FlxText(txt.x-2, txt.y-2, 0, 640);
            txt2.setFormat(Reg.PATH_FONT, 48);
            txt2.color = FlxColor.WHITE;
            txt2.text = "GAME OVER";
            this.add(txt2);
            txt2.scrollFactor.set(0,0);            
        }

      case State.GameoverWait:
        // 结束画面倒计时开始
        _timer--;
        if(_timer < 1) {
          _state = State.Gameover;
        }

      case State.Gameover:
        if(Key.press.A) {
          FlxG.camera.fade(FlxColor.BLACK, 1, false, function() {
            // リザルトに進む 转到结果场景
            FlxG.switchState(new ResultState());
          });
          _state = State.End;
        }

      case State.Gameclear:
        // ゲームクリア 游戏通关
      case State.End:
        // おしまい 结束
    }

//#if debug
    if(_state == State.Main) {
      // デバッグ処理 调试处理
      updateDebug();
    }
//#end
  }

  /**
   * 调试处理
   **/
  private function updateDebug():Void {
#if neko
    if(FlxG.keys.justPressed.ESCAPE) {
      // ESCキーで終了する ESC键结束。
      throw "Terminate.";
    }
#end

    // ターン数を保持 赋值回合数
    _turn = Global.getTurn();

    if(FlxG.keys.justPressed.S) {
      // セーブ保存
      Save.save(true, true);
    }
    if(FlxG.keys.justPressed.A) {
      // ロード 载入
      Save.load(LoadType.All, true, true);
    }
    if(FlxG.keys.justPressed.R) {
      // リスタート
      FlxG.switchState(new PlayState());
    }
    if(FlxG.keys.justPressed.D) {
      // 自爆
      _player.damage(9999);
    }
    if(FlxG.keys.justPressed.H) {
      // HP回復
      _player.addHp(9999);
    }
    if(FlxG.keys.justPressed.TWO) {
      // 次のフロアに進む
      Global.nextFloor();
    }
    if(FlxG.keys.justPressed.ONE) {
      // 1つ前のフロアに進む
      Global.backFloor();
    }
    if(FlxG.keys.pressed.T) {
      if(FlxG.mouse.justPressed) {
        // 壁を壊す
        var i = Field.getMouseChipX();
        var j = Field.getMouseChipY();
        Field.breakWall(i, j);
      }
    }
    if(FlxG.keys.justPressed.N) {
      // ナイトメアターンを進める
      for(i in 0...500) {
        NightmareMgr.nextTurn(_lField);
      }
    }
    if(FlxG.keys.justPressed.Y) {
      // アイテム所持最大数増加
      Global.addItemMaxInventory(2);
    }

    // アイテム配置デバッグ機能
    var itemtype = ItemUtil.getDebugItemType();
    if(itemtype != IType.None) {
      var i = Field.getMouseChipX();
      var j = Field.getMouseChipY();
      var itemid = ItemUtil.random(itemtype);
      var params = new ItemExtraParam();
      if(itemtype == IType.Orb) {
        params.value = itemid - 400;
      }
      _debugItem.init(i, j, itemtype, itemid, params);
      _debugItem.revive();
      if(FlxG.mouse.justPressed) {
        var pt = FlxPoint.get(i, j);
        if(DropItem.checkDrop(pt, i, j)) {
          // 置ける
          i = Std.int(pt.x);
          j = Std.int(pt.y);
          if(itemtype == IType.Money) {
            DropItem.addMoney(i, j, itemid);
          }
          else {
            params.condition = FlxG.random.int(5, 15);
            switch(itemtype) {
              case IType.Weapon, IType.Armor:
                params.value = FlxG.random.int(-1, 5);
              default:
            }
            DropItem.add(i, j, itemid, params);
          }
        }
        pt.put();
      }
    }
    else {
      _debugItem.kill();
    }

    // プレイヤー移動デバッグ機能
    if(FlxG.keys.pressed.NINE) {
      if(FlxG.mouse.justPressed) {
        var i = Field.getMouseChipX();
        var j = Field.getMouseChipY();
        _player.setDebugPosition(i, j);
      }
    }

    // 敵操作デバッグ機能 敌人操作调试功能
    if(FlxG.keys.pressed.EIGHT) {
      if(FlxG.mouse.justPressed) {
        var i = Field.getMouseChipX();
        var j = Field.getMouseChipY();
        var e = Enemy.getFromPosition(i, j);
        if(e != null) {
          // つかみ開始
          _debugEnemy = e;
        }
      }
    }
    if(_debugEnemy != null) {
      if(_debugEnemy.exists == false) {
        // 死亡したのでつかみ終了
        _debugEnemy = null;
      }
      else {
        // 敵を移動
        var i = Field.getMouseChipX();
        var j = Field.getMouseChipY();
        _debugEnemy.setDebugPosition(i, j);
        if(FlxG.mouse.justReleased) {
          // つかみ終了
          _debugEnemy = null;
        }
      }
    }
  }
}