var buttons = document.getElementsByTagName('button'),
	audios = document.getElementsByTagName('audio');

for( var i = 0; i < buttons.length; i++ ) {
	buttons[i].onclick = function() {
		document.getElementById('word_' + this.dataset.id).play();
	};
}
