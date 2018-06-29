package haxe.ui.toolkit.core;

import openfl.display.Graphics;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
import haxe.ds.StringMap;
import haxe.ui.toolkit.core.interfaces.IClonable;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.interfaces.IDisplayObjectContainer;
import haxe.ui.toolkit.core.interfaces.IDrawable;
import haxe.ui.toolkit.core.interfaces.IEventDispatcher;
import haxe.ui.toolkit.core.interfaces.InvalidationFlag;
import haxe.ui.toolkit.events.UIEvent;
import haxe.ui.toolkit.util.StringUtil;

@:build(haxe.ui.toolkit.core.Macros.addEvents([
	"init", "resize", "ready",
	"click", "mouseDown", "mouseUp", "mouseOver", "mouseOut", "mouseMove", "doubleClick", "rollOver", "rollOut", "change",
	"added", "addedToStage", "removed", "removedFromStage", "activate", "deactivate",
	"scroll", "scrollStart", "scrollStop",
	"glyphClick",
	"menuSelect", "menuOpen",
	"refresh"
]))
@:build(haxe.ui.toolkit.core.Macros.addClonable())
@:autoBuild(haxe.ui.toolkit.core.Macros.addClonable())
@:event("UIEvent.INIT", "Dispatched when the display object has been initialized")
@:event("UIEvent.READY", "Dispatched when the display object is ready")
@:event("UIEvent.ADDED_TO_STAGE", "Dispatched when a display object is added to the on stage display list")
@:event("UIEvent.REMOVED_FROM_STAGE", "Dispatched when a display object is about to be removed from the display list")
@:event("UIEvent.RESIZE", "Dispatched when the display object has been resized")
@:event("UIEvent.SCROLL", "Dispatched every time the scroll position changes")
@:event("UIEvent.SCROLL_START", "Dispatched when the user begins scrolling")
@:event("UIEvent.SCROLL_STOP", "Dispatched when the user stops scrolling")
class DisplayObject implements IEventDispatcher implements IDisplayObject implements IDrawable implements IClonable<DisplayObject> {
	// used in IDisplayObject getters/setters
	private var _parent:IDisplayObjectContainer;
	private var _root:Root;
	private var _id:String;
	private var _x:Float = 0;
	private var _y:Float = 0;
	private var _z:Float = 0;
	private var _rotationX:Float = 0;
	private var _rotationY:Float = 0;
	private var _rotationZ:Float = 0;
	private var _width:Float = 0;
	private var _height:Float = 0;
	private var _percentWidth:Float = -1;
	private var _percentHeight:Float = -1;
	private var _minWidth:Float = 0;
	private var _minHeight:Float = 0;
	private var _ready:Bool = false;
	private var _invalidating:Bool = false;
	private var _sprite:Sprite;
	private var _halign:String = "left";
	private var _valign:String = "top";
	private var _includeInLayout:Bool = true;
	private var _alpha:Float = 1;

	private var _eventListeners:StringMap < Array < Dynamic->Void >> ;
	
	public function new() {
		_sprite = new Sprite();
		//_sprite.cacheAsBitmap = true;
		_sprite.tabChildren = false;
		addEventListener(Event.ADDED_TO_STAGE, _onAddedToStage, false, 100);
	}

	//******************************************************************************************
	// Overridables
	//******************************************************************************************
	private function preInitialize():Void {
	}
	
	private function initialize():Void {
	}
	
	private function postInitialize():Void {
	}
	//******************************************************************************************
	// Event handlers
	//******************************************************************************************
	private function _onAddedToStage(event:Event):Void {
		removeEventListener(Event.ADDED_TO_STAGE, _onAddedToStage);

		preInitialize();
		_ready = true;
		initialize();
		postInitialize();
		invalidate(InvalidationFlag.LAYOUT | InvalidationFlag.DISPLAY | InvalidationFlag.SIZE);
		
		var event:UIEvent =  new UIEvent(UIEvent.INIT);
		dispatchEvent(event);
		
		var event:UIEvent =  new UIEvent(UIEvent.READY);
		dispatchEvent(event);
	}
	
	//******************************************************************************************
	// IDisplayObject
	//******************************************************************************************
	public var parent(get, set):IDisplayObjectContainer;
	public var root(get, set):Root;
	@:clonable
	public var id(get, set):String;
	@:clonable
	public var x(get, set):Float;
	@:clonable
	public var y(get, set):Float;
	
	#if !html5
	@:clonable
	public var z(get, set):Float;
	#end
	
