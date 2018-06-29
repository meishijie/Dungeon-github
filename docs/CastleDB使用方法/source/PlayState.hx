package;
import flash.display.BlendMode;
import flixel.addons.ui.FlxUIDropDownMenu;
import flixel.addons.ui.FlxUINumericStepper;
import flixel.addons.ui.FlxUIState;
import flixel.addons.ui.interfaces.IFlxUIWidget;
import flixel.addons.ui.StrNameLabel;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxPoint;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.Assets;
import dat.Data;
//Importing the flixelighting classes


/**
 * BlendModes demo
 *
 * @author Lars Doucet
 * @link https://github.com/HaxeFlixel/flixel-demos/BlendModes
 */
class PlayState extends FlxState
{
	private var _bottom:FlxSprite;
	private var _top:FlxSprite;
	private var _spGroup:FlxSpriteGroup;

	
	override public function create():Void
	{
		super.create();
		// CDBファイルの読み込み
		var content:String = openfl.Assets.getText("MyDB.cdb");
		// ロード実行
		Data.load(content);
		// 値の取得
		trace("drop =" + Data.monsters.all.length);
		//trace("drop =" + Data.monsters.get(slim).drop.name);
		trace("Dragon: HP=" + Data.monsters.get(slim).name);
		var txt:FlxText = new FlxText(0, 0, 300, "", 20, false);
		txt.setFormat("", 14, FlxColor.WHITE,null,FlxTextBorderStyle.OUTLINE,FlxColor.GREEN);
		txt.text = Data.monsters.get(slim).drop.name;
		add(txt);
		
	}

	
	
	
	 
}