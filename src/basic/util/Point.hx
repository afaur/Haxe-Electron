package basic.util;

class Point
{
	public var x : Int;
	public var y : Int;

	// Takes an array (x,y) and makes a point.
	public function new(point:Array<Int>) {
		this.x = point[0];
		this.y = point[1];

		trace(
			" X: ", x,
			" Y: ", y
		);
	}

	public function getCoords() {
		return "" + this.x + "," + this.y;
	}
}