	@:clonable
	public var rotationX(get, set):Float;
	@:clonable
	public var rotationY(get, set):Float;
	@:clonable
	public var rotationZ(get, set):Float;
	@:clonable
	public var width(get, set):Float;
	@:clonable
	public var height(get, set):Float;
	@:clonable
	public var percentWidth(get, set):Float;
	@:clonable
	public var percentHeight(get, set):Float;
	@:clonable
	public var minWidth(get, set):Float;
	@:clonable
	public var minHeight(get, set):Float;
	public var ready(get, null):Bool;
	public var sprite(get, null):Sprite;
	public var stageX(get, null):Float;
	public var stageY(get, null):Float;
	public var visible(get, set):Bool;
	@:clonable
	public var alpha(get, set):Float;
	@:clonable
	public var includeInLayout(get, set):Bool;
	@:clonable
	public var horizontalAlign(get, set):String;
	@:clonable
	public var verticalAlign(get, set):String;
	@:clonable
	public var useHandCursor(get, set):Bool;
	
	private function get_parent():IDisplayObjectContainer {
		return _parent;
	}
	
	private function set_parent(value:IDisplayObjectContainer):IDisplayObjectContainer {
		_parent = value;
		return value;
	}
	
	private function get_root():Root {
		return _root;
	}
	
	private function set_root(value:Root):Root {
		_root = value;
		return value;
	}
	
	private function get_id():String {
		return _id;
	}
	
	private function set_id(value:String):String {
		_id = value;
		return value;
	}
	
	private function get_x():Float {
		return _x;
	}
	
	private function set_x(value:Float):Float {
		_x = Std.int(value);
		_sprite.x = _x;
		return value;
	}
	
	private function get_y():Float {
		return _y;
	}
	
	private function set_y(value:Float):Float {
		_y = Std.int(value);
		_sprite.y = _y;
		return value;
	}

	#if !html5
	private function get_z():Float {
		return _z;
	}
	
	private function set_z(value:Float):Float {
		if (_z == Std.int(value)) {
			return value;
		}
		_z = Std.int(value);
		#if flash
		_sprite.z = _z;
		#end
		return value;
	}
	#end
	
	private function get_rotationX():Float {
		#if flash
		return _sprite.rotationX;
		#else
		return 0;
		#end
	}
	
	private function set_rotationX(value:Float):Float {
		if (value == _rotationX) {
			return value;
		}
		_rotationX = value;
		#if flash
		_sprite.rotationX = value;
		#end
		return value;
	}
	
	private function get_rotationY():Float {
		#if flash
		return _sprite.rotationY;
		#else
		return 0;
		#end
	}
	
	private function set_rotationY(value:Float):Float {
		if (value == _rotationY) {
			return value;
		}
		_rotationY = value;
		#if flash
		_sprite.rotationY = value;
		#end
		return value;
	}

	private function get_rotationZ():Float {
		#if flash
		return _sprite.rotationZ;
		#else
		return 0;
		#end
	}
	
	private function set_rotationZ(value:Float):Float {
		if (value == _rotationZ) {
			return value;
		}
		_rotationZ = value;
		#if flash
		_sprite.rotationZ = value;
		#end
		return value;
	}
	
	private function get_width():Float {
		return _width / sprite.scaleX;
	}
	
	private function set_width(value:Float):Float {
		value = Math.fround(value);
		if (_width == value) {
			return value;
		}
		
		_width = value;
		_invalidating = false;
		invalidate(InvalidationFlag.DISPLAY | InvalidationFlag.SIZE);
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		var event:UIEvent =  new UIEvent(UIEvent.RESIZE);
		dispatchEvent(event);
		
		return value;
	}
	
	private function get_height():Float {
		return _height / sprite.scaleY;
	}
	
	private function set_height(value:Float):Float {
		value = Math.fround(value);
		if (_height == value) {
			return value;
		}
		
		_height = value;
		_invalidating = false;
		invalidate(InvalidationFlag.DISPLAY | InvalidationFlag.SIZE);
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		var event:UIEvent =  new UIEvent(UIEvent.RESIZE);
		dispatchEvent(event);
		
		return value;
	}
	
	private function get_percentWidth():Float {
		return _percentWidth;
	}
	
	private function set_percentWidth(value:Float):Float {
		if (_percentWidth == value) {
			return value;
		}
		
		_percentWidth = value;
		invalidate();
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}
	
	private function get_percentHeight():Float {
		return _percentHeight;
	}
	
	private function set_percentHeight(value:Float):Float {
		if (_percentHeight == value) {
			return value;
		}
		
		_percentHeight = value;
		invalidate();
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}

	private function get_minWidth():Float {
		return _minWidth;
	}
	
	private function set_minWidth(value:Float):Float {
		_minWidth = value;
		return value;
	}
	
