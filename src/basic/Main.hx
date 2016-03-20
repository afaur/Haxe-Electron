package basic;

import electron.main.App;
import electron.main.BrowserWindow;
import electron.main.GlobalShortcut;
import electron.common.CrashReporter;
import js.Node.*;

class Main {

	static function main() {

		CrashReporter.start({
			companyName : "hxelectron (not a company)",
			submitURL : "https://github.com/fponticelli/hxelectron/issues",
		});

		App.on( window_all_closed, function() {
			App.quit();
		});

		var mainWindow = null;
		var resultsWindow = null;

		App.on( ready, function() {

			var width  = Math.floor(800 / 2);
			var height = Math.floor(600 / 2);

			mainWindow = new BrowserWindow({
				x: width, y: height, center: false,
				frame: false, show: false, resizable: false,
				width: 600, height: 70
			});
			mainWindow.loadURL( 'file://' + __dirname + '/app.html' );
			mainWindow.on( closed, function() mainWindow = null );

			resultsWindow = new BrowserWindow({
				x: width, y: (height + 70), center: false,
				frame: false, show: false, resizable: false,
				width: 600, height: 200
			});
			resultsWindow.loadURL( 'file://' + __dirname + '/results.html' );
			resultsWindow.on( closed, function() resultsWindow = null );

			GlobalShortcut.register('ctrl+x', function() {
				if (mainWindow.isVisible()) {
					mainWindow.hide();
					resultsWindow.hide();
				} else {
					mainWindow.show();
					resultsWindow.show();
				}
			});

		});
	}
}

