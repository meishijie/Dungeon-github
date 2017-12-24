package jp_2dgames.game.gui;
import jp_2dgames.game.util.MyColor;
import jp_2dgames.game.util.DirUtil;
import jp_2dgames.game.state.PlayState;
import flixel.math.FlxAngle;
import flixel.util.FlxColor;
import jp_2dgames.game.actor.Enemy;
import flixel.math.FlxPoint;
import flixel.group.FlxSpriteGroup;
import jp_2dgames.game.gui.Message.Msg;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.ui.FlxBar;
import flixel.text.FlxText;
import flixel.text.FlxText.FlxTextFormat;
import flixel.group.FlxGroup;
import flixel.FlxBasic;
import flash.Lib;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.text.TextFormatAlign;
import openfl.display.Bitmap;
import openfl.display.Sprite;
<<<<<<< Updated upstream
=======
import flixel.system.FlxAssets;
>>>>>>> Stashed changes
/**
 * 主角信息生命等显示
 **/
class GuiStatus extends FlxGroup {

  /**
   * ヘルプモード
   **/
  public static inline var HELP_NONE:Int = 0; // 非表示
  public static inline var HELP_KEYINPUT:Int = 1; // 通常移動
  public static inline var HELP_INVENTORY:Int = 2; // インベントリ
  public static inline var HELP_DIALOG_YN:Int = 3; // Yes/Noダイアログ
  public static inline var HELP_INVENTORYCOMMAND:Int = 4; // インベントリ・コマンド
  public static inline var HELP_SHOP_SELL:Int = 5; // ショップ・売却
  public static inline var HELP_SHOP_BUY:Int = 6; // ショップ・購入

  // ステータス表示座標状态显示坐标
  private static inline var POS_X = 640 + 8;
  private static inline var POS_Y = 4;

  private static inline var BG_W = 640;
  private static inline var BG_H = 24;

  // Y調整
  private static inline var MERGIN_Y = 0;

  // バーのサイズ
  private static inline var BAR_W = 100;
  private static inline var BAR_H = 10;

  // フロア数
<<<<<<< Updated upstream
  private static inline var FLOORTEXT_X = 0;
=======
  private static inline var FLOORTEXT_X = 10;
>>>>>>> Stashed changes
  private static inline var FLOORTEXT_Y = 0;
  // レベルテキスト
  private static inline var LVTEXT_X = FLOORTEXT_X + 32;
  private static inline var LVTEXT_Y = 0;
  // 所持金
  private static inline var MONEYTEXT_X = FOODTEXT_X + 80;
  private static inline var MONEYTEXT_Y = 0;
  // 所持金（増分）
  private static inline var MONEYTEXT_ADD_Y = 16;
  // HPテキスト
  private static inline var HPTEXT_X = LVTEXT_X + 64;
  private static inline var HPTEXT_Y = 0 - MERGIN_Y;
  // HPバー
  private static inline var HPBAR_X = HPTEXT_X + 250;
  private static inline var HPBAR_Y = 5;
  // 満腹度
  private static inline var FOODTEXT_X = HPBAR_X + 0;
  private static inline var FOODTEXT_Y = 0;
  // スコア
  private static inline var SCORE_X = MONEYTEXT_X + 96;
  private static inline var SCORE_Y = 0;
  // ヘルプテキスト
  private static inline var HELP_X = 16;
  private static inline var HELP_DY = 24;

  // タイマー
  // 危険タイマー
  private var _tDanger:Int = 0;
  private var _tDangerFood:Int = 0;

  // ステータスGUI
  private var _group:FlxSpriteGroup;
  private var _groupOfsY:Float = 0;
  // private var _bgStatus:FlxSprite;
  private var _txtLv:FlxText;
  private var _txtFloor:FlxText;
  private var _txtHp:FlxText;
  private var _foodBar:FlxBar;
  // private var _hpBar:FlxBar;
  private var _txtFood:FlxText;
  private var _txtMoney:FlxText;
  private var _txtScore:FlxText;
  private var _txtMoneyAdd:FlxText;

  // お金増分演出用
  private var _prevMoney:Int = 0; // 前回のお金
  private var _tMoneyAdd:Int = 0; // 前回のお金との差分がなくなったフレーム数

  // 敵情報
  private var _enemyInfo:GuiEnemy;
  // ナイトメア出現ターン数
  private var _nightmareInfo:GuiNightmare;

  // ヘルプ
  private var _help:FlxSpriteGroup;
  private var _bgHelp:FlxSprite;
  private var _txtHelp:FlxText;
  private var _helpY:Float;
  private var _helpOfsY:Float = 0;
  private var _helpMode:Int = HELP_NONE;
  public var helpmode(get, never):Int;
  private function get_helpmode() {
    return _helpMode;
  }