	private function get_minHeight():Float {
		return _minHeight;
	}
	
	private function set_minHeight(value:Float):Float {
		_minHeight = value;
		return value;
	}
	
	private function get_ready():Bool {
		return _ready;
	}

	private function get_sprite():Sprite {
		return _sprite;
	}
	

	private function get_stageX():Float {
		var c:IDisplayObject = cast(this, IDisplayObject);
		var xpos:Float = root.sprite.parent.x;
		while (c != null) {
			xpos += c.x;
			if (c.sprite.scrollRect != null) {
				xpos -= c.sprite.scrollRect.left;
			}
			c = c.parent;
		}
		//xpos -= root.x;
		return xpos;
	}

	private function get_stageY():Float {
		var c:IDisplayObject = cast(this, IDisplayObject);
		var ypos:Float = root.sprite.parent.y;
		while (c != null) {
			ypos += c.y;
			if (c.sprite.scrollRect != null) {
				ypos -= c.sprite.scrollRect.top;
			}
			c = c.parent;
		}
		//ypos -= root.y;
		return ypos;
	}

	private function get_visible():Bool {
		var v = _sprite.visible;
		return v;
	}
	
	private function set_visible(value:Bool):Bool {
		_sprite.visible = value;
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}

	private function get_alpha():Float {
		return _alpha;
	}
	
	private function set_alpha(value:Float):Float {
		if (value != _alpha) {
			_alpha = value;
			invalidate();
		}
		return value;
	}
	
	private function get_includeInLayout():Bool {
		return _includeInLayout;
	}
	
