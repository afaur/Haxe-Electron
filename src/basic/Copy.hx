package basic;

class Copy {
	var input : Dynamic;
	var clipboard : Dynamic;

	public function new(input, button, ?clipboard) {
		this.input = input;
		this.clipboard = clipboard;
		if (this.clipboard == null) {
			#if js
				this.clipboard = electron.common.Clipboard;
			#end
		}
		button.addEventListener('click', this.kupi);
	}

	public function kupi() {
		this.clipboard.writeText(input.value);
		input.value = '';
	}

}
