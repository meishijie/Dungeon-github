#if !lime_hybrid


package;


import haxe.Timer;
import haxe.Unserializer;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.MovieClip;
import openfl.events.Event;
import openfl.text.Font;
import openfl.media.Sound;
import openfl.net.URLRequest;
import openfl.utils.ByteArray;
import openfl.Assets;

#if neko
import neko.vm.Deque;
import neko.vm.Thread;
#elseif cpp
import cpp.vm.Deque;
import cpp.vm.Thread;
#end

#if sys
import sys.FileSystem;
#end

#if ios
import openfl._legacy.utils.SystemPath;
#end


@:access(openfl.media.Sound)
class DefaultAssetLibrary extends AssetLibrary {
	
	
	private static var loaded = 0;
	private static var loading = 0;
	private static var workerIncomingQueue = new Deque<Dynamic> ();
	private static var workerResult = new Deque<Dynamic> ();
	private static var workerThread:Thread;
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Font.registerFont (__ASSET__assets_font_fangzhengxiangsu14_ttf);
		
		Font.registerFont (__ASSET__assets_font_pixel_ttf);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Font.registerFont (__ASSET__flixel_fonts_nokiafc22_ttf);
		Font.registerFont (__ASSET__flixel_fonts_monsterrat_ttf);
		
		
		
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			if (type == BINARY || type == null || (assetType == BINARY && type == TEXT)) {
				
				return true;
				
			}
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		if (className.exists (id)) {
			
			return cast (Type.createInstance (className.get (id), []), BitmapData);
			
		} else {
			
			return BitmapData.load (path.get (id));
			
		}
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		if (className.exists (id)) {
			
			return cast (Type.createInstance (className.get (id), []), ByteArray);
			
		} else {
			
			return ByteArray.readFile (path.get (id));
			
		}
		
	}
	
	
	public override function getFont (id:String):Font {
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			Font.registerFont (fontClass);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return new Font (path.get (id));
			
		}
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		if (className.exists (id)) {
			
			return cast (Type.createInstance (className.get (id), []), Sound);
			
		} else {
			
			return new Sound (new URLRequest (path.get (id)), null, true);
			
		}
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		if (className.exists (id)) {
			
			return cast (Type.createInstance (className.get (id), []), Sound);
			
		} else {
			
			return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
			
		}
		
	}
	
	
	public override function getText (id:String):String {
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		return true;
		
	}
	
	
	public override function list (type:AssetType):Array<String> {
		
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (type == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		__load (getBitmapData, id, handler);
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		__load (getBytes, id, handler);
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		__load (getFont, id, handler);
		
	}
	
	
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, Type.createEnum (AssetType, asset.type));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		__load (getMusic, id, handler);
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		__load (getSound, id, handler);
		
	}
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
	}
	
	
	private static function __doWork ():Void {
		
		while (true) {
			
			var message = workerIncomingQueue.pop (true);
			
			if (message == "WORK") {
				
				var getMethod = workerIncomingQueue.pop (true);
				var id = workerIncomingQueue.pop (true);
				var handler = workerIncomingQueue.pop (true);
				
				var data = getMethod (id);
				workerResult.add ("RESULT");
				workerResult.add (data);
				workerResult.add (handler);
				
			} else if (message == "EXIT") {
				
				break;
				
			}
			
		}
		
	}
	
	
	private inline function __load<T> (getMethod:String->T, id:String, handler:T->Void):Void {
		
		workerIncomingQueue.add ("WORK");
		workerIncomingQueue.add (getMethod);
		workerIncomingQueue.add (id);
		workerIncomingQueue.add (handler);
		
		loading++;
		
	}
	
	
	public static function __poll ():Void {
		
		if (loading > loaded) {
			
			if (workerThread == null) {
				
				workerThread = Thread.create (__doWork);
				
			}
			
			var message = workerResult.pop (false);
			
			while (message == "RESULT") {
				
				loaded++;
				
				var data = workerResult.pop (true);
				var handler = workerResult.pop (true);
				
				if (handler != null) {
					
					handler (data);
					
				}
				
				message = workerResult.pop (false);
				
			}
			
		} else {
			
			if (workerThread != null) {
				
				workerIncomingQueue.add ("EXIT");
				workerThread = null;
				
			}
			
		}
		
	}
	
	
}


#if (windows || mac || linux)


@:sound("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/beep.ogg") @:keep #if display private #end class __ASSET__flixel_sounds_beep_ogg extends flash.media.Sound {}
@:sound("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/flixel.ogg") @:keep #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends flash.media.Sound {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/nokiafc22.ttf") @:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends flash.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/monsterrat.ttf") @:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends flash.text.Font {}
@:bitmap("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/ui/button.png") @:keep #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData {}
@:bitmap("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/logo/default.png") @:keep #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData {}



@:keep class __ASSET__assets_font_fangzhengxiangsu14_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/fangzhengxiangsu14.ttf"; fontName = "FZXS14"; }}
@:keep class __ASSET__assets_font_pixel_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/pixel.ttf"; fontName = "PixelMplus10 Regular"; }}


#else


class __ASSET__assets_font_fangzhengxiangsu14_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/fangzhengxiangsu14.ttf"; fontName = "FZXS14";  }}
class __ASSET__assets_font_pixel_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/font/pixel.ttf"; fontName = "PixelMplus10 Regular";  }}
class __ASSET__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "flixel/fonts/nokiafc22.ttf"; fontName = "Nokia Cellphone FC Small";  }}
class __ASSET__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "flixel/fonts/monsterrat.ttf"; fontName = "Monsterrat";  }}


#end


#else