	private function set_includeInLayout(value:Bool):Bool {
		_includeInLayout = value;
		if (_parent != null) {
			_parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}
	
	private function get_horizontalAlign():String {
		return _halign;
	}
	
	private function set_horizontalAlign(value:String):String {
		_halign = value;
		if (_ready) {
			parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}
	
	private function get_verticalAlign():String {
		return _valign;
	}
	
	private function set_verticalAlign(value:String):String {
		_valign = value;
		if (_ready) {
			parent.invalidate(InvalidationFlag.LAYOUT);
		}
		return value;
	}
	
	private function get_useHandCursor():Bool {
		return sprite.useHandCursor;
	}
	
	private function set_useHandCursor(value:Bool):Bool {
		sprite.useHandCursor = value;
		sprite.buttonMode = value;
		return value;
	}
	
	public function hitTest(xpos:Float, ypos:Float):Bool { // co-ords must be stage
		var b:Bool = false;
		var sx:Float = stageX;
		var sy:Float = stageY;
		xpos /= Toolkit.scaleFactor;
		ypos /= Toolkit.scaleFactor;
		if (xpos > sx && xpos < sx + width && ypos > sy && ypos < sy + height) {
			b = true;
		}
		
		return b;
	}

	public function invalidate(type:Int = InvalidationFlag.ALL, recursive:Bool = false):Void {
		if (!_ready || _invalidating) {
			return;
		}

		//CallStackHelper.traceCallStack();
		
		_invalidating = true;
		if (type & InvalidationFlag.DISPLAY == InvalidationFlag.DISPLAY
			|| type & InvalidationFlag.STATE == InvalidationFlag.STATE) {
			paint();
		}
		_invalidating = false;
	}
	
	public function dispose():Void {
		// remove all event listeners
		removeAllEventListeners();
	}
	
	private function interceptEvent(event:Event):Void {
		var uiEvent:UIEvent = new UIEvent(UIEvent.PREFIX + event.type);
		if (Std.is(event, MouseEvent)) {
			var mouseEvent:MouseEvent = cast event;
			uiEvent.stageX = mouseEvent.stageX;
			uiEvent.stageY = mouseEvent.stageY;
		}
		dispatchEvent(uiEvent);
	}
	
	//******************************************************************************************
	// IEventDispatcher
	//******************************************************************************************
	private var _interceptMap:Map<String, Int>;
	public function addEventListener(type:String, listener:Dynamic->Void, useCapture:Bool = false, priority:Int = 0, useWeakReference:Bool = false):Void {
		if (StringTools.startsWith(type, UIEvent.PREFIX)) {
			var interceptEventType:String = type.substr(UIEvent.PREFIX.length, type.length);
			if (_interceptMap == null) {
				_interceptMap = new Map<String, Int>();
			}
			if (_interceptMap.exists(interceptEventType) == false) {
				_interceptMap.set(interceptEventType, 0);
			} else {
				_interceptMap.set(interceptEventType, _interceptMap.get(interceptEventType) + 1);
			}
			if (_interceptMap.get(interceptEventType) == 0) {
				addEventListener(interceptEventType, interceptEvent, useCapture, priority, useWeakReference);
			}
		}
		
		if (_eventListeners == null) {
			_eventListeners = new StringMap < Array < Dynamic->Void >> ();
		}
		
		var list:Array < Dynamic->Void > = _eventListeners.get(type);
		if (list == null) {
			list = new Array < Dynamic->Void > ();
			_eventListeners.set(type, list);
		}
		list.push(listener);
		
		_sprite.addEventListener(type, listener, useCapture, priority, useWeakReference);
	}
	
	public function dispatchEvent(event:Event):Bool {
		if (Std.is(event, UIEvent)) {
			cast(event, UIEvent).displayObject = this;
		}
		return _sprite.dispatchEvent(event);
	}
	
	public function hasEventListener(type:String):Bool {
		return _sprite.hasEventListener(type);
	}
	
	public function removeEventListener(type:String, listener:Dynamic->Void, useCapture:Bool = false):Void {
		if (StringTools.startsWith(type, UIEvent.PREFIX)) {
			var interceptEventType:String = type.substr(UIEvent.PREFIX.length, type.length);
			if (_interceptMap != null && _interceptMap.exists(interceptEventType)) {
				_interceptMap.set(interceptEventType, _interceptMap.get(interceptEventType) - 1);
				if (_interceptMap.get(interceptEventType) <= 0) {
					_interceptMap.remove(interceptEventType);
					removeEventListener(interceptEventType, interceptEvent, useCapture);
				}
			}
		}
		
		if (_eventListeners != null && _eventListeners.exists(type)) {
			var list:Array < Dynamic->Void > = _eventListeners.get(type);
			if (list != null) {
                while (list.length != 0) {
    				removeEventFunction(list, list.pop());
                }
			}
		}
		_sprite.removeEventListener(type, listener, useCapture);
	}
	
	public function willTrigger(type:String):Bool {
		return _sprite.willTrigger(type);
	}
	
	//******************************************************************************************
	// IDrawable
	//******************************************************************************************
	public var graphics(get, null):Graphics;
	
	private function get_graphics():Graphics {
		return _sprite.graphics;
	}
	
	private function paint():Void {
		_sprite.graphics.clear();

		_sprite.graphics.beginFill(0xCCCCCC);
		_sprite.graphics.lineStyle(1, 0x888888);
		_sprite.graphics.drawRect(0, 0, _width, _height);
		_sprite.graphics.endFill();
	}
	
	//******************************************************************************************
	// Helpers
	//******************************************************************************************
	public function removeEventListenerType(eventType:String):Void {
		if (_eventListeners != null) {
			var list:Array < Dynamic->Void > = _eventListeners.get(eventType);
			if (list != null) {
				while (list.length != 0) {
					removeEventListener(eventType, list.pop());
				}
			}
		}
	}
	
	private function removeAllEventListeners():Void {
		if (_eventListeners != null) {
			for (eventType in _eventListeners.keys()) {
				var list:Array <Dynamic->Void> = _eventListeners.get(eventType);
				while (list.length != 0) {
					removeEventListener(eventType, list.pop());
					list = _eventListeners.get(eventType);
				}
			}
		}
	}
	
	private function getListenerCount(type:String, listener:Dynamic->Void):Int {
		#if neko
			throw "Not supported in neko";
		#else
		var count:Int = 0;
		if (_eventListeners.exists(type)) {
			var list:Array < Dynamic->Void > = _eventListeners.get(type); 
			for (l in list) {
				if (l == listener) {
					count++;
				}
			}
		}
		return count;
		#end
	}
	
	private inline function removeEventFunction(arr:Array<Dynamic->Void>, fn:Dynamic->Void):Bool {
		#if !neko
		
		return arr.remove(fn);
		
		#else
		var indexToRemove:Int = -1;
		for (n in 0...arr.length) {
			if (Reflect.compareMethods(arr[n], fn) == true) {
				indexToRemove = n;
				break;
			}
		}
		
		if (indexToRemove == -1) {
			return false;
		}
		
		arr.splice(indexToRemove, 1);
		return true;
		
		#end
	}
	
	//******************************************************************************************
	// event handler vars
	//******************************************************************************************
	private function _handleEvent(event:UIEvent):Void {
		var fnName:String = "on" + StringUtil.capitalizeFirstLetter(StringTools.replace(event.type, UIEvent.PREFIX, ""));
		var fn:UIEvent->Void = Reflect.field(this, fnName);
		if (fn != null) {
			var fnEvent:UIEvent = new UIEvent(UIEvent.PREFIX + event.type, event.component); 
			fnEvent.data = event.data;
			fnEvent.displayObject = this;
			fn(fnEvent);
		}
	}
}