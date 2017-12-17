package jp_2dgames.game.gui;
import jp_2dgames.game.util.MyColor;
import jp_2dgames.game.item.ItemUtil;
import jp_2dgames.game.item.ItemData;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxG;
import jp_2dgames.game.state.PlayState;

/**
 * 売却価格表示
 **/
class GuiSellDetail extends FlxSpriteGroup {
  // 背景の枠
  private static inline var BG_WIDTH = 200;
  private static inline var BG_HEIGHT = 100;

  // テキストの幅
  private static inline var TXT_WIDTH = BG_WIDTH;

  private static inline var MSG_X = 16;
  private static inline var MSG_Y = 8;

  // 売却価格テキスト
  private var _txtSell:FlxText;


  /**
   * コンストラクタ
   **/
  public function new(X:Float, Y:Float) {
    super(X, Y);
    // 背景
    var back = new FlxSprite(0, 0, "assets/images/ui/window200x100.png");
    back.color = MyColor.DETAIL_FRAME;
    this.add(back);
    
    // テキスト
    _txtSell = new FlxText(MSG_X, MSG_Y, TXT_WIDTH);
    _txtSell.setFormat(Reg.PATH_FONT, Reg.FONT_SIZE);
    this.add(_txtSell);
    
    // this.forEach(function(spr:FlxSprite){
    //     spr.scrollFactor.set(0, 0);
    //     spr.camera = PlayState.hudCam;
    // });
    // this.camera = PlayState.hudCam;
    // PlayState.hudCam.alpha =1;
    this.x = 0;
    this.y = 0;
    // trace("镜头透明度为： "+PlayState.hudCam.alpha);
    // trace("当前ui位置在： "+this.x + this.y);
  }

  /**
   * テキスト更新
   **/
  private function _updateText(item:ItemData):Void {
    var sell = ItemUtil.getSell(item);
    _txtSell.text = '卖出价格: ${sell}G';
  }

  /**
   * 表示する
   **/
  public function show(item:ItemData) {
    _updateText(item);
  }

  /**
   * 選択中のアイテムを設定する
   **/
  public function setSelectedItem(item:ItemData) {
    _updateText(item);trace(_txtSell.text);
  }
}
