  package jp_2dgames.lib;

  import flixel.math.FlxRandom;
  import flixel.math.FlxPoint;
  import flixel.FlxG;
  /**
   * ２次元マップクラス 2维数组类管理
   * @author syun
   */
class Layer2D {
  public var m_Default:Int = 0; // デフォルト値 缺省值
  public var m_OutOfRange:Int = -1; // 範囲外を指定した際のエラー値 指定范围时的错误值
  private var _width:Int;
  private var _height:Int;
  private var _pool:Map<Int,Int>;
  // 幅 宽度
  public var width(get, never):Int;
  private function get_width() {
    return _width;
  }
  // 高さ 高度
  public var height(get, never):Int;
  private function get_height() {
    return _height;
  }
  // マップ情報 地图信息
  public var pool(get, never):Map<Int,Int>;
  private function get_pool():Map<Int, Int> {
    return _pool;
  }

  /**
   * コンストラクタ 初期化
   * @param w 幅
   * @param h 高さ
   */
  public function new(w:Int = 0, h:Int = 0) {
    if(w > 0 && h > 0) {
      initialize(w, h);
    }
  }

  /**
   * 初期化
   **/
  public function initialize(w:Int, h:Int):Void {
    _pool = new Map<Int, Int>();
    _width = w;
    _height = h;
  }

  /**
   * 指定のレイヤーから情報をコピーする 从指定的图层拷贝情报
   **/
  public function copy(layer:Layer2D):Void {
    initialize(layer.width, layer.height);
    var func = function(i, j, v) {
      set(i, j, v);
    }
    layer.forEach(func);
  }

  /**
   * 指定のレイヤーへ情報をコピーする
   **/
  public function copyTo(layer:Layer2D):Void {
    layer.initialize(_width, _height);
    var func = function(i, j, v) {
      layer.set(i, j, v);
    }
    forEach(func);
  }

  public function copyRectDestination(layer:Layer2D, destX:Int, destY:Int, srcX:Int = 0, srcY:Int = 0, srcW:Int = 0, srcH:Int = 0):Void {
    if(srcW <= 0) { srcW = layer.width; }
    if(srcH <= 0) { srcH = layer.height; }

    if(srcW == layer.width && srcH == layer.height) {
      // 高速コピー
      for(idx in layer.pool.keys()) {
        var i = idx % layer.width;
        var j = Math.floor(idx / layer.width);
        var v = layer.pool[idx];
        set(destX + i, destY + j, v);
      }
    }
    else {
      // 通常コピー
      for(j in 0...srcH) {
        for(i in 0...srcW) {
          var v = layer.get(srcX + i, srcY + j);
          set(destX + i, destY + j, v);
        }
      }
    }

  }

  /**
   * 有効な範囲かどうかチェックする检查是否有效的范围
   * @param	x
   * @param	y
   * @return
   */
  public function check(x:Int, y:Int):Bool {
    if(x < 0) { return false; }
    if(x >= _width) { return false; }
    if(y < 0) { return false; }
    if(y >= _height) { return false; }
    return true;
  }

  /** toIdx()
   * (x,y)の指定を一次元のインデックスに変換する 将（x，y）的名称转换为一维索引
   * @param	x
   * @param	y
   * @return int
   */
  public function toIdx(x:Int, y:Int):Int {
    return x + y * _width;
  }

/** 
  *  idxToX()
   * 将1维索引转换成x
   *  得出余数就是x
   * @param	idx
   * @return int
   */
  public function idxToX(idx:Int):Int {
    //trace(idx  );trace( _width);trace(idx % _width);
    return idx % _width;
  }
/** 
   *  idxToY()
   * 将1维索引转换成y
   * @param	idx
   * @return int
   */
  public function idxToY(idx:Int):Int {
    //trace(Std.int(idx / _width));
    return Std.int(idx / _width);
  }

