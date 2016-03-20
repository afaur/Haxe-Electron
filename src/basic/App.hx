package basic;

import basic.Copy;
import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;

class App {

	static function main() {
		window.onload = function(){
			var button : Dynamic = document.getElementById('copy');
			var field : Dynamic = document.getElementById('q');
			field.focus();
			new Copy(field, button);
			//field.addEventListener('keydown', );
		}
	}
}

