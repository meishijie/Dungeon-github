package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;

/**
 * ...
 * @author 
 */
class Sptest extends FlxSprite 
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		origin.set(0, 100);
		makeGraphic(50, 50, FlxColor.WHITE);
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		angle += 10;
	}
	
}