@:native("test.MathOperation")
extern class MathOperation {
	public static extern inline overload function perform(op:Int->Int, value:Int) {
		return op(value);
	}

	public static extern inline overload function perform(op:Int->Int->Int, value:Int) {
		return op(value, value);
	}
}

class Run {
	static function main() {
		trace(MathOperation.perform(double, 2));
		trace(MathOperation.perform(multiply, 2));
	}

	static function double(a):Int {
		return a * 2;
	}

	static function multiply(a, b):Int {
		return a * b;
	}
}
