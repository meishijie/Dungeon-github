package haxe.ui.toolkit.layout;

import haxe.ui.toolkit.core.base.HorizontalAlign;
import haxe.ui.toolkit.core.base.VerticalAlign;
import haxe.ui.toolkit.core.interfaces.IClonable;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;

class GridLayout extends Layout implements IClonable<Layout> {
	private var _columns:Int = 1;
	
	public function new() {
		super();
	}
	
	//******************************************************************************************
	// Getters/settings
	//******************************************************************************************
	@:clonable
	public var columns(get, set):Int;
	
	private function get_columns():Int {
		return _columns;
	}
	
	private function set_columns(value:Int):Int {
		_columns = value;
		return value;
	}
	
	//******************************************************************************************
	// ILayout
	//******************************************************************************************
	private override function resizeChildren():Void {
		super.resizeChildren();
		
		var columnWidths:Array<Float> = calcColumnWidths();
		var rowHeights:Array<Float> = calcRowHeights();
		var explicitWidths:Array<Bool> = calcExplicitWidths();
		var explicitHeights:Array<Bool> = calcExplicitHeights();
		var totalWidth:Float = 0;
		var totalHeight:Float = 0;
		
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentWidth > -1) {
				var ucx:Float = columnWidths[columnIndex];
				//child.width = (ucx * child.percentWidth) / 100; 
				if (explicitWidths[columnIndex] == false) {
					child.width = ucx;
				} else {
					child.width = (ucx * child.percentWidth) / 100; 
				}
			}
			
			if (child.percentHeight > -1) {
				var ucy:Float = rowHeights[rowIndex];
				if (explicitHeights[rowIndex] == false) {
					child.height = ucy;
				} else {
					child.height = (ucy * child.percentHeight) / 100; 
				}
			}
			
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		for (cx in columnWidths) {
			totalWidth += cx;
		}
		if (columnWidths.length > 1) {
			totalWidth += spacingX * (columnWidths.length - 1);
		}

		for (cy in rowHeights) {
			totalHeight += cy;
		}
		if (rowHeights.length > 1) {
			totalHeight += spacingY * (rowHeights.length - 1);
		}

		autoSize(totalWidth, totalHeight);
	}
		
	private override function repositionChildren():Void {
		super.repositionChildren();
		
		var columnWidths:Array<Float> = calcColumnWidths();
		var rowHeights:Array<Float> = calcRowHeights();
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		var xpos:Float = padding.left;
		var ypos:Float = padding.top;
		
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			var halign = child.horizontalAlign;
			var valign = child.verticalAlign;
			switch (halign) {
				case HorizontalAlign.CENTER:
					child.x = xpos + (columnWidths[columnIndex] - child.width) * 0.5;
				case HorizontalAlign.RIGHT:
					child.x = xpos + (columnWidths[columnIndex] - child.width);
				default: 
					child.x = xpos;
			}
			switch (valign) {
				case VerticalAlign.CENTER:
					child.y = ypos + (rowHeights[rowIndex] - child.height) * 0.5;
				case VerticalAlign.BOTTOM:
					child.y = ypos + (rowHeights[rowIndex] - child.height);
				default:
					child.y = ypos;
			}

			xpos += columnWidths[columnIndex] + spacingX;
			
			columnIndex++;
			if (columnIndex >= _columns) {
				xpos = padding.left;
				ypos += rowHeights[rowIndex] + spacingY;
				columnIndex = 0;
				rowIndex++;
			}
		}
	}
	
	//******************************************************************************************
	// Helper overrides
	//******************************************************************************************
	private override function get_usableWidth():Float {
		var ucx:Float = super.get_usableWidth();
		
		return ucx;
	}
	
	private override function get_usableHeight():Float {
		var ucy:Float = super.get_usableHeight();
		
		return ucy;
	}
	
	//******************************************************************************************
	// Helpers
	//******************************************************************************************
	private function calcExplicitWidths():Array<Bool> {
		var explicitWidths:Array<Bool> = new Array<Bool>();
		for (n in 0..._columns) {
			explicitWidths.push(false);
		}
		
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		for (child in container.children) {
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentWidth < 0 && child.width > 0) {
				explicitWidths[columnIndex] = true;
			}
			
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		return explicitWidths;
	}
	
	private function calcExplicitHeights():Array<Bool> {
		var visibleChildren = 0;
		for (c in container.children) {
			if (c.visible) {
				visibleChildren++;
			}
		}
		
		var rowCount:Int = Std.int((visibleChildren / _columns));
		if (visibleChildren % _columns != 0) {
			rowCount++;
		}
		var explicitHeights:Array<Bool> = new Array<Bool>();
		for (n in 0...rowCount) {
			explicitHeights.push(false);
		}
		
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		for (child in container.children) {
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentHeight < 0 && child.height > 0) {
				explicitHeights[columnIndex % _columns] = true;
			}
			
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		return explicitHeights;
	}
	
	private function calcColumnWidths():Array<Float> {
		var columnWidths:Array<Float> = new Array<Float>();
		for (n in 0..._columns) {
			columnWidths.push(0);
		}
		
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentWidth <= 0) {
				if (child.width > columnWidths[columnIndex]) {
					columnWidths[columnIndex] = child.width;
				}
			}
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		var copy = columnWidths.copy();
		
		rowIndex = 0;
		columnIndex = 0;
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentWidth > 0) {
				var ucx = usableWidth - ((columns - 1) * spacingX);
				for (n in 0...columnWidths.length) {
					if (n != columnIndex) {
						ucx -= copy[n];
					}
				}
				var cx:Float = (ucx * child.percentWidth) / 100;
				if (cx > columnWidths[columnIndex]) {
					columnWidths[columnIndex] = cx;
				}
			}
			
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		return columnWidths;
	}
	
	public function calcRowHeights():Array<Float> {
		
		var visibleChildren = 0;
		for (c in container.children) {
			if (c.visible) {
				visibleChildren++;
			}
		}
		
		var rowCount:Int = Std.int((visibleChildren / _columns));
		if (visibleChildren % _columns != 0) {
			rowCount++;
		}
		var rowHeights:Array<Float> = new Array<Float>();
		for (n in 0...rowCount) {
			rowHeights.push(0);
		}
		
		var rowIndex:Int = 0;
		var columnIndex:Int = 0;
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentHeight <= 0) {
				if (child.height > rowHeights[rowIndex]) {
					rowHeights[rowIndex] = child.height;
				}
			}
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		
		var copy = rowHeights.copy();
		
		rowIndex = 0;
		columnIndex = 0;
		for (child in container.children) {
			
			if (child.visible == false || child.includeInLayout == false) {
				continue; // ignore invisible.
			}
			
			if (child.percentHeight > 0) {
				var ucy = usableHeight - ((rowCount - 1) * spacingY);
				for (n in 0...rowHeights.length) {
					if (n != rowIndex) {
						ucy -= copy[n];
					}
				}

				var cy:Float = (ucy * child.percentHeight) / 100;
				if (cy > rowHeights[rowIndex] && _columns == 1) {
					rowHeights[rowIndex] = cy;
				} else if (ucy > rowHeights[rowIndex]) {					
					rowHeights[rowIndex] = ucy;
				}
			}
			columnIndex++;
			if (columnIndex >= _columns) {
				columnIndex = 0;
				rowIndex++;
			}
		}
		return rowHeights;
	}
}