package haxe.ui.toolkit.core;

import haxe.ui.toolkit.core.interfaces.IComponent;
import haxe.ui.toolkit.style.StyleManager;
import haxe.ui.toolkit.style.StyleParser;
import openfl.Lib;
import haxe.ds.StringMap;
import haxe.ui.toolkit.controls.Menu;
import haxe.ui.toolkit.controls.popups.Popup;
import haxe.ui.toolkit.controls.selection.DateSelector;
import haxe.ui.toolkit.controls.selection.ListSelector;
import haxe.ui.toolkit.core.interfaces.IDataComponent;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.interfaces.IDisplayObjectContainer;
import haxe.ui.toolkit.core.xml.DataProcessor;
import haxe.ui.toolkit.core.xml.IXMLProcessor;
import haxe.ui.toolkit.core.xml.StyleProcessor;
import haxe.ui.toolkit.core.xml.UIProcessor;
import haxe.ui.toolkit.data.IDataSource;
import haxe.ui.toolkit.hscript.ClientWrapper;
import haxe.ui.toolkit.hscript.ScriptManager;
import haxe.ui.toolkit.resources.ResourceManager;
import haxe.ui.toolkit.themes.DefaultTheme;
import haxe.ui.toolkit.themes.Theme;

class Toolkit {
	private static inline var DPI_THRESHOLD:Int = 160;
	
	private static var _instance:Toolkit;
	public static var instance(get, null):Toolkit;
	private static function get_instance():Toolkit {
		if (_instance == null) {
			Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
			Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
			_instance = new Toolkit();
		}
		return _instance;
	}
	
	//******************************************************************************************
	// Instance functions
	//******************************************************************************************
	public static function init():Void {
		Macros.readVersionInfo();
		
		#if HXUI_CONSOLE
		haxe.ui.toolkit.console.HaxeUIConsole.init();
		#end
		
		Macros.registerModules();
		get_instance();
		registerXMLProcessor(UIProcessor, "ui");
		registerXMLProcessor(UIProcessor, "selection");
		registerXMLProcessor(StyleProcessor, "style");
		registerXMLProcessor(DataProcessor, "data");

		function setDefaultTransition(cls:Class<IDisplayObject>, transition:String, time:Float){
			var className:String = Type.getClassName(cls);

			if(_transitionRegister == null || _transitionRegister.get(className) == null){
				setTransitionForClass(cls, transition);

				if(_transitionTimeRegister == null || _transitionTimeRegister.get(className) == null){
					setTransitionTimeForClass(cls, time);
				}
			}
		}

		setDefaultTransition(Menu, "fade", 0.1); // fade looks nicer
		setDefaultTransition(DateSelector, "slide", 0.15);
		setDefaultTransition(ListSelector, "slide", 0.15);
		setDefaultTransition(Popup, "slide", 0.3);

		var t:Theme = null;
		if (Std.is(theme, Theme)) {
			t = cast theme;
		} else if (Std.is(theme, String)) {
			t = new Theme();
			t.name = cast theme;
		}
		
		if (t == null && useDefaultTheme == true) {
			t = new DefaultTheme();
		}
		
		if (t != null) {
			t.apply();
		}
	}

	private static var _versionInfo:Map<String, Dynamic> = new Map<String, Dynamic>();
	public static var versionInfo(get, null):Map<String, Dynamic>;
	private static function get_versionInfo():Map<String, Dynamic> {
		return _versionInfo;
	}
	
	public static var versionString(get, null):String;
	private static function get_versionString():String {
		var s:String = "";
		for (lib in _versionInfo.keys()) {
			s += lib + " [" + _versionInfo.get(lib).version + "]\n";
		}
		return s;
	}
	
	private static var _registeredProcessors:StringMap<String>;
	public static function registerXMLProcessor(cls:Class<IXMLProcessor>, prefix:String):Void {
		if (_registeredProcessors == null) {
			_registeredProcessors = new StringMap<String>();
		}
		_registeredProcessors.set(prefix, Type.getClassName(cls));
	}
	
	//******************************************************************************************
	// Theme functions
	//******************************************************************************************
	public static var useDefaultTheme(default, default):Bool = true;
	public static var theme(default, default):Dynamic;

