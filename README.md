# [Consolidate.js](http://github.com/visionmedia/consolidate.js/) Plugin for [DocPad](https://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-consolidate.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-consolidate "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-consolidate.png)](http://badge.fury.io/js/docpad-plugin-consolidate "View this project on NPM")
[![Gittip button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Support this project using Gittip")
[![Flattr button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Support this project using Flattr")
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RobLoach/docpad-plugin-consolidate/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

<!-- /BADGES -->


Adds support for a [number of template engines](https://github.com/visionmedia/consolidate.js/#supported-template-engines)
to [DocPad](https://docpad.org).

Convention:
```
.anything.(atpl|dust|eco|ect|ejs|haml|haml-coffee|handlebars|hogan|jade|jazz|jqtpl|just|liquor|lodash|mustache|qejs|ractive|swig|templayed|toffee|underscore|walrus|whiskers)
```


## Install

1. Install the plugin:
``` bash
docpad install consolidate
```

2. Install the library for the desired template engine:
``` bash
npm install --save underscore
```

3. Use the template engine in a file such as *src/documents/test.html.underscore*:
``` html
<p>Welcome to <%- site.title %></p>
```


## Configure

It is possible to toggle which [supported template engines](https://github.com/visionmedia/consolidate.js/#supported-template-engines)
are rendered by Consolidate.js, by editing your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
plugins:
  consolidate:
    atpl: true
    dust: true
    dot: true
    eco: true
    ect: true
    ejs: true
    haml: true
    handlebars: true
    hogan: true
    jade: true
    jazz: true
    jqtpl: true
    just: true
    liquor: true
    lodash: true
    mustache: true
    qejs: true
    ractive: true
    swig: true
    templayed: true
    toffee: true
    underscore: true
    walrus: true
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-sass/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-sass/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (https://github.com/robloach)

### Contributors

These amazing people have contributed code to this project:

- Rob Loach (https://github.com/robloach) - [view contributions](https://github.com/RobLoach/docpad-plugin-consolidate/commits?author=RobLoach)

[Become a contributor!](https://github.com/docpad/docpad-plugin-sass/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)

<!-- /LICENSE -->
