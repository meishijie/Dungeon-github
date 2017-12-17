package play;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.input.FlxPointer;
import flixel.math.FlxPoint;

class Player extends FlxSprite
{
	// 分支的内容
	private static inline var SPEED:Int = 100;
	
	public function new(x:Float, y:Float) 
	{
		super(x, y);
		loadGraphic("assets/images/player.png", true, 32, 32);
		pixelPerfectRender = false;
		scale = new FlxPoint(0.5, 0.5);
		// let's decrease the hitbox size so it's less 
		// frustrating to move through the narrow hallways
		setSize(12, 12);
		centerOffsets();
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.keys.anyPressed([A, LEFT]))
		{
			velocity.x = -SPEED;
		}
		else if (FlxG.keys.anyPressed([D, RIGHT]))
		{
			velocity.x = SPEED;
		}
		else
		{
			velocity.x = 0;
		}

		if (FlxG.keys.anyPressed([W, UP]))
		{
			velocity.y = -SPEED;
		}
		else if (FlxG.keys.anyPressed([S, DOWN]))
		{
			velocity.y = SPEED;
		}
		else
		{
			velocity.y = 0;
		}
	}
}