	//******************************************************************************************
	// Toolkit settings
	//******************************************************************************************
	public static var autoScale(default, default):Bool = true;
	
	//******************************************************************************************
	// Processes a chunk of xml, return values depend on what comes in, could return IDisplayObject, IDataSource
	// processing means constructing ui, registering data sources
	//******************************************************************************************
	public static function processXmlResource<T>(resourceId:String):Null<T> {
		return processXml(ResourceManager.instance.getXML(resourceId));
	}
	
	public static function processXml<T>(xml:Xml):Null<T> {
		var result:Dynamic = null;
		
		result = processXmlNode(xml.firstElement());
		postProcessXmlNode(xml.firstElement(), result);
		
		return cast result;
	}
	
	private static function processXmlNode<T>(node:Xml):Null<T> {
		if (node == null) {
			return null;
		}
		
		var result:Dynamic = null; 
		var nodeName:String = node.nodeName;
		var n:Int = nodeName.indexOf(":");
		if (n != -1) {
			nodeName = nodeName.substr(n + 1, nodeName.length);
		}
		nodeName = nodeName.toLowerCase();

		var condition:String = node.get("condition");
		if (condition != null) {
			var parser = new hscript.Parser();
			var program = parser.parseString(condition);
			var interp = new hscript.Interp();
			var clientWrapper:ClientWrapper = new ClientWrapper();
			interp.variables.set("Client", clientWrapper);
			var conditionResult:Bool = interp.execute(program);
			if (conditionResult == false) {
				return null;
			}
		}
		
		if (nodeName == "import") {
			var importResource = node.get("resource");
			if (importResource != null) {
				var importData:String = ResourceManager.instance.getText(importResource);
				if (importData != null) {
					var importXml:Xml = Xml.parse(importData);
					return processXml(importXml);
				}
			}
		} else if (nodeName == "script") {
		} else if (nodeName == "style") {
			var p:IXMLProcessor = new StyleProcessor();
			result = p.process(node);
		} else {
			if (ClassManager.instance.hasDataSourceClass(nodeName)) {
				var p:IXMLProcessor = new DataProcessor();
				result = p.process(node);
			} else {
				var p:IXMLProcessor = new UIProcessor();
				result = p.process(node);
				if (result == null) {
					trace("WARNING: Could not find processor for '" + nodeName + "'");
				}
			}
		}
		
		for (child in node.elements()) {
			var childResult = processXmlNode(child);
			
			if (Std.is(childResult, IDataSource) && Std.is(result, IDataComponent)) {
				cast(result, IDataComponent).dataSource = cast(childResult, IDataSource);
			}
			
			if (Std.is(childResult, IDisplayObject) && Std.is(result, IDisplayObjectContainer)) {
				cast(result, IDisplayObjectContainer).addChild(cast(childResult, IDisplayObject));
			}
		}
		
		return cast result;
	}
	
	private static function postProcessXmlNode<T>(node:Xml, parentObject:Dynamic = null):Null<T> {
		if (node == null) {
			return null;
		}
		
		var result:Dynamic = null; 
		var nodeName:String = node.nodeName;
		var n:Int = nodeName.indexOf(":");
		if (n != -1) {
			nodeName = nodeName.substr(n + 1, nodeName.length);
		}
		nodeName = nodeName.toLowerCase();

		var condition:String = node.get("condition");
		if (condition != null) {
			var parser = new hscript.Parser();
			var program = parser.parseString(condition);
			var interp = new hscript.Interp();
			var clientWrapper:ClientWrapper = new ClientWrapper();
			interp.variables.set("Client", clientWrapper);
			var conditionResult:Bool = interp.execute(program);
			if (conditionResult == false) {
				return null;
			}
		}
		
		if (nodeName == "script") {
			var scriptResource = node.get("resource");
			var scriptData:String = "";
			if (scriptResource != null) {
				scriptData += ResourceManager.instance.getText(scriptResource);
				scriptData += "\n\n";
			}
			var scriptNodeData:String = node.firstChild().nodeValue;
			if (scriptNodeData != null) {
				scriptNodeData = StringTools.trim(scriptNodeData);
				scriptData += "\n\n" + scriptNodeData;
			}
			if (parentObject != null && Std.is(parentObject, IComponent)) {
				cast(parentObject, IComponent).addScriptlet(scriptData);
			}
		}
		
		for (child in node.elements()) {
			var childResult = postProcessXmlNode(child, parentObject);
		}
		
		return cast result;
	}
	