  public function get(x:Int, y:Int):Int {
    if(check(x, y) == false) {
      // 範囲外
      return m_OutOfRange;
    }

    var idx:Int = toIdx(x, y);
    return getIdx(idx);
  }

  public function getIdx(idx:Int):Int {
    if(_pool.exists(idx)) {
      return _pool[idx];
    }
    return m_Default;
  }

  public function set(x:Int, y:Int, val:Int):Void {
    if(check(x, y) == false) { return; }
    var idx:Int = toIdx(x, y);
    _pool[idx] = val;
  }
  public function setFromFlxPoint(pt:FlxPoint, val:Int):Void {
    var x:Int = Std.int(pt.x);
    var y:Int = Std.int(pt.y);
    set(x, y, val);
  }

  public function exists(v:Int):Bool {
    return count(v) > 0;
  }

  /**
   * 指定の値が存在する座標を返す
   * @param v 検索する値
   * @return 座標を表す二次元ベクトル
   **/
  public function search(v:Int):FlxPoint {
    for(idx in _pool.keys()) {
      var val = _pool.get(idx);
      if(val == v) {
        var x:Int = idxToX(idx);
        var y:Int = idxToY(idx);
        return FlxPoint.get(x, y);
      }
    }
    return null;
  }

  /**
   * 指定の値が存在する座標をランダムで返す指定的值存在的坐标
   * @return 見つからなかったら null
   **/
  public function searchRandom(v:Int):FlxPoint {
    var arr = [];
    forEach2(function(idx, val) {
      if(val == v) {
        arr.push(idx);
      }
    });

    if(arr.length == 0) {
      return null;
    }

    var idx = arr[FlxG.random.int(0, arr.length-1)];
    var p = FlxPoint.get();
    p.x = idxToX(idx);
    p.y = idxToY(idx);

    return p;
  }

  /**
   * 指定の値をデフォルトの値ですべて消す
   **/
  public function eraseAll(val:Int):Void {
    forEach(function(i, j, v) {
      if(v == val) {
        set(i, j, m_Default);
      }
    });
  }

  /**
   * 指定の値が存在する数を返す
   * @param v 検索する値
   * @return 存在する数
   **/
  public function count(v:Int):Int {
    var ret:Int = 0;
    for(idx in _pool.keys()) {
      var val = _pool.get(idx);
      if(val == v) {
        ret++;
      }
    }
    return ret;
  }

  /**
   * レイヤー内の値を順番に走査する
   * ※引数は(i, j, v)
   **/
  public function forEach(Function:Int -> Int -> Int -> Void):Void {
    for(j in 0...height) {
      for(i in 0...width) {
        var v:Int = get(i, j);
        Function(i, j, v);
      }
    }
  }

  public function forEach2(Function:Int -> Int -> Void):Void {
    for(idx in 0...(width * height)) {
      var v = getIdx(idx);
      Function(idx, v);
    }
  }

  /**
   * デバッグ出力
   **/
  public function dump():Void {
    trace("<<Layer2D>> (width, height)=(" + _width + ", " + _height + ")");
    for(j in 0..._height) {
      var s:String = "";
      for(i in 0..._width) {
        s += TextUtil.fillSpace(get(i, j), 3);
      }
      trace(s);
    }
  }

  /**
   * マップ情報をCSV文字列として取得する
   **/
  public function getCsv():String {
    var buf = new StringBuf();
    var func = function(i:Int, j:Int, v:Int) {
      if(i > 0 || j > 0) {
        buf.add(",");
      }
      buf.add(v);
    }
    forEach(func);

    return buf.toString();
  }

  /**
   * CSV文字列からマップ情報を設定する
   **/
  public function setCsv(w:Int, h:Int, csv:String) {
    initialize(w, h);
    var idx:Int = 0;
    for(v in csv.split(",")) {
      var x = idxToX(idx);
      var y = idxToY(idx);
      set(x, y, Std.parseInt(v));
      idx++;
    }
  }
}