  //
  private var _stageW = Lib.current.stage.stageWidth;

  private var _txtFloor1:TextField;
<<<<<<< Updated upstream
  private var _bgStatus:Sprite;
=======
  private var _bgStatus:FlxSprite;
>>>>>>> Stashed changes
  //
  /**
	 * 角色信息ui
	 **/
<<<<<<< Updated upstream
  //**TODO: 所有UI都放到openfl里面显示 (doing)**/
=======
  //** TODO: 使用系统字体显示 (doing) **/
>>>>>>> Stashed changes
  public function new() {
    super();

    _groupOfsY = -BG_H; 
    _group = new FlxSpriteGroup();

<<<<<<< Updated upstream
    // 背景
    // _bgStatus = new FlxSprite(0, 0).makeGraphic(BG_W, BG_H, FlxColor.WHITE);
    // _bgStatus = new FlxSprite(0, 0).makeGraphic(_stageW, BG_H, FlxColor.WHITE);
    // _bgStatus.color = FlxColor.BLACK;
    // _bgStatus.alpha = 1;
    // _bgStatus.x -= 32;
    // _bgStatus.y -= 32;
    // _group.add(_bgStatus);
    _bgStatus = new Sprite();
    _bgStatus.graphics.beginFill (0x000000, 0.4);
		_bgStatus.graphics.drawRect (0, 0, _stageW, 32);
    FlxG.addChildBelowMouse(_bgStatus);

    // フロアテキスト 楼层文本 使用openfl文本 FlxG.addChildBelowMouse()
    // _txtFloor = new FlxText(FLOORTEXT_X, FLOORTEXT_Y, 128);
    // _txtFloor.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    // _group.add(_txtFloor);
    _txtFloor1 = new TextField();
    _txtFloor1.text = 'openfl的文字';
    var scoreFormat:TextFormat = new TextFormat("Verdana", 24, 0xFFFFFF, true);
		scoreFormat.align = TextFormatAlign.CENTER;
    _txtFloor1.width = 100;
		_txtFloor1.defaultTextFormat = scoreFormat;
		_txtFloor1.selectable = false;
    FlxG.addChildBelowMouse(_txtFloor1);
    // レベルテキスト 等级文本
=======
    {
      // 背景
      //_bgStatus = new FlxSprite(0, 0).makeGraphic(BG_W, BG_H, FlxColor.WHITE);
      _bgStatus = new FlxSprite(0, 0).makeGraphic(_stageW, BG_H, FlxColor.WHITE);
      _bgStatus.color = FlxColor.BLACK;
      _bgStatus.alpha = 0.5;
      //_bgStatus.x -= 32;
      //_bgStatus.y -= 32;
      _group.add(_bgStatus);

      // 背景使用openfl sprite 
      // _bgStatus = new Sprite();
      // _bgStatus.graphics.beginFill (0x000000, 0.4);
      // _bgStatus.graphics.drawRect (0, 0, _stageW, 32);
      // FlxG.addChildBelowMouse(_bgStatus);
    }
    // フロアテキスト 楼层文本 使用openfl文本 FlxG.addChildBelowMouse() 字体太小还是使用FlxText
    _txtFloor = new FlxText(FLOORTEXT_X, FLOORTEXT_Y, 128);
    _txtFloor.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    _txtFloor.setBorderStyle(FlxTextBorderStyle.OUTLINE,FlxColor.BLACK,1);
    _group.add(_txtFloor);
    // _txtFloor1 = new TextField();
    // _txtFloor1.text = 'openfl的文字';
    // var scoreFormat:TextFormat = new TextFormat(Reg.PATH_FONT, 14, 0xFFFFFF, false);
		// scoreFormat.align = TextFormatAlign.LEFT;
    // _txtFloor1.width = 100;
		// _txtFloor1.defaultTextFormat = scoreFormat;
		// _txtFloor1.selectable = false;
    // _txtFloor1.x = FLOORTEXT_X;
    // _txtFloor1.y = FLOORTEXT_Y;
    // FlxG.addChildBelowMouse(_txtFloor1);

    // 等级文本
>>>>>>> Stashed changes
    _txtLv = new FlxText(LVTEXT_X, LVTEXT_Y, 128);
    _txtLv.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S); 
	_txtLv.setBorderStyle(FlxTextBorderStyle.OUTLINE,FlxColor.BLACK,1);
    _group.add(_txtLv);
    // _txtLv = new TextField();
    // _txtLv.defaultTextFormat = scoreFormat;
    // _txtLv.x = 0;
    // _txtLv.y = 0;
    // _txtLv.text = '等级文字';
    // FlxG.addChildBelowMouse(_txtLv);

