# [Template Engine Consolidation](http://github.com/visionmedia/consolidate.js/) for [DocPad](https://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/RobLoach/docpad-plugin-consolidate.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-consolidate "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-consolidate.png)](https://npmjs.org/package/docpad-plugin-consolidate "View this project on NPM")
[![Dependency Status](https://david-dm.org/RobLoach/docpad-plugin-consolidate.png?theme=shields.io)](https://david-dm.org/RobLoach/docpad-plugin-consolidate)<br/>
[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

<!-- /BADGES -->


Adds support for a [number of template engines](https://github.com/visionmedia/consolidate.js/#supported-template-engines)
to [DocPad](https://docpad.org), using [Consolidate.js](http://github.com/visionmedia/consolidate.js).

**Convention:**
```
.anything.(atpl|dust|eco|ect|ejs|haml|haml-coffee|handlebars|hogan|jade|jazz|jqtpl|just|liquor|lodash|mustache|qejs|ractive|swig|templayed|toffee|underscore|walrus|whiskers)
```


<!-- INSTALL/ -->

## Install

``` bash
docpad install consolidate
```

<!-- /INSTALL -->


## Usage

1. Install the library for the [desired template engine](https://github.com/visionmedia/consolidate.js/#supported-template-engines):
	``` bash
	npm install --save ejs
	```

2. Use the template engine in a file such as *src/documents/test.html.ejs*:
	``` html
	---
	title: EJS
	---
	<p>This is <%= document.title %></p>
	```


## Configure

It is possible to toggle which [supported template engines](https://github.com/visionmedia/consolidate.js/#supported-template-engines)
are rendered using [Consolidate.js](http://github.com/visionmedia/consolidate.js/),
by editing your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
plugins:
	consolidate:
		atpl: true
		dot: true
		dust: true
		eco: true
		ect: true
		ejs: true
		haml: true
		'haml-coffee': true
		handlebars: true
		hogan: true
		jade: true
		jazz: true
		jqtpl: true
		just: true
		liquor: true
		lodash: true
		mote: true
		mustache: true
		nunjucks: true
		qejs: true
		ractive: true
		swig: true
		templayed: true
		toffee: true
		underscore: true
		walrus: true
		whiskers: true
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/RobLoach/docpad-plugin-consolidate/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/RobLoach/docpad-plugin-consolidate/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (http://github.com/RobLoach)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

### Contributors

These amazing people have contributed code to this project:

- [Rob Loach](http://github.com/RobLoach) — [view contributions](https://github.com/RobLoach/docpad-plugin-consolidate/commits?author=RobLoach)

[Become a contributor!](https://github.com/RobLoach/docpad-plugin-consolidate/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://github.com/RobLoach)

<!-- /LICENSE -->


