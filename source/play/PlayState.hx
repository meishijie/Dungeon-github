package play;

import flixel.FlxG;
import flixel.FlxState;
import flixel.math.FlxPoint;
import flixel.math.FlxRandom;
import flixel.tile.FlxTilemap;
import flixel.ui.FlxButton;
import flixel.util.FlxStringUtil;
import generate.GenerateState;

class PlayState extends FlxState
{
	static inline var TILE_SIZE:Int = 16;
	
	var map:FlxTilemap;
	var player:Player;
	var _time = Date.now().getTime();
	override public function create():Void
	{
		
		map = new FlxTilemap();
		var csvData:String = FlxStringUtil.bitmapToCSV(GenerateState.mapData);
		trace(csvData);
		map.loadMapFromCSV(csvData, "assets/images/tiles.png", TILE_SIZE, TILE_SIZE, AUTO);
		add(map);
		
		// Randomly pick room for player to start in
		var emptyTiles:Array<FlxPoint> = map.getTileCoords(0, false);
		var randomEmptyTile:FlxPoint = emptyTiles[FlxG.random.int(0, emptyTiles.length)];
		
		player = new Player(randomEmptyTile.x, randomEmptyTile.y);
		add(player);
		
		
		var gutter:Int = 10;
		add(new FlxButton(gutter, gutter, "Back (Space)", back));
		FlxG.camera.follow(player, TOPDOWN, 1);
		super.create();
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		FlxG.collide(player, map);
		
		//解析经过时间
		// trace(DateTools.parse(Date.now().getTime() - _time));
		
		if (FlxG.keys.justReleased.SPACE)
		{
			back();
		}
	}
	
	function back():Void
	{
		FlxG.switchState(new GenerateState());
	}
}