	// HPテキスト
    _txtHp = new FlxText(HPTEXT_X, HPTEXT_Y, 100,"",20,true);
    _txtHp.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
	_txtHp.setBorderStyle(FlxTextBorderStyle.OUTLINE,FlxColor.BLACK,1);
    _group.add(_txtHp);
	
    // 饥饿度bar显示
    _foodBar = new FlxBar(HPTEXT_X+_txtHp.width, HPBAR_Y, FlxBarFillDirection.LEFT_TO_RIGHT, BAR_W, BAR_H);
    _foodBar.createFilledBar(FlxColor.RED, FlxColor.GREEN,true);
    _group.add(_foodBar);
    // _hpBar = new Sprite();
    // _hpBar.graphics.beginFill (0xFFFFFF, 1);
    // _hpBar.graphics.drawRect (0, 0, BAR_W, BAR_H);
    // _hpBar.width = BAR_W;
    // _hpBar.x = 100;
    // _hpBar.y = HPBAR_Y;
    // FlxG.addChildBelowMouse(_hpBar);

    

    // 満腹度テキスト改成百分比显示
    // _txtFood = new FlxText(FOODTEXT_X, FOODTEXT_Y, 160);
    // _txtFood.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    // _group.add(_txtFood);

    // 所持金テキスト
    _txtMoney = new FlxText(FlxG.width, 0, 128);
    _txtMoney.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    _txtMoney.alignment = "right";
	_txtMoney.setBorderStyle(FlxTextBorderStyle.OUTLINE,FlxColor.BLACK,1);
    _group.add(_txtMoney);
    _txtMoney.x -= _txtMoney.frameWidth;
    // 所持金テキスト（増分）
    _txtMoneyAdd = new FlxText(FlxG.width, 0, 128);
    _txtMoneyAdd.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    _txtMoneyAdd.alignment = "right";
	_txtMoneyAdd.setBorderStyle(FlxTextBorderStyle.OUTLINE,FlxColor.BLACK,1);
    _group.add(_txtMoneyAdd);
    _txtMoneyAdd.x -= _txtMoneyAdd.frameWidth;
    _txtMoneyAdd.y += _txtMoneyAdd.frameHeight;
    // スコアテキスト 使用系统字体
    // _txtScore = new FlxText(SCORE_X, SCORE_Y, 128,"",14,false);
    // _txtScore.setFormat("", Std.int(12/FlxG.camera.zoom));//
    
    var scoreFormat1:FlxTextFormat = new FlxTextFormat( 0xFFFFFF, true);
    // _txtScore.addFormat(scoreFormat1);
    // _txtScore.alignment = "right";
    
    // _group.add(_txtScore);

    // 画面上のグループ登録
    this.add(_group);

    // ■敵情報
    _enemyInfo = new GuiEnemy();
    //this.add(_enemyInfo);

    // ■ナイトメア情報
    _nightmareInfo = new GuiNightmare();
    this.add(_nightmareInfo);

<<<<<<< Updated upstream
    // ■ヘルプ菜单
=======
    // ■ヘルプ菜单帮助菜单
>>>>>>> Stashed changes
    _help = new FlxSpriteGroup();
    // ヘルプ座標(Y)帮助坐标（Y）
    _helpY = FlxG.height - HELP_DY;
    // ヘルプの背景帮助
    _bgHelp = new FlxSprite(0, 0).makeGraphic(BG_W, HELP_DY, FlxColor.WHITE);
    _bgHelp.color = FlxColor.BLACK;
    _bgHelp.alpha = 0.7;
    _help.add(_bgHelp);
    // ヘルプテキスト
    _txtHelp = new FlxText(HELP_X, 0, 400);
    _txtHelp.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE_S);
    _help.add(_txtHelp);
<<<<<<< Updated upstream
=======
	_help.scrollFactor.set(0, 0);
>>>>>>> Stashed changes
    this.add(_help);

    // ヘルプテキスト設定
    changeHelp(HELP_KEYINPUT);
<<<<<<< Updated upstream
    //背包设置镜头
=======
    //角色信息设置镜头
>>>>>>> Stashed changes
    _group.forEach(function(spr:FlxSprite){
      spr.scrollFactor.set(0, 0);
      // spr.camera = PlayState.hudCam;
      spr.camera = FlxG.camera;
    });
	
}
	

  /**
	 * 更新
	 **/
