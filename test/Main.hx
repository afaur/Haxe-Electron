package test;

import buddy.*;
using buddy.Should;
using Std;

using basic.Copy;

class Main implements Buddy<[Tests]> {}

class Tests extends BuddySuite {
	public function new() {
		describe("Clipboard", {

			var basicObject : Dynamic = { value: 'somevalue' };
			var element : Dynamic = { addEventListener: function(n, m) {} };
			var clipboardValue : String = "";
			var clipboard : Dynamic = {
				writeText: function(val) {
					clipboardValue = val;
				}
			};

			it("Kupi", {
				var copy = new Copy(basicObject,element,clipboard);
				copy.kupi();
				clipboardValue.should.be('somevalue');
			});
		});
	}
}