	//******************************************************************************************
	// Animation defaults
	//******************************************************************************************
	private static var _defaultTransition:String = "slide";
	private static var _defaultTransitionTime:Float = .3;
	private static var _transitionRegister:StringMap<String>;
	private static var _transitionTimeRegister:StringMap<Float>;
	
	public static var defaultTransition(get, set):String;
	
	private static function get_defaultTransition():String {
		return _defaultTransition;
	}
	
	private static function set_defaultTransition(value:String):String {
		_defaultTransition = value;
		return value;
	}

	private static function get_defaultTransitionTime():Float {
		return _defaultTransitionTime;
	}
	
	private static function set_defaultTransitionTime(value:Float):Float {
		_defaultTransitionTime = value;
		return value;
	}

	public static function getTransitionForClass(cls:Class<IDisplayObject>):String {
		var s = _defaultTransition;
		var className:String = Type.getClassName(cls);
		if (_transitionRegister != null && _transitionRegister.get(className) != null) {
			s = _transitionRegister.get(className);
		}
		return s;
	}
	
	public static function setTransitionForClass(cls:Class<IDisplayObject>, transition:String):Void {
		if (_transitionRegister == null) {
			_transitionRegister = new StringMap<String>();
		}
		var className:String = Type.getClassName(cls);
		_transitionRegister.set(className, transition);
	}

	public static function getTransitionTimeForClass(cls:Class<IDisplayObject>):Float {
		var s = _defaultTransitionTime;
		var className:String = Type.getClassName(cls);
		if (_transitionTimeRegister != null && _transitionTimeRegister.get(className) != null) {
			s = _transitionTimeRegister.get(className);
		}
		return s;
	}
	
	public static function setTransitionTimeForClass(cls:Class<IDisplayObject>, transitionTime:Float):Void {
		if (_transitionTimeRegister == null) {
			_transitionTimeRegister = new StringMap<Float>();
		}
		var className:String = Type.getClassName(cls);
		_transitionTimeRegister.set(className, transitionTime);
	}
	
	public static function addScriptletClass(name:String, cls:Class<Dynamic>):Void {
		ScriptManager.instance.addClass(name, cls);
	}
	
	public static function addStyleSheet(resourceId:String):Void {
		StyleManager.instance.addStyles(StyleParser.fromString(ResourceManager.instance.getText(resourceId)));
	}
	
	//******************************************************************************************
	// Instance methods/props
	//******************************************************************************************
	public function new() {
		initInstance();
	}
	
	private function initInstance() {
		//_transitionRegister = new StringMap<String>();
		ClassManager.instance;
	}
	
	public static function open(fn:Root->Void = null, options:Dynamic = null):Root {
		if (options != null) {
			return openPopup(options, fn);
		}
		return openFullscreen(fn);
	}
	
	public static function openFullscreen(fn:Root->Void = null):Root {
		var root:Root = RootManager.instance.createRoot({x: 0, y: 0, percentWidth: 100, percentHeight: 100, styleName: "fullscreen"}, fn);
		return root;
	}
	
	public static function openPopup(options:Dynamic = null, fn:Root->Void = null):Root {
		if (options == null) {
			options = { };
		}
		
		options.x = (options.x != null) ? options.x : 20;
		options.y = (options.y != null) ? options.y : 20;
		options.styleName = (options.styleName != null) ? options.styleName : "popup";
		
		var root:Root = RootManager.instance.createRoot(options, fn);
		return root;
	}
	
	private static var _scaleFactor:Float = 0;
	public static var scaleFactor(get, set):Float;
	private static function get_scaleFactor():Float {
		if (_scaleFactor == 0) {
			if (autoScale == true) {
				scaleFactor = openfl.system.Capabilities.screenDPI;
				if (_scaleFactor > DPI_THRESHOLD) {
					_scaleFactor /= DPI_THRESHOLD;
				} else {
					_scaleFactor = 1;
				}
			} else {
				_scaleFactor = 1;
			}
		}
		return _scaleFactor;
	}
	private static function set_scaleFactor(value:Float):Float {
		_scaleFactor = value;
		return value;
	}
	
}