override public function update(elapsed:Float):Void
  {
    super.update(elapsed);

    // 楼层数设置
    var floor = Global.getFloor();
    _txtFloor1.text = '${floor}F';

    // 等级文字设置
    var player = cast(FlxG.state, PlayState).player;
    var lv = player.params.lv;
    _txtLv.text = 'LV:${lv}';

    // HP显示
    var hp = player.params.hp;
    var hpmax = player.getHpMax();
    _txtHp.text = 'HP ${hp} / ${hpmax}';
    
    // 満腹度 饥饿度改成百分比显示
    var full = player.food;
    var fullmax = player.foodmax;
    // _txtFood.text = '满腹度: ${full}/${fullmax}';
    _foodBar.percent = 100 * ${full}/${fullmax};

    // 所持金
    var money = Global.getMoney();
    _txtMoney.text = '${money}G';
    var moneyadd = Global.getMoneyAdd();
    if(_prevMoney != moneyadd) {
      // 数値が変わった
      // 差分を表示開始
      var str = '(${moneyadd})';
      if(moneyadd > 0) {
        str = '(+${moneyadd})';
      }
      _txtMoneyAdd.text = str;
      _tMoneyAdd = 120;
    }
    else {
      if(_tMoneyAdd > 0) {
        // 金钱增加消失
        _tMoneyAdd--;
        _txtMoneyAdd.visible = true;
        if(_tMoneyAdd < 30 && _tMoneyAdd%4 < 2) {
          _txtMoneyAdd.visible = false;
        }
      }
    }
    _prevMoney = moneyadd;

    // 分数
    var score = Global.getScore();
    // _txtScore.text = '${score}pt';

    // 显示动画
    _groupOfsY *= 0.8;
    _group.y = _groupOfsY + MERGIN_Y;

    // 感谢文本的动画
    {
      if(_helpOfsY > 0) {
        _helpOfsY *= 0.9;
      }
      _help.y = _helpY + _helpOfsY;
    }

    // 危険判定
    {
      // HP
      if(player.isDanger()) {
        _txtHp.color = FlxColor.PINK;
        _tDanger++;
        var step = Std.int(Math.sin(FlxAngle.TO_RAD * (_tDanger%180)) * 100);
        var color = FlxColor.interpolate(MyColor.MESSAGE_WINDOW, FlxColor.BROWN, 100);
        // _bgStatus = color;
        _bgHelp.color = color;
        Message.setWindowColor(color);
      }
      else {
        _txtHp.color = FlxColor.WHITE;
        // _bgStatus.color = FlxColor.BLACK;
        _bgHelp.color = FlxColor.BLACK;
        Message.setWindowColor(MyColor.MESSAGE_WINDOW);
      }
    }
    {
      // 満腹度
      var ratio = player.food;
      if(ratio <= 0) {
        _tDangerFood++;
        var color = FlxColor.WHITE;
        if(_tDangerFood%64 < 32) {
          color = FlxColor.RED;
        }
        //_foodBar.color = color;
      }
      else {
        //_foodBar.color = FlxColor.WHITE;
      }
    }
  }

  /**
   * 敵の情報を表示するかどうかチェックする
   * 敌人的情报显示是否检查
   **/
  public function checkEnemyInfo() {
    var player = cast(FlxG.state, PlayState).player;
    if(player.existsEnemyInFront()) {
      // 表示する
      var enemy:Enemy = null;
      var pt = FlxPoint.get(player.xchip, player.ychip);
      pt = DirUtil.move(player.dir, pt);
      Enemy.parent.forEachAlive(function(e:Enemy) {
        if(e.existsPosition(Std.int(pt.x), Std.int(pt.y))) {
          enemy = e;
        }
      });
      pt.put();
      _enemyInfo.setEnemy(enemy);
    }
    else {
      // 表示しない
      _enemyInfo.setEnemy(null);
    }
  }

  /**
   * ヘルプの表示を変更する
   * 帮助变更的标识
   **/
  public function changeHelp(mode:Int) {
    if(_helpMode == mode) {
      // 変更不要
      return;
    }

    _helpMode = mode;
    var text = "";
    switch(_helpMode) {
      case HELP_NONE:
        // 非表示
      case HELP_KEYINPUT:
        text = UIText.getText(UIText.HELP_KEYINPUT);
      case HELP_INVENTORY:
        text = UIText.getText(UIText.HELP_INVENCTORY);
      case HELP_DIALOG_YN:
        text = UIText.getText(UIText.HELP_DIALOG);
      case HELP_INVENTORYCOMMAND:
        text = UIText.getText(UIText.HELP_INVENCTORYCOMMAND);
      case HELP_SHOP_SELL:
        text = UIText.getText(UIText.HELP_SHOP_SELL);
      case HELP_SHOP_BUY:
        text = UIText.getText(UIText.HELP_SHOP_BUY);
    }

    _txtHelp.text = text;
	
    _help.y = FlxG.height;

    // アニメーション開始 动画开始
    _helpOfsY = HELP_DY*1.5;
  }
}
