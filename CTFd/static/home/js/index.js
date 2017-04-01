var AnimationFrame = require('animation-frame');
AnimationFrame.shim();
var elementClass = require('element-class');

module.exports = {

	prepareElement: function(element) {

		// grab the text (as long as it doesn't have (&), (<), or (>) - see https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML)
		var text = element.innerHTML;

		// split text into characters
		var characters = text.split('');

		var spans = '';

		for (var i = 0; i < characters.length; i++) {

			spans += '<span' + (characters[i] === ' ' ? ' class="whitespace"' : '') + '>' + characters[i] + '</span>';
		}

		element.innerHTML = spans;
	},

	prepare: function(selector) {

		var elements = document.querySelectorAll(selector);

		for (var i = 0; i < elements.length; i++) {
			this.prepareElement(elements[i]);
		}
	},

	toggleType: function(mode, selector, options) {

		return new Promise(function(resolve, reject) {

			var opts = {};
			options = options || {};

			// wait 10 ms before typing - not exactly sure why i have to do this :(
			setTimeout(function() {

				var children = document.querySelectorAll(selector + ' span');

				if (mode === "untype") {

					// reverse children
					children = Array.prototype.slice.call(children).reverse();

					// give 'show' class to all children immediately
					for (var j = 0; j < children.length; j++) {
						elementClass(children[j]).add('show');
					}

				}

				// use delay if present,
				// otherwise use duration if present,
				// otherwise provide default delay
				opts.delay = options.delay ? options.delay :
					options.duration ? options.duration / children.length :
					50;

				var i = 0;
				var rAF;

				function typeCharacter() {

					setTimeout(function() {

						// TODO: options.duration doesn't really work
						// atm it's limited by device refresh rate, e.g. 60
						// rewrite this to look at time delta since last call
						rAF = requestAnimationFrame(typeCharacter);

						if (i < children.length) {

							if (mode === "type") {
								elementClass(children[i]).add('show');
							} else {
								elementClass(children[i]).remove('show');
							}

						} else {

							cancelAnimationFrame(rAF);
							resolve();
						}

						i++;

					}, opts.delay);
				}

				typeCharacter();

			}, 10);

		});

	},

	type: function(selector, options) {

		return this.toggleType('type', selector, options);
	},

	untype: function(selector, options) {

		return this.toggleType('untype', selector, options);
	}
};
