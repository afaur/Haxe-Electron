package test;

import buddy.*;
using buddy.Should;
using Std;

using basic.util.Point;

class Main implements Buddy<[Tests]> {}

class Tests extends BuddySuite {
	public function new() {
		describe("Creating a new point with values [1,2].", {
			it("Calling getCoords should return 1,2", {
				var point = new Point([1,2]);
				point.getCoords().should.be("1,2");
			});
		});
	}
}

