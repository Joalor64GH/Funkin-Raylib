package engine;

import engine.interfaces.IBasic;

class Basic implements IBasic {
	public var ID:Int = 0;

	/**
	 * Whether or not this object is alive.
	 */
	public var alive:Bool = true;

	@:noCompletion
	private function get_alive():Bool {
		return alive;
	}
	@:noCompletion
	private function set_alive(v:Bool):Bool {
		return alive = v;
	}

	public function new() {}

	public function update(elapsed:Float) {}
	public function draw() {}

	public function kill() {
		alive = false;
	}

	public function revive() {
		alive = true;
	}

	public function destroy() {
		alive = false;
	}
}