package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.text.Font;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if (js && html5)
import lime.net.URLLoader;
import lime.net.URLRequest;
#elseif flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_font_fangzhengxiangsu14_ttf);
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_font_pixel_ttf);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		#end
		
		#if flash
		
		path.set ("assets/data/achievement.csv", "assets/data/achievement.csv");
		type.set ("assets/data/achievement.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/achievement.csv", "assets/data/ansi/achievement.csv");
		type.set ("assets/data/ansi/achievement.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/deathtype.csv", "assets/data/ansi/deathtype.csv");
		type.set ("assets/data/ansi/deathtype.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/hint.csv", "assets/data/ansi/hint.csv");
		type.set ("assets/data/ansi/hint.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/message.csv", "assets/data/ansi/message.csv");
		type.set ("assets/data/ansi/message.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/nameentry.csv", "assets/data/ansi/nameentry.csv");
		type.set ("assets/data/ansi/nameentry.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/staffroll.csv", "assets/data/ansi/staffroll.csv");
		type.set ("assets/data/ansi/staffroll.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/statistics.csv", "assets/data/ansi/statistics.csv");
		type.set ("assets/data/ansi/statistics.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/stats.csv", "assets/data/ansi/stats.csv");
		type.set ("assets/data/ansi/stats.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/title.csv", "assets/data/ansi/title.csv");
		type.set ("assets/data/ansi/title.csv", AssetType.TEXT);
		path.set ("assets/data/ansi/uitext.csv", "assets/data/ansi/uitext.csv");
		type.set ("assets/data/ansi/uitext.csv", AssetType.TEXT);
		path.set ("assets/data/deathtype.csv", "assets/data/deathtype.csv");
		type.set ("assets/data/deathtype.csv", AssetType.TEXT);
		path.set ("assets/data/hint.csv", "assets/data/hint.csv");
		type.set ("assets/data/hint.csv", AssetType.TEXT);
		path.set ("assets/data/message.csv", "assets/data/message.csv");
		type.set ("assets/data/message.csv", AssetType.TEXT);
		path.set ("assets/data/name/female.cpp", "assets/data/name/female.cpp");
		type.set ("assets/data/name/female.cpp", AssetType.TEXT);
		path.set ("assets/data/name/male.cpp", "assets/data/name/male.cpp");
		type.set ("assets/data/name/male.cpp", AssetType.TEXT);
		path.set ("assets/data/nameentry.csv", "assets/data/nameentry.csv");
		type.set ("assets/data/nameentry.csv", AssetType.TEXT);
		path.set ("assets/data/staffroll.csv", "assets/data/staffroll.csv");
		type.set ("assets/data/staffroll.csv", AssetType.TEXT);
		path.set ("assets/data/statistics.csv", "assets/data/statistics.csv");
		type.set ("assets/data/statistics.csv", AssetType.TEXT);
		path.set ("assets/data/stats.csv", "assets/data/stats.csv");
		type.set ("assets/data/stats.csv", AssetType.TEXT);
		path.set ("assets/data/title.csv", "assets/data/title.csv");
		type.set ("assets/data/title.csv", AssetType.TEXT);
		path.set ("assets/data/uitext.csv", "assets/data/uitext.csv");
		type.set ("assets/data/uitext.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/achievement.csv", "assets/data/utf8/achievement.csv");
		type.set ("assets/data/utf8/achievement.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/deathtype.csv", "assets/data/utf8/deathtype.csv");
		type.set ("assets/data/utf8/deathtype.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/hint.csv", "assets/data/utf8/hint.csv");
		type.set ("assets/data/utf8/hint.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/message.csv", "assets/data/utf8/message.csv");
		type.set ("assets/data/utf8/message.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/nameentry.csv", "assets/data/utf8/nameentry.csv");
		type.set ("assets/data/utf8/nameentry.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/staffroll.csv", "assets/data/utf8/staffroll.csv");
		type.set ("assets/data/utf8/staffroll.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/statistics.csv", "assets/data/utf8/statistics.csv");
		type.set ("assets/data/utf8/statistics.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/stats.csv", "assets/data/utf8/stats.csv");
		type.set ("assets/data/utf8/stats.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/title.csv", "assets/data/utf8/title.csv");
		type.set ("assets/data/utf8/title.csv", AssetType.TEXT);
		path.set ("assets/data/utf8/uitext.csv", "assets/data/utf8/uitext.csv");
		type.set ("assets/data/utf8/uitext.csv", AssetType.TEXT);
		path.set ("assets/events/001.tmx", "assets/events/001.tmx");
		type.set ("assets/events/001.tmx", AssetType.TEXT);
		path.set ("assets/events/002.tmx", "assets/events/002.tmx");
		type.set ("assets/events/002.tmx", AssetType.TEXT);
		path.set ("assets/events/003.tmx", "assets/events/003.tmx");
		type.set ("assets/events/003.tmx", AssetType.TEXT);
		path.set ("assets/events/010.tmx", "assets/events/010.tmx");
		type.set ("assets/events/010.tmx", AssetType.TEXT);
		path.set ("assets/events/cursor.png", "assets/events/cursor.png");
		type.set ("assets/events/cursor.png", AssetType.IMAGE);
		path.set ("assets/events/ending.cpp", "assets/events/ending.cpp");
		type.set ("assets/events/ending.cpp", AssetType.TEXT);
		path.set ("assets/events/ending.png", "assets/events/ending.png");
		type.set ("assets/events/ending.png", AssetType.IMAGE);
		path.set ("assets/events/matatabi.png", "assets/events/matatabi.png");
		type.set ("assets/events/matatabi.png", AssetType.IMAGE);
		path.set ("assets/events/message.csv", "assets/events/message.csv");
		type.set ("assets/events/message.csv", AssetType.TEXT);
		path.set ("assets/events/opening.cpp", "assets/events/opening.cpp");
		type.set ("assets/events/opening.cpp", AssetType.TEXT);
		path.set ("assets/events/tileset1.png", "assets/events/tileset1.png");
		type.set ("assets/events/tileset1.png", AssetType.IMAGE);
		path.set ("assets/events/tileset10.png", "assets/events/tileset10.png");
		type.set ("assets/events/tileset10.png", AssetType.IMAGE);
		path.set ("assets/events/tileset2.png", "assets/events/tileset2.png");
		type.set ("assets/events/tileset2.png", AssetType.IMAGE);
		path.set ("assets/events/tileset3.png", "assets/events/tileset3.png");
		type.set ("assets/events/tileset3.png", AssetType.IMAGE);
		path.set ("assets/events/tileset4.png", "assets/events/tileset4.png");
		type.set ("assets/events/tileset4.png", AssetType.IMAGE);
		path.set ("assets/events/tileset5.png", "assets/events/tileset5.png");
		type.set ("assets/events/tileset5.png", AssetType.IMAGE);
		path.set ("assets/events/tileset6.png", "assets/events/tileset6.png");
		type.set ("assets/events/tileset6.png", AssetType.IMAGE);
		path.set ("assets/events/tileset7.png", "assets/events/tileset7.png");
		type.set ("assets/events/tileset7.png", AssetType.IMAGE);
		path.set ("assets/events/tileset8.png", "assets/events/tileset8.png");
		type.set ("assets/events/tileset8.png", AssetType.IMAGE);
		path.set ("assets/events/tileset9.png", "assets/events/tileset9.png");
		type.set ("assets/events/tileset9.png", AssetType.IMAGE);
		path.set ("assets/events/window.png", "assets/events/window.png");
		type.set ("assets/events/window.png", AssetType.IMAGE);
		path.set ("assets/font/fangzhengxiangsu14.ttf", "assets/font/fangzhengxiangsu14.ttf");
		type.set ("assets/font/fangzhengxiangsu14.ttf", AssetType.FONT);
		path.set ("assets/font/font16x16.png", "assets/font/font16x16.png");
		type.set ("assets/font/font16x16.png", AssetType.IMAGE);
		path.set ("assets/font/pixel.ttf", "assets/font/pixel.ttf");
		type.set ("assets/font/pixel.ttf", AssetType.FONT);
		path.set ("assets/images/balloon.png", "assets/images/balloon.png");
		type.set ("assets/images/balloon.png", AssetType.IMAGE);
		path.set ("assets/images/cat.png", "assets/images/cat.png");
		type.set ("assets/images/cat.png", AssetType.IMAGE);
		path.set ("assets/images/cursor.png", "assets/images/cursor.png");
		type.set ("assets/images/cursor.png", AssetType.IMAGE);
		path.set ("assets/images/door.png", "assets/images/door.png");
		type.set ("assets/images/door.png", AssetType.IMAGE);
		path.set ("assets/images/effect.png", "assets/images/effect.png");
		type.set ("assets/images/effect.png", AssetType.IMAGE);
		path.set ("assets/images/heart.png", "assets/images/heart.png");
		type.set ("assets/images/heart.png", AssetType.IMAGE);
		path.set ("assets/images/item.png", "assets/images/item.png");
		type.set ("assets/images/item.png", AssetType.IMAGE);
		path.set ("assets/images/kira.png", "assets/images/kira.png");
		type.set ("assets/images/kira.png", AssetType.IMAGE);
		path.set ("assets/images/monster/arachne.png", "assets/images/monster/arachne.png");
		type.set ("assets/images/monster/arachne.png", AssetType.IMAGE);
		path.set ("assets/images/monster/bat.png", "assets/images/monster/bat.png");
		type.set ("assets/images/monster/bat.png", AssetType.IMAGE);
		path.set ("assets/images/monster/bear.png", "assets/images/monster/bear.png");
		type.set ("assets/images/monster/bear.png", AssetType.IMAGE);
		path.set ("assets/images/monster/bee.png", "assets/images/monster/bee.png");
		type.set ("assets/images/monster/bee.png", AssetType.IMAGE);
		path.set ("assets/images/monster/beetle.png", "assets/images/monster/beetle.png");
		type.set ("assets/images/monster/beetle.png", AssetType.IMAGE);
		path.set ("assets/images/monster/bird.png", "assets/images/monster/bird.png");
		type.set ("assets/images/monster/bird.png", AssetType.IMAGE);
		path.set ("assets/images/monster/boar.png", "assets/images/monster/boar.png");
		type.set ("assets/images/monster/boar.png", AssetType.IMAGE);
		path.set ("assets/images/monster/bull.png", "assets/images/monster/bull.png");
		type.set ("assets/images/monster/bull.png", AssetType.IMAGE);
		path.set ("assets/images/monster/cat1.png", "assets/images/monster/cat1.png");
		type.set ("assets/images/monster/cat1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/cat2.png", "assets/images/monster/cat2.png");
		type.set ("assets/images/monster/cat2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/centipede.png", "assets/images/monster/centipede.png");
		type.set ("assets/images/monster/centipede.png", AssetType.IMAGE);
		path.set ("assets/images/monster/chicken.png", "assets/images/monster/chicken.png");
		type.set ("assets/images/monster/chicken.png", AssetType.IMAGE);
		path.set ("assets/images/monster/cockroach.png", "assets/images/monster/cockroach.png");
		type.set ("assets/images/monster/cockroach.png", AssetType.IMAGE);
		path.set ("assets/images/monster/cow.png", "assets/images/monster/cow.png");
		type.set ("assets/images/monster/cow.png", AssetType.IMAGE);
		path.set ("assets/images/monster/crab_ground.png", "assets/images/monster/crab_ground.png");
		type.set ("assets/images/monster/crab_ground.png", AssetType.IMAGE);
		path.set ("assets/images/monster/crab_water.png", "assets/images/monster/crab_water.png");
		type.set ("assets/images/monster/crab_water.png", AssetType.IMAGE);
		path.set ("assets/images/monster/crystal_golem.png", "assets/images/monster/crystal_golem.png");
		type.set ("assets/images/monster/crystal_golem.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dark_elf1.png", "assets/images/monster/dark_elf1.png");
		type.set ("assets/images/monster/dark_elf1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dark_elf2.png", "assets/images/monster/dark_elf2.png");
		type.set ("assets/images/monster/dark_elf2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dark_elf3.png", "assets/images/monster/dark_elf3.png");
		type.set ("assets/images/monster/dark_elf3.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dark_elf4.png", "assets/images/monster/dark_elf4.png");
		type.set ("assets/images/monster/dark_elf4.png", AssetType.IMAGE);
		path.set ("assets/images/monster/doe.png", "assets/images/monster/doe.png");
		type.set ("assets/images/monster/doe.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dog1.png", "assets/images/monster/dog1.png");
		type.set ("assets/images/monster/dog1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dog2.png", "assets/images/monster/dog2.png");
		type.set ("assets/images/monster/dog2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/dummy.png", "assets/images/monster/dummy.png");
		type.set ("assets/images/monster/dummy.png", AssetType.IMAGE);
		path.set ("assets/images/monster/earth_demon.png", "assets/images/monster/earth_demon.png");
		type.set ("assets/images/monster/earth_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/eel_ground.png", "assets/images/monster/eel_ground.png");
		type.set ("assets/images/monster/eel_ground.png", AssetType.IMAGE);
		path.set ("assets/images/monster/eel_water.png", "assets/images/monster/eel_water.png");
		type.set ("assets/images/monster/eel_water.png", AssetType.IMAGE);
		path.set ("assets/images/monster/empusa.png", "assets/images/monster/empusa.png");
		type.set ("assets/images/monster/empusa.png", AssetType.IMAGE);
		path.set ("assets/images/monster/evil_eye.png", "assets/images/monster/evil_eye.png");
		type.set ("assets/images/monster/evil_eye.png", AssetType.IMAGE);
		path.set ("assets/images/monster/fairy.png", "assets/images/monster/fairy.png");
		type.set ("assets/images/monster/fairy.png", AssetType.IMAGE);
		path.set ("assets/images/monster/fire_demon.png", "assets/images/monster/fire_demon.png");
		type.set ("assets/images/monster/fire_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/floating_skull.png", "assets/images/monster/floating_skull.png");
		type.set ("assets/images/monster/floating_skull.png", AssetType.IMAGE);
		path.set ("assets/images/monster/fly.png", "assets/images/monster/fly.png");
		type.set ("assets/images/monster/fly.png", AssetType.IMAGE);
		path.set ("assets/images/monster/frog.png", "assets/images/monster/frog.png");
		type.set ("assets/images/monster/frog.png", AssetType.IMAGE);
		path.set ("assets/images/monster/fungus.png", "assets/images/monster/fungus.png");
		type.set ("assets/images/monster/fungus.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gargoyle_fly.png", "assets/images/monster/gargoyle_fly.png");
		type.set ("assets/images/monster/gargoyle_fly.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gargoyle_walk.png", "assets/images/monster/gargoyle_walk.png");
		type.set ("assets/images/monster/gargoyle_walk.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gas_spore.png", "assets/images/monster/gas_spore.png");
		type.set ("assets/images/monster/gas_spore.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gelatinous_cube.png", "assets/images/monster/gelatinous_cube.png");
		type.set ("assets/images/monster/gelatinous_cube.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ghost.png", "assets/images/monster/ghost.png");
		type.set ("assets/images/monster/ghost.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ghoul.png", "assets/images/monster/ghoul.png");
		type.set ("assets/images/monster/ghoul.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gillman_ground.png", "assets/images/monster/gillman_ground.png");
		type.set ("assets/images/monster/gillman_ground.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gillman_water.png", "assets/images/monster/gillman_water.png");
		type.set ("assets/images/monster/gillman_water.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gnole1.png", "assets/images/monster/gnole1.png");
		type.set ("assets/images/monster/gnole1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gnole2.png", "assets/images/monster/gnole2.png");
		type.set ("assets/images/monster/gnole2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goat.png", "assets/images/monster/goat.png");
		type.set ("assets/images/monster/goat.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goatman1.png", "assets/images/monster/goatman1.png");
		type.set ("assets/images/monster/goatman1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goatman2.png", "assets/images/monster/goatman2.png");
		type.set ("assets/images/monster/goatman2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goblin1.png", "assets/images/monster/goblin1.png");
		type.set ("assets/images/monster/goblin1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goblin2.png", "assets/images/monster/goblin2.png");
		type.set ("assets/images/monster/goblin2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goblin3.png", "assets/images/monster/goblin3.png");
		type.set ("assets/images/monster/goblin3.png", AssetType.IMAGE);
		path.set ("assets/images/monster/goblin4.png", "assets/images/monster/goblin4.png");
		type.set ("assets/images/monster/goblin4.png", AssetType.IMAGE);
		path.set ("assets/images/monster/golem.png", "assets/images/monster/golem.png");
		type.set ("assets/images/monster/golem.png", AssetType.IMAGE);
		path.set ("assets/images/monster/gorilla.png", "assets/images/monster/gorilla.png");
		type.set ("assets/images/monster/gorilla.png", AssetType.IMAGE);
		path.set ("assets/images/monster/grizzy_bear.png", "assets/images/monster/grizzy_bear.png");
		type.set ("assets/images/monster/grizzy_bear.png", AssetType.IMAGE);
		path.set ("assets/images/monster/hairy_demon.png", "assets/images/monster/hairy_demon.png");
		type.set ("assets/images/monster/hairy_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/harpy_fly.png", "assets/images/monster/harpy_fly.png");
		type.set ("assets/images/monster/harpy_fly.png", AssetType.IMAGE);
		path.set ("assets/images/monster/harpy_walk.png", "assets/images/monster/harpy_walk.png");
		type.set ("assets/images/monster/harpy_walk.png", AssetType.IMAGE);
		path.set ("assets/images/monster/homunculus.png", "assets/images/monster/homunculus.png");
		type.set ("assets/images/monster/homunculus.png", AssetType.IMAGE);
		path.set ("assets/images/monster/horse1.png", "assets/images/monster/horse1.png");
		type.set ("assets/images/monster/horse1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/horse2.png", "assets/images/monster/horse2.png");
		type.set ("assets/images/monster/horse2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/horse3.png", "assets/images/monster/horse3.png");
		type.set ("assets/images/monster/horse3.png", AssetType.IMAGE);
		path.set ("assets/images/monster/horse4.png", "assets/images/monster/horse4.png");
		type.set ("assets/images/monster/horse4.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ice_demon.png", "assets/images/monster/ice_demon.png");
		type.set ("assets/images/monster/ice_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/imp.png", "assets/images/monster/imp.png");
		type.set ("assets/images/monster/imp.png", AssetType.IMAGE);
		path.set ("assets/images/monster/insectivorous_plant.png", "assets/images/monster/insectivorous_plant.png");
		type.set ("assets/images/monster/insectivorous_plant.png", AssetType.IMAGE);
		path.set ("assets/images/monster/insect_demon.png", "assets/images/monster/insect_demon.png");
		type.set ("assets/images/monster/insect_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/invader.png", "assets/images/monster/invader.png");
		type.set ("assets/images/monster/invader.png", AssetType.IMAGE);
		path.set ("assets/images/monster/iron_golem.png", "assets/images/monster/iron_golem.png");
		type.set ("assets/images/monster/iron_golem.png", AssetType.IMAGE);
		path.set ("assets/images/monster/jelly.png", "assets/images/monster/jelly.png");
		type.set ("assets/images/monster/jelly.png", AssetType.IMAGE);
		path.set ("assets/images/monster/jellyfish.png", "assets/images/monster/jellyfish.png");
		type.set ("assets/images/monster/jellyfish.png", AssetType.IMAGE);
		path.set ("assets/images/monster/legion.png", "assets/images/monster/legion.png");
		type.set ("assets/images/monster/legion.png", AssetType.IMAGE);
		path.set ("assets/images/monster/lesser_fiend1.png", "assets/images/monster/lesser_fiend1.png");
		type.set ("assets/images/monster/lesser_fiend1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/lesser_fiend2.png", "assets/images/monster/lesser_fiend2.png");
		type.set ("assets/images/monster/lesser_fiend2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/liche.png", "assets/images/monster/liche.png");
		type.set ("assets/images/monster/liche.png", AssetType.IMAGE);
		path.set ("assets/images/monster/lizard.png", "assets/images/monster/lizard.png");
		type.set ("assets/images/monster/lizard.png", AssetType.IMAGE);
		path.set ("assets/images/monster/lizardman1.png", "assets/images/monster/lizardman1.png");
		type.set ("assets/images/monster/lizardman1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/lizardman2.png", "assets/images/monster/lizardman2.png");
		type.set ("assets/images/monster/lizardman2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/magot.png", "assets/images/monster/magot.png");
		type.set ("assets/images/monster/magot.png", AssetType.IMAGE);
		path.set ("assets/images/monster/mandragora.png", "assets/images/monster/mandragora.png");
		type.set ("assets/images/monster/mandragora.png", AssetType.IMAGE);
		path.set ("assets/images/monster/mantis.png", "assets/images/monster/mantis.png");
		type.set ("assets/images/monster/mantis.png", AssetType.IMAGE);
		path.set ("assets/images/monster/medousa.png", "assets/images/monster/medousa.png");
		type.set ("assets/images/monster/medousa.png", AssetType.IMAGE);
		path.set ("assets/images/monster/mindflayer.png", "assets/images/monster/mindflayer.png");
		type.set ("assets/images/monster/mindflayer.png", AssetType.IMAGE);
		path.set ("assets/images/monster/minotaur1.png", "assets/images/monster/minotaur1.png");
		type.set ("assets/images/monster/minotaur1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/minotaur2.png", "assets/images/monster/minotaur2.png");
		type.set ("assets/images/monster/minotaur2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/mosquito.png", "assets/images/monster/mosquito.png");
		type.set ("assets/images/monster/mosquito.png", AssetType.IMAGE);
		path.set ("assets/images/monster/mummy.png", "assets/images/monster/mummy.png");
		type.set ("assets/images/monster/mummy.png", AssetType.IMAGE);
		path.set ("assets/images/monster/myconid.png", "assets/images/monster/myconid.png");
		type.set ("assets/images/monster/myconid.png", AssetType.IMAGE);
		path.set ("assets/images/monster/nightmare.png", "assets/images/monster/nightmare.png");
		type.set ("assets/images/monster/nightmare.png", AssetType.IMAGE);
		path.set ("assets/images/monster/octopus_ground.png", "assets/images/monster/octopus_ground.png");
		type.set ("assets/images/monster/octopus_ground.png", AssetType.IMAGE);
		path.set ("assets/images/monster/octopus_water.png", "assets/images/monster/octopus_water.png");
		type.set ("assets/images/monster/octopus_water.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ogre1.png", "assets/images/monster/ogre1.png");
		type.set ("assets/images/monster/ogre1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ogre2.png", "assets/images/monster/ogre2.png");
		type.set ("assets/images/monster/ogre2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/orc1.png", "assets/images/monster/orc1.png");
		type.set ("assets/images/monster/orc1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/orc2.png", "assets/images/monster/orc2.png");
		type.set ("assets/images/monster/orc2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/panther.png", "assets/images/monster/panther.png");
		type.set ("assets/images/monster/panther.png", AssetType.IMAGE);
		path.set ("assets/images/monster/pig.png", "assets/images/monster/pig.png");
		type.set ("assets/images/monster/pig.png", AssetType.IMAGE);
		path.set ("assets/images/monster/pillbug.png", "assets/images/monster/pillbug.png");
		type.set ("assets/images/monster/pillbug.png", AssetType.IMAGE);
		path.set ("assets/images/monster/poison_demon.png", "assets/images/monster/poison_demon.png");
		type.set ("assets/images/monster/poison_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/polar_bear.png", "assets/images/monster/polar_bear.png");
		type.set ("assets/images/monster/polar_bear.png", AssetType.IMAGE);
		path.set ("assets/images/monster/pumpkin_head.png", "assets/images/monster/pumpkin_head.png");
		type.set ("assets/images/monster/pumpkin_head.png", AssetType.IMAGE);
		path.set ("assets/images/monster/rat.png", "assets/images/monster/rat.png");
		type.set ("assets/images/monster/rat.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ratman1.png", "assets/images/monster/ratman1.png");
		type.set ("assets/images/monster/ratman1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/ratman2.png", "assets/images/monster/ratman2.png");
		type.set ("assets/images/monster/ratman2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/reaper.png", "assets/images/monster/reaper.png");
		type.set ("assets/images/monster/reaper.png", AssetType.IMAGE);
		path.set ("assets/images/monster/saber_tiger.png", "assets/images/monster/saber_tiger.png");
		type.set ("assets/images/monster/saber_tiger.png", AssetType.IMAGE);
		path.set ("assets/images/monster/scorpion.png", "assets/images/monster/scorpion.png");
		type.set ("assets/images/monster/scorpion.png", AssetType.IMAGE);
		path.set ("assets/images/monster/sea_serpent.png", "assets/images/monster/sea_serpent.png");
		type.set ("assets/images/monster/sea_serpent.png", AssetType.IMAGE);
		path.set ("assets/images/monster/shadow_demon.png", "assets/images/monster/shadow_demon.png");
		type.set ("assets/images/monster/shadow_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/sheep.png", "assets/images/monster/sheep.png");
		type.set ("assets/images/monster/sheep.png", AssetType.IMAGE);
		path.set ("assets/images/monster/shellfish.png", "assets/images/monster/shellfish.png");
		type.set ("assets/images/monster/shellfish.png", AssetType.IMAGE);
		path.set ("assets/images/monster/shrieker.png", "assets/images/monster/shrieker.png");
		type.set ("assets/images/monster/shrieker.png", AssetType.IMAGE);
		path.set ("assets/images/monster/skeleton1.png", "assets/images/monster/skeleton1.png");
		type.set ("assets/images/monster/skeleton1.png", AssetType.IMAGE);
		path.set ("assets/images/monster/skeleton2.png", "assets/images/monster/skeleton2.png");
		type.set ("assets/images/monster/skeleton2.png", AssetType.IMAGE);
		path.set ("assets/images/monster/skeleton3.png", "assets/images/monster/skeleton3.png");
		type.set ("assets/images/monster/skeleton3.png", AssetType.IMAGE);
		path.set ("assets/images/monster/skeleton_dog.png", "assets/images/monster/skeleton_dog.png");
		type.set ("assets/images/monster/skeleton_dog.png", AssetType.IMAGE);
		path.set ("assets/images/monster/skeleton_horse.png", "assets/images/monster/skeleton_horse.png");
		type.set ("assets/images/monster/skeleton_horse.png", AssetType.IMAGE);
		path.set ("assets/images/monster/slime.png", "assets/images/monster/slime.png");
		type.set ("assets/images/monster/slime.png", AssetType.IMAGE);
		path.set ("assets/images/monster/slug.png", "assets/images/monster/slug.png");
		type.set ("assets/images/monster/slug.png", AssetType.IMAGE);
		path.set ("assets/images/monster/snail.png", "assets/images/monster/snail.png");
		type.set ("assets/images/monster/snail.png", AssetType.IMAGE);
		path.set ("assets/images/monster/snake.png", "assets/images/monster/snake.png");
		type.set ("assets/images/monster/snake.png", AssetType.IMAGE);
		path.set ("assets/images/monster/snake_man.png", "assets/images/monster/snake_man.png");
		type.set ("assets/images/monster/snake_man.png", AssetType.IMAGE);
		path.set ("assets/images/monster/snow_panther.png", "assets/images/monster/snow_panther.png");
		type.set ("assets/images/monster/snow_panther.png", AssetType.IMAGE);
		path.set ("assets/images/monster/snow_wolf.png", "assets/images/monster/snow_wolf.png");
		type.set ("assets/images/monster/snow_wolf.png", AssetType.IMAGE);
		path.set ("assets/images/monster/soldier_ant.png", "assets/images/monster/soldier_ant.png");
		type.set ("assets/images/monster/soldier_ant.png", AssetType.IMAGE);
		path.set ("assets/images/monster/specter.png", "assets/images/monster/specter.png");
		type.set ("assets/images/monster/specter.png", AssetType.IMAGE);
		path.set ("assets/images/monster/spider.png", "assets/images/monster/spider.png");
		type.set ("assets/images/monster/spider.png", AssetType.IMAGE);
		path.set ("assets/images/monster/stag.png", "assets/images/monster/stag.png");
		type.set ("assets/images/monster/stag.png", AssetType.IMAGE);
		path.set ("assets/images/monster/succubus.png", "assets/images/monster/succubus.png");
		type.set ("assets/images/monster/succubus.png", AssetType.IMAGE);
		path.set ("assets/images/monster/tentacle.png", "assets/images/monster/tentacle.png");
		type.set ("assets/images/monster/tentacle.png", AssetType.IMAGE);
		path.set ("assets/images/monster/tick.png", "assets/images/monster/tick.png");
		type.set ("assets/images/monster/tick.png", AssetType.IMAGE);
		path.set ("assets/images/monster/tiger.png", "assets/images/monster/tiger.png");
		type.set ("assets/images/monster/tiger.png", AssetType.IMAGE);
		path.set ("assets/images/monster/toad.png", "assets/images/monster/toad.png");
		type.set ("assets/images/monster/toad.png", AssetType.IMAGE);
		path.set ("assets/images/monster/vampire.png", "assets/images/monster/vampire.png");
		type.set ("assets/images/monster/vampire.png", AssetType.IMAGE);
		path.set ("assets/images/monster/vine.png", "assets/images/monster/vine.png");
		type.set ("assets/images/monster/vine.png", AssetType.IMAGE);
		path.set ("assets/images/monster/vulture_demon.png", "assets/images/monster/vulture_demon.png");
		type.set ("assets/images/monster/vulture_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/water_demon.png", "assets/images/monster/water_demon.png");
		type.set ("assets/images/monster/water_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/werewolf.png", "assets/images/monster/werewolf.png");
		type.set ("assets/images/monster/werewolf.png", AssetType.IMAGE);
		path.set ("assets/images/monster/wight.png", "assets/images/monster/wight.png");
		type.set ("assets/images/monster/wight.png", AssetType.IMAGE);
		path.set ("assets/images/monster/wind_demon.png", "assets/images/monster/wind_demon.png");
		type.set ("assets/images/monster/wind_demon.png", AssetType.IMAGE);
		path.set ("assets/images/monster/wolf.png", "assets/images/monster/wolf.png");
		type.set ("assets/images/monster/wolf.png", AssetType.IMAGE);
		path.set ("assets/images/monster/worker_ant.png", "assets/images/monster/worker_ant.png");
		type.set ("assets/images/monster/worker_ant.png", AssetType.IMAGE);
		path.set ("assets/images/monster/worm.png", "assets/images/monster/worm.png");
		type.set ("assets/images/monster/worm.png", AssetType.IMAGE);
		path.set ("assets/images/monster/wraith.png", "assets/images/monster/wraith.png");
		type.set ("assets/images/monster/wraith.png", AssetType.IMAGE);
		path.set ("assets/images/monster/wyvern.png", "assets/images/monster/wyvern.png");
		type.set ("assets/images/monster/wyvern.png", AssetType.IMAGE);
		path.set ("assets/images/monster/yeti.png", "assets/images/monster/yeti.png");
		type.set ("assets/images/monster/yeti.png", AssetType.IMAGE);
		path.set ("assets/images/monster/zombie.png", "assets/images/monster/zombie.png");
		type.set ("assets/images/monster/zombie.png", AssetType.IMAGE);
		path.set ("assets/images/pad/a.png", "assets/images/pad/a.png");
		type.set ("assets/images/pad/a.png", AssetType.IMAGE);
		path.set ("assets/images/pad/b.png", "assets/images/pad/b.png");
		type.set ("assets/images/pad/b.png", AssetType.IMAGE);
		path.set ("assets/images/pad/background.png", "assets/images/pad/background.png");
		type.set ("assets/images/pad/background.png", AssetType.IMAGE);
		path.set ("assets/images/pad/down.png", "assets/images/pad/down.png");
		type.set ("assets/images/pad/down.png", AssetType.IMAGE);
		path.set ("assets/images/pad/left.png", "assets/images/pad/left.png");
		type.set ("assets/images/pad/left.png", AssetType.IMAGE);
		path.set ("assets/images/pad/right.png", "assets/images/pad/right.png");
		type.set ("assets/images/pad/right.png", AssetType.IMAGE);
		path.set ("assets/images/pad/up.png", "assets/images/pad/up.png");
		type.set ("assets/images/pad/up.png", AssetType.IMAGE);
		path.set ("assets/images/player.png", "assets/images/player.png");
		type.set ("assets/images/player.png", AssetType.IMAGE);
		path.set ("assets/images/result/girl.png", "assets/images/result/girl.png");
		type.set ("assets/images/result/girl.png", AssetType.IMAGE);
		path.set ("assets/images/result/girl2.png", "assets/images/result/girl2.png");
		type.set ("assets/images/result/girl2.png", AssetType.IMAGE);
		path.set ("assets/images/result/girl3.png", "assets/images/result/girl3.png");
		type.set ("assets/images/result/girl3.png", AssetType.IMAGE);
		path.set ("assets/images/result/kira.png", "assets/images/result/kira.png");
		type.set ("assets/images/result/kira.png", AssetType.IMAGE);
		path.set ("assets/images/smoke.png", "assets/images/smoke.png");
		type.set ("assets/images/smoke.png", AssetType.IMAGE);
		path.set ("assets/images/spike.png", "assets/images/spike.png");
		type.set ("assets/images/spike.png", AssetType.IMAGE);
		path.set ("assets/images/tiles.png", "assets/images/tiles.png");
		type.set ("assets/images/tiles.png", AssetType.IMAGE);
		path.set ("assets/images/title/bg.png", "assets/images/title/bg.png");
		type.set ("assets/images/title/bg.png", AssetType.IMAGE);
		path.set ("assets/images/title/cloud1.png", "assets/images/title/cloud1.png");
		type.set ("assets/images/title/cloud1.png", AssetType.IMAGE);
		path.set ("assets/images/title/cloud2.png", "assets/images/title/cloud2.png");
		type.set ("assets/images/title/cloud2.png", AssetType.IMAGE);
		path.set ("assets/images/title/cloud3.png", "assets/images/title/cloud3.png");
		type.set ("assets/images/title/cloud3.png", AssetType.IMAGE);
		path.set ("assets/images/title/cloud4.png", "assets/images/title/cloud4.png");
		type.set ("assets/images/title/cloud4.png", AssetType.IMAGE);
		path.set ("assets/images/title/sunbeam.png", "assets/images/title/sunbeam.png");
		type.set ("assets/images/title/sunbeam.png", AssetType.IMAGE);
		path.set ("assets/images/ui/arrow.png", "assets/images/ui/arrow.png");
		type.set ("assets/images/ui/arrow.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/armor.png", "assets/images/ui/category/armor.png");
		type.set ("assets/images/ui/category/armor.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/food.png", "assets/images/ui/category/food.png");
		type.set ("assets/images/ui/category/food.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/orb.png", "assets/images/ui/category/orb.png");
		type.set ("assets/images/ui/category/orb.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/potion.png", "assets/images/ui/category/potion.png");
		type.set ("assets/images/ui/category/potion.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/ring.png", "assets/images/ui/category/ring.png");
		type.set ("assets/images/ui/category/ring.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/scroll.png", "assets/images/ui/category/scroll.png");
		type.set ("assets/images/ui/category/scroll.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/wand.png", "assets/images/ui/category/wand.png");
		type.set ("assets/images/ui/category/wand.png", AssetType.IMAGE);
		path.set ("assets/images/ui/category/weapon.png", "assets/images/ui/category/weapon.png");
		type.set ("assets/images/ui/category/weapon.png", AssetType.IMAGE);
		path.set ("assets/images/ui/enemylog_cursor.png", "assets/images/ui/enemylog_cursor.png");
		type.set ("assets/images/ui/enemylog_cursor.png", AssetType.IMAGE);
		path.set ("assets/images/ui/frame32x256.png", "assets/images/ui/frame32x256.png");
		type.set ("assets/images/ui/frame32x256.png", AssetType.IMAGE);
		path.set ("assets/images/ui/itemcommand.png", "assets/images/ui/itemcommand.png");
		type.set ("assets/images/ui/itemcommand.png", AssetType.IMAGE);
		path.set ("assets/images/ui/itemlog_cursor.png", "assets/images/ui/itemlog_cursor.png");
		type.set ("assets/images/ui/itemlog_cursor.png", AssetType.IMAGE);
		path.set ("assets/images/ui/listitem.png", "assets/images/ui/listitem.png");
		type.set ("assets/images/ui/listitem.png", AssetType.IMAGE);
		path.set ("assets/images/ui/listitem2.png", "assets/images/ui/listitem2.png");
		type.set ("assets/images/ui/listitem2.png", AssetType.IMAGE);
		path.set ("assets/images/ui/message.png", "assets/images/ui/message.png");
		type.set ("assets/images/ui/message.png", AssetType.IMAGE);
		path.set ("assets/images/ui/messagetext.png", "assets/images/ui/messagetext.png");
		type.set ("assets/images/ui/messagetext.png", AssetType.IMAGE);
		path.set ("assets/images/ui/window200x100.png", "assets/images/ui/window200x100.png");
		type.set ("assets/images/ui/window200x100.png", AssetType.IMAGE);
		path.set ("assets/images/ui/window624x74.png", "assets/images/ui/window624x74.png");
		type.set ("assets/images/ui/window624x74.png", AssetType.IMAGE);
		path.set ("assets/levels/000.tmx", "assets/levels/000.tmx");
		type.set ("assets/levels/000.tmx", AssetType.TEXT);
		path.set ("assets/levels/001.tmx", "assets/levels/001.tmx");
		type.set ("assets/levels/001.tmx", AssetType.TEXT);
		path.set ("assets/levels/002.tmx", "assets/levels/002.tmx");
		type.set ("assets/levels/002.tmx", AssetType.TEXT);
		path.set ("assets/levels/003.tmx", "assets/levels/003.tmx");
		type.set ("assets/levels/003.tmx", AssetType.TEXT);
		path.set ("assets/levels/004.tmx", "assets/levels/004.tmx");
		type.set ("assets/levels/004.tmx", AssetType.TEXT);
		path.set ("assets/levels/005.tmx", "assets/levels/005.tmx");
		type.set ("assets/levels/005.tmx", AssetType.TEXT);
		path.set ("assets/levels/006.tmx", "assets/levels/006.tmx");
		type.set ("assets/levels/006.tmx", AssetType.TEXT);
		path.set ("assets/levels/007.tmx", "assets/levels/007.tmx");
		type.set ("assets/levels/007.tmx", AssetType.TEXT);
		path.set ("assets/levels/008.tmx", "assets/levels/008.tmx");
		type.set ("assets/levels/008.tmx", AssetType.TEXT);
		path.set ("assets/levels/009.tmx", "assets/levels/009.tmx");
		type.set ("assets/levels/009.tmx", AssetType.TEXT);
		path.set ("assets/levels/010.tmx", "assets/levels/010.tmx");
		type.set ("assets/levels/010.tmx", AssetType.TEXT);
		path.set ("assets/levels/011.tmx", "assets/levels/011.tmx");
		type.set ("assets/levels/011.tmx", AssetType.TEXT);
		path.set ("assets/levels/012.tmx", "assets/levels/012.tmx");
		type.set ("assets/levels/012.tmx", AssetType.TEXT);
		path.set ("assets/levels/013.tmx", "assets/levels/013.tmx");
		type.set ("assets/levels/013.tmx", AssetType.TEXT);
		path.set ("assets/levels/014.tmx", "assets/levels/014.tmx");
		type.set ("assets/levels/014.tmx", AssetType.TEXT);
		path.set ("assets/levels/015.tmx", "assets/levels/015.tmx");
		type.set ("assets/levels/015.tmx", AssetType.TEXT);
		path.set ("assets/levels/016.tmx", "assets/levels/016.tmx");
		type.set ("assets/levels/016.tmx", AssetType.TEXT);
		path.set ("assets/levels/017.tmx", "assets/levels/017.tmx");
		type.set ("assets/levels/017.tmx", AssetType.TEXT);
		path.set ("assets/levels/018.tmx", "assets/levels/018.tmx");
		type.set ("assets/levels/018.tmx", AssetType.TEXT);
		path.set ("assets/levels/019.tmx", "assets/levels/019.tmx");
		type.set ("assets/levels/019.tmx", AssetType.TEXT);
		path.set ("assets/levels/020.tmx", "assets/levels/020.tmx");
		type.set ("assets/levels/020.tmx", AssetType.TEXT);
		path.set ("assets/levels/021.tmx", "assets/levels/021.tmx");
		type.set ("assets/levels/021.tmx", AssetType.TEXT);
		path.set ("assets/levels/022.tmx", "assets/levels/022.tmx");
		type.set ("assets/levels/022.tmx", AssetType.TEXT);
		path.set ("assets/levels/023.tmx", "assets/levels/023.tmx");
		type.set ("assets/levels/023.tmx", AssetType.TEXT);
		path.set ("assets/levels/024.tmx", "assets/levels/024.tmx");
		type.set ("assets/levels/024.tmx", AssetType.TEXT);
		path.set ("assets/levels/025.tmx", "assets/levels/025.tmx");
		type.set ("assets/levels/025.tmx", AssetType.TEXT);
		path.set ("assets/levels/026.tmx", "assets/levels/026.tmx");
		type.set ("assets/levels/026.tmx", AssetType.TEXT);
		path.set ("assets/levels/027.tmx", "assets/levels/027.tmx");
		type.set ("assets/levels/027.tmx", AssetType.TEXT);
		path.set ("assets/levels/028.tmx", "assets/levels/028.tmx");
		type.set ("assets/levels/028.tmx", AssetType.TEXT);
		path.set ("assets/levels/029.tmx", "assets/levels/029.tmx");
		type.set ("assets/levels/029.tmx", AssetType.TEXT);
		path.set ("assets/levels/030.tmx", "assets/levels/030.tmx");
		type.set ("assets/levels/030.tmx", AssetType.TEXT);
		path.set ("assets/levels/031.tmx", "assets/levels/031.tmx");
		type.set ("assets/levels/031.tmx", AssetType.TEXT);
		path.set ("assets/levels/032.tmx", "assets/levels/032.tmx");
		type.set ("assets/levels/032.tmx", AssetType.TEXT);
		path.set ("assets/levels/033.tmx", "assets/levels/033.tmx");
		type.set ("assets/levels/033.tmx", AssetType.TEXT);
		path.set ("assets/levels/034.tmx", "assets/levels/034.tmx");
		type.set ("assets/levels/034.tmx", AssetType.TEXT);
		path.set ("assets/levels/035.tmx", "assets/levels/035.tmx");
		type.set ("assets/levels/035.tmx", AssetType.TEXT);
		path.set ("assets/levels/036.tmx", "assets/levels/036.tmx");
		type.set ("assets/levels/036.tmx", AssetType.TEXT);
		path.set ("assets/levels/037.tmx", "assets/levels/037.tmx");
		type.set ("assets/levels/037.tmx", AssetType.TEXT);
		path.set ("assets/levels/038.tmx", "assets/levels/038.tmx");
		type.set ("assets/levels/038.tmx", AssetType.TEXT);
		path.set ("assets/levels/039.tmx", "assets/levels/039.tmx");
		type.set ("assets/levels/039.tmx", AssetType.TEXT);
		path.set ("assets/levels/040.tmx", "assets/levels/040.tmx");
		type.set ("assets/levels/040.tmx", AssetType.TEXT);
		path.set ("assets/levels/041.tmx", "assets/levels/041.tmx");
		type.set ("assets/levels/041.tmx", AssetType.TEXT);
		path.set ("assets/levels/042.tmx", "assets/levels/042.tmx");
		type.set ("assets/levels/042.tmx", AssetType.TEXT);
		path.set ("assets/levels/043.tmx", "assets/levels/043.tmx");
		type.set ("assets/levels/043.tmx", AssetType.TEXT);
		path.set ("assets/levels/044.tmx", "assets/levels/044.tmx");
		type.set ("assets/levels/044.tmx", AssetType.TEXT);
		path.set ("assets/levels/045.tmx", "assets/levels/045.tmx");
		type.set ("assets/levels/045.tmx", AssetType.TEXT);
		path.set ("assets/levels/046.tmx", "assets/levels/046.tmx");
		type.set ("assets/levels/046.tmx", AssetType.TEXT);
		path.set ("assets/levels/047.tmx", "assets/levels/047.tmx");
		type.set ("assets/levels/047.tmx", AssetType.TEXT);
		path.set ("assets/levels/048.tmx", "assets/levels/048.tmx");
		type.set ("assets/levels/048.tmx", AssetType.TEXT);
		path.set ("assets/levels/049.tmx", "assets/levels/049.tmx");
		type.set ("assets/levels/049.tmx", AssetType.TEXT);
		path.set ("assets/levels/050.tmx", "assets/levels/050.tmx");
		type.set ("assets/levels/050.tmx", AssetType.TEXT);
		path.set ("assets/levels/500.tmx", "assets/levels/500.tmx");
		type.set ("assets/levels/500.tmx", AssetType.TEXT);
		path.set ("assets/levels/ansi/enemy.csv", "assets/levels/ansi/enemy.csv");
		type.set ("assets/levels/ansi/enemy.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/enemy_appear.csv", "assets/levels/ansi/enemy_appear.csv");
		type.set ("assets/levels/ansi/enemy_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/enemy_nightmare.csv", "assets/levels/ansi/enemy_nightmare.csv");
		type.set ("assets/levels/ansi/enemy_nightmare.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/item_appear.csv", "assets/levels/ansi/item_appear.csv");
		type.set ("assets/levels/ansi/item_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/item_consumable.csv", "assets/levels/ansi/item_consumable.csv");
		type.set ("assets/levels/ansi/item_consumable.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/item_equipment.csv", "assets/levels/ansi/item_equipment.csv");
		type.set ("assets/levels/ansi/item_equipment.csv", AssetType.TEXT);
		path.set ("assets/levels/ansi/player.csv", "assets/levels/ansi/player.csv");
		type.set ("assets/levels/ansi/player.csv", AssetType.TEXT);
		path.set ("assets/levels/enemy.csv", "assets/levels/enemy.csv");
		type.set ("assets/levels/enemy.csv", AssetType.TEXT);
		path.set ("assets/levels/enemy_appear.csv", "assets/levels/enemy_appear.csv");
		type.set ("assets/levels/enemy_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/enemy_nightmare.csv", "assets/levels/enemy_nightmare.csv");
		type.set ("assets/levels/enemy_nightmare.csv", AssetType.TEXT);
		path.set ("assets/levels/item_appear.csv", "assets/levels/item_appear.csv");
		type.set ("assets/levels/item_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/item_consumable.csv", "assets/levels/item_consumable.csv");
		type.set ("assets/levels/item_consumable.csv", AssetType.TEXT);
		path.set ("assets/levels/item_equipment.csv", "assets/levels/item_equipment.csv");
		type.set ("assets/levels/item_equipment.csv", AssetType.TEXT);
		path.set ("assets/levels/player.csv", "assets/levels/player.csv");
		type.set ("assets/levels/player.csv", AssetType.TEXT);
		path.set ("assets/levels/tilenone.png", "assets/levels/tilenone.png");
		type.set ("assets/levels/tilenone.png", AssetType.IMAGE);
		path.set ("assets/levels/tileset.png", "assets/levels/tileset.png");
		type.set ("assets/levels/tileset.png", AssetType.IMAGE);
		path.set ("assets/levels/utf8/enemy.csv", "assets/levels/utf8/enemy.csv");
		type.set ("assets/levels/utf8/enemy.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/enemy_appear.csv", "assets/levels/utf8/enemy_appear.csv");
		type.set ("assets/levels/utf8/enemy_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/enemy_nightmare.csv", "assets/levels/utf8/enemy_nightmare.csv");
		type.set ("assets/levels/utf8/enemy_nightmare.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/item_appear.csv", "assets/levels/utf8/item_appear.csv");
		type.set ("assets/levels/utf8/item_appear.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/item_consumable.csv", "assets/levels/utf8/item_consumable.csv");
		type.set ("assets/levels/utf8/item_consumable.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/item_equipment.csv", "assets/levels/utf8/item_equipment.csv");
		type.set ("assets/levels/utf8/item_equipment.csv", AssetType.TEXT);
		path.set ("assets/levels/utf8/player.csv", "assets/levels/utf8/player.csv");
		type.set ("assets/levels/utf8/player.csv", AssetType.TEXT);
		path.set ("assets/TemplateCSV/item_consumable.csv", "assets/TemplateCSV/item_consumable.csv");
		type.set ("assets/TemplateCSV/item_consumable.csv", AssetType.TEXT);
		path.set ("001", "assets/music/001.ogg");
		type.set ("001", AssetType.SOUND);
		path.set ("002", "assets/music/002.ogg");
		type.set ("002", AssetType.SOUND);
		path.set ("003", "assets/music/003.ogg");
		type.set ("003", AssetType.SOUND);
		path.set ("004", "assets/music/004.ogg");
		type.set ("004", AssetType.SOUND);
		path.set ("005", "assets/music/005.ogg");
		type.set ("005", AssetType.SOUND);
		path.set ("006", "assets/music/006.ogg");
		type.set ("006", AssetType.SOUND);
		path.set ("007", "assets/music/007.ogg");
		type.set ("007", AssetType.SOUND);
		path.set ("008", "assets/music/008.ogg");
		type.set ("008", AssetType.SOUND);
		path.set ("009", "assets/music/009.ogg");
		type.set ("009", AssetType.SOUND);
		path.set ("010", "assets/music/010.ogg");
		type.set ("010", AssetType.SOUND);
		path.set ("011", "assets/music/011.ogg");
		type.set ("011", AssetType.SOUND);
		path.set ("012", "assets/music/012.ogg");
		type.set ("012", AssetType.SOUND);
		path.set ("013", "assets/music/013.ogg");
		type.set ("013", AssetType.SOUND);
		path.set ("014", "assets/music/014.ogg");
		type.set ("014", AssetType.SOUND);
		path.set ("015", "assets/music/015.ogg");
		type.set ("015", AssetType.SOUND);
		path.set ("016", "assets/music/016.ogg");
		type.set ("016", AssetType.SOUND);
		path.set ("nightmare", "assets/music/nightmare.ogg");
		type.set ("nightmare", AssetType.SOUND);
		path.set ("result", "assets/music/result.ogg");
		type.set ("result", AssetType.SOUND);
		path.set ("op1", "assets/music/op1.ogg");
		type.set ("op1", AssetType.SOUND);
		path.set ("op2", "assets/music/op2.ogg");
		type.set ("op2", AssetType.SOUND);
		path.set ("pickup", "assets/sounds/pickup2.ogg");
		type.set ("pickup", AssetType.SOUND);
		path.set ("foot", "assets/sounds/foot2.ogg");
		type.set ("foot", AssetType.SOUND);
		path.set ("destroy", "assets/sounds/destroy.ogg");
		type.set ("destroy", AssetType.SOUND);
		path.set ("hit", "assets/sounds/hit.ogg");
		type.set ("hit", AssetType.SOUND);
		path.set ("critical", "assets/sounds/hit4.ogg");
		type.set ("critical", AssetType.SOUND);
		path.set ("eat", "assets/sounds/eat.ogg");
		type.set ("eat", AssetType.SOUND);
		path.set ("enemy", "assets/sounds/enemy.ogg");
		type.set ("enemy", AssetType.SOUND);
		path.set ("equip", "assets/sounds/equip.ogg");
		type.set ("equip", AssetType.SOUND);
		path.set ("put", "assets/sounds/put.ogg");
		type.set ("put", AssetType.SOUND);
		path.set ("avoid", "assets/sounds/avoid2.ogg");
		type.set ("avoid", AssetType.SOUND);
		path.set ("recover", "assets/sounds/recover.ogg");
		type.set ("recover", AssetType.SOUND);
		path.set ("gameover", "assets/sounds/destroy2.ogg");
		type.set ("gameover", AssetType.SOUND);
		path.set ("menu", "assets/sounds/menu.ogg");
		type.set ("menu", AssetType.SOUND);
		path.set ("pi", "assets/sounds/pi.ogg");
		type.set ("pi", AssetType.SOUND);
		path.set ("hint", "assets/sounds/hint.ogg");
		type.set ("hint", AssetType.SOUND);
		path.set ("coin", "assets/sounds/coin.ogg");
		type.set ("coin", AssetType.SOUND);
		path.set ("levelup", "assets/sounds/levelup.ogg");
		type.set ("levelup", AssetType.SOUND);
		path.set ("badstatus", "assets/sounds/badstatus.ogg");
		type.set ("badstatus", AssetType.SOUND);
		path.set ("warp", "assets/sounds/warp.ogg");
		type.set ("warp", AssetType.SOUND);
		path.set ("error", "assets/sounds/error.ogg");
		type.set ("error", AssetType.SOUND);
		path.set ("flash", "assets/sounds/flash.ogg");
		type.set ("flash", AssetType.SOUND);
		path.set ("break", "assets/sounds/break.ogg");
		type.set ("break", AssetType.SOUND);
		path.set ("roar", "assets/sounds/roar.ogg");
		type.set ("roar", AssetType.SOUND);
		path.set ("powerup", "assets/sounds/powerup.ogg");
		type.set ("powerup", AssetType.SOUND);
		path.set ("chime", "assets/sounds/chime.ogg");
		type.set ("chime", AssetType.SOUND);
		path.set ("unlock", "assets/sounds/unlock.ogg");
		type.set ("unlock", AssetType.SOUND);
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/achievement.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/achievement.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/deathtype.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/hint.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/message.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/nameentry.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/staffroll.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/statistics.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/stats.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/title.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/uitext.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/deathtype.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/hint.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/message.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/name/female.cpp";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/name/male.cpp";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/nameentry.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/staffroll.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/statistics.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/stats.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/title.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/uitext.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/achievement.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/deathtype.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/hint.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/message.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/nameentry.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/staffroll.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/statistics.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/stats.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/title.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/uitext.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/001.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/002.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/003.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/010.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/cursor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/ending.cpp";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/ending.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/matatabi.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/message.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/opening.cpp";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/events/tileset1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset10.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset4.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset5.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset6.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset7.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset8.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset9.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/events/window.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/font/fangzhengxiangsu14.ttf";
		path.set (id, id);
		type.set (id, AssetType.FONT);
		id = "assets/font/font16x16.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/font/pixel.ttf";
		path.set (id, id);
		type.set (id, AssetType.FONT);
		id = "assets/images/balloon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/cat.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/cursor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/door.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/effect.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/heart.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/item.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/kira.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/arachne.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bat.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bear.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bee.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/beetle.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bird.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/boar.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bull.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cat1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cat2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/centipede.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/chicken.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cockroach.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cow.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crab_ground.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crab_water.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crystal_golem.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf4.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/doe.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dog1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dog2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dummy.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/earth_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/eel_ground.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/eel_water.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/empusa.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/evil_eye.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fairy.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fire_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/floating_skull.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fly.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/frog.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fungus.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gargoyle_fly.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gargoyle_walk.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gas_spore.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gelatinous_cube.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ghost.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ghoul.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gillman_ground.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gillman_water.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gnole1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gnole2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goat.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goatman1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goatman2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin4.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/golem.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gorilla.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/grizzy_bear.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/hairy_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/harpy_fly.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/harpy_walk.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/homunculus.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse4.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ice_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/imp.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/insectivorous_plant.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/insect_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/invader.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/iron_golem.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/jelly.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/jellyfish.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/legion.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lesser_fiend1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lesser_fiend2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/liche.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizard.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizardman1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizardman2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/magot.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mandragora.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mantis.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/medousa.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mindflayer.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/minotaur1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/minotaur2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mosquito.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mummy.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/myconid.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/nightmare.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/octopus_ground.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/octopus_water.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ogre1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ogre2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/orc1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/orc2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/panther.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pig.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pillbug.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/poison_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/polar_bear.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pumpkin_head.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/rat.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ratman1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ratman2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/reaper.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/saber_tiger.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/scorpion.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/sea_serpent.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shadow_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/sheep.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shellfish.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shrieker.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton_dog.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton_horse.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/slime.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/slug.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snail.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snake.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snake_man.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snow_panther.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snow_wolf.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/soldier_ant.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/specter.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/spider.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/stag.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/succubus.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tentacle.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tick.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tiger.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/toad.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vampire.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vine.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vulture_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/water_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/werewolf.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wight.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wind_demon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wolf.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/worker_ant.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/worm.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wraith.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wyvern.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/yeti.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/zombie.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/a.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/b.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/background.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/down.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/left.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/right.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/up.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/kira.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/smoke.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/spike.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/tiles.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/bg.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud1.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud3.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud4.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/sunbeam.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/arrow.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/armor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/food.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/orb.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/potion.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/ring.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/scroll.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/wand.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/weapon.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/enemylog_cursor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/frame32x256.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/itemcommand.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/itemlog_cursor.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/listitem.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/listitem2.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/message.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/messagetext.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/window200x100.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/window624x74.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/000.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/001.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/002.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/003.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/004.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/005.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/006.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/007.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/008.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/009.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/010.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/011.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/012.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/013.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/014.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/015.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/016.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/017.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/018.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/019.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/020.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/021.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/022.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/023.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/024.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/025.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/026.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/027.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/028.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/029.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/030.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/031.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/032.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/033.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/034.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/035.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/036.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/037.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/038.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/039.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/040.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/041.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/042.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/043.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/044.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/045.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/046.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/047.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/048.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/049.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/050.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/500.tmx";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy_nightmare.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_consumable.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_equipment.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/player.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy_nightmare.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_consumable.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_equipment.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/player.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/tilenone.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/tileset.png";
		path.set (id, id);
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/utf8/enemy.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/enemy_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/enemy_nightmare.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_appear.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_consumable.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_equipment.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/player.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "assets/TemplateCSV/item_consumable.csv";
		path.set (id, id);
		type.set (id, AssetType.TEXT);
		id = "001";
		path.set (id, "assets/music/001.ogg");
		type.set (id, AssetType.SOUND);
		id = "002";
		path.set (id, "assets/music/002.ogg");
		type.set (id, AssetType.SOUND);
		id = "003";
		path.set (id, "assets/music/003.ogg");
		type.set (id, AssetType.SOUND);
		id = "004";
		path.set (id, "assets/music/004.ogg");
		type.set (id, AssetType.SOUND);
		id = "005";
		path.set (id, "assets/music/005.ogg");
		type.set (id, AssetType.SOUND);
		id = "006";
		path.set (id, "assets/music/006.ogg");
		type.set (id, AssetType.SOUND);
		id = "007";
		path.set (id, "assets/music/007.ogg");
		type.set (id, AssetType.SOUND);
		id = "008";
		path.set (id, "assets/music/008.ogg");
		type.set (id, AssetType.SOUND);
		id = "009";
		path.set (id, "assets/music/009.ogg");
		type.set (id, AssetType.SOUND);
		id = "010";
		path.set (id, "assets/music/010.ogg");
		type.set (id, AssetType.SOUND);
		id = "011";
		path.set (id, "assets/music/011.ogg");
		type.set (id, AssetType.SOUND);
		id = "012";
		path.set (id, "assets/music/012.ogg");
		type.set (id, AssetType.SOUND);
		id = "013";
		path.set (id, "assets/music/013.ogg");
		type.set (id, AssetType.SOUND);
		id = "014";
		path.set (id, "assets/music/014.ogg");
		type.set (id, AssetType.SOUND);
		id = "015";
		path.set (id, "assets/music/015.ogg");
		type.set (id, AssetType.SOUND);
		id = "016";
		path.set (id, "assets/music/016.ogg");
		type.set (id, AssetType.SOUND);
		id = "nightmare";
		path.set (id, "assets/music/nightmare.ogg");
		type.set (id, AssetType.SOUND);
		id = "result";
		path.set (id, "assets/music/result.ogg");
		type.set (id, AssetType.SOUND);
		id = "op1";
		path.set (id, "assets/music/op1.ogg");
		type.set (id, AssetType.SOUND);
		id = "op2";
		path.set (id, "assets/music/op2.ogg");
		type.set (id, AssetType.SOUND);
		id = "pickup";
		path.set (id, "assets/sounds/pickup2.ogg");
		type.set (id, AssetType.SOUND);
		id = "foot";
		path.set (id, "assets/sounds/foot2.ogg");
		type.set (id, AssetType.SOUND);
		id = "destroy";
		path.set (id, "assets/sounds/destroy.ogg");
		type.set (id, AssetType.SOUND);
		id = "hit";
		path.set (id, "assets/sounds/hit.ogg");
		type.set (id, AssetType.SOUND);
		id = "critical";
		path.set (id, "assets/sounds/hit4.ogg");
		type.set (id, AssetType.SOUND);
		id = "eat";
		path.set (id, "assets/sounds/eat.ogg");
		type.set (id, AssetType.SOUND);
		id = "enemy";
		path.set (id, "assets/sounds/enemy.ogg");
		type.set (id, AssetType.SOUND);
		id = "equip";
		path.set (id, "assets/sounds/equip.ogg");
		type.set (id, AssetType.SOUND);
		id = "put";
		path.set (id, "assets/sounds/put.ogg");
		type.set (id, AssetType.SOUND);
		id = "avoid";
		path.set (id, "assets/sounds/avoid2.ogg");
		type.set (id, AssetType.SOUND);
		id = "recover";
		path.set (id, "assets/sounds/recover.ogg");
		type.set (id, AssetType.SOUND);
		id = "gameover";
		path.set (id, "assets/sounds/destroy2.ogg");
		type.set (id, AssetType.SOUND);
		id = "menu";
		path.set (id, "assets/sounds/menu.ogg");
		type.set (id, AssetType.SOUND);
		id = "pi";
		path.set (id, "assets/sounds/pi.ogg");
		type.set (id, AssetType.SOUND);
		id = "hint";
		path.set (id, "assets/sounds/hint.ogg");
		type.set (id, AssetType.SOUND);
		id = "coin";
		path.set (id, "assets/sounds/coin.ogg");
		type.set (id, AssetType.SOUND);
		id = "levelup";
		path.set (id, "assets/sounds/levelup.ogg");
		type.set (id, AssetType.SOUND);
		id = "badstatus";
		path.set (id, "assets/sounds/badstatus.ogg");
		type.set (id, AssetType.SOUND);
		id = "warp";
		path.set (id, "assets/sounds/warp.ogg");
		type.set (id, AssetType.SOUND);
		id = "error";
		path.set (id, "assets/sounds/error.ogg");
		type.set (id, AssetType.SOUND);
		id = "flash";
		path.set (id, "assets/sounds/flash.ogg");
		type.set (id, AssetType.SOUND);
		id = "break";
		path.set (id, "assets/sounds/break.ogg");
		type.set (id, AssetType.SOUND);
		id = "roar";
		path.set (id, "assets/sounds/roar.ogg");
		type.set (id, AssetType.SOUND);
		id = "powerup";
		path.set (id, "assets/sounds/powerup.ogg");
		type.set (id, AssetType.SOUND);
		id = "chime";
		path.set (id, "assets/sounds/chime.ogg");
		type.set (id, AssetType.SOUND);
		id = "unlock";
		path.set (id, "assets/sounds/unlock.ogg");
		type.set (id, AssetType.SOUND);
		id = "flixel/sounds/beep.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/sounds/flixel.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/images/logo/default.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		className.set ("assets/font/fangzhengxiangsu14.ttf", __ASSET__assets_font_fangzhengxiangsu14_ttf);
		type.set ("assets/font/fangzhengxiangsu14.ttf", AssetType.FONT);
		useManifest = true;
		
		className.set ("assets/font/pixel.ttf", __ASSET__assets_font_pixel_ttf);
		type.set ("assets/font/pixel.ttf", AssetType.FONT);
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		useManifest = true;
		
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), ByteArray));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return cast (Type.createInstance (className.get (id), []), ByteArray);
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return bitmapData.getPixels (bitmapData.rect);
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif html5
		
		var bytes:ByteArray = null;
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var data = loader.data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		else return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var bytes:ByteArray = null;
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var data = loader.data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<ByteArray> {
		
		var promise = new Promise<ByteArray> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = BINARY;
			loader.onComplete.add (function (_):Void {
				
				promise.complete (loader.data);
				
			});
			loader.onProgress.add (function (_, loaded, total) {
				
				if (total == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (loaded / total);
					
				}
				
			});
			loader.onIOError.add (function (_, e) {
				
				promise.error (e);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<ByteArray> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id);
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = ByteArray.readFile ("../Resources/manifest");
			#elseif ios
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if ios
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.onComplete.add (function (_):Void {
				
				promise.complete (loader.data);
				
			});
			loader.onProgress.add (function (_, loaded, total) {
				
				if (total == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (loaded / total);
					
				}
				
			});
			loader.onIOError.add (function (_, msg) promise.error (msg));
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.readUTFBytes (bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash























































































































































































































































































































































































@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5






















































@:keep #if display private #end class __ASSET__assets_font_fangzhengxiangsu14_ttf extends lime.text.Font { public function new () { super (); name = "FZXS14"; } } 

@:keep #if display private #end class __ASSET__assets_font_pixel_ttf extends lime.text.Font { public function new () { super (); name = "PixelMplus10 Regular"; } } 
































































































































































































































































































































@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 




#else

@:keep #if display private #end class __ASSET__assets_font_fangzhengxiangsu14_ttf extends lime.text.Font { public function new () { __fontPath = #if ios "assets/" + #end "assets/font/fangzhengxiangsu14.ttf"; name = "FZXS14"; super (); }}
@:keep #if display private #end class __ASSET__assets_font_pixel_ttf extends lime.text.Font { public function new () { __fontPath = #if ios "assets/" + #end "assets/font/pixel.ttf"; name = "PixelMplus10 Regular"; super (); }}


#if (windows || mac || linux || cpp)


@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/beep.ogg") #if display private #end class __ASSET__flixel_sounds_beep_ogg extends lime.utils.ByteArray {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/flixel.ogg") #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends lime.utils.ByteArray {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__assets_font_fangzhengxiangsu14_ttf extends openfl.text.Font { public function new () { __fontPath = #if ios "assets/" + #end "assets/font/fangzhengxiangsu14.ttf"; name = "FZXS14"; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__assets_font_pixel_ttf extends openfl.text.Font { public function new () { __fontPath = #if ios "assets/" + #end "assets/font/pixel.ttf"; name = "PixelMplus10 Regular"; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end


#end