[Assetify]
==========

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Code Climate Status][Code Climate Status]][Code Climate]
[![Test Coverage Status][Test Coverage Status]][Test Coverage]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Assets used by Bitaculous, packaged for [Bower], [npm], [Sass] and [Sprockets].**

Assetify is our package for Bower, npm, Sass and Sprockets, with common libraries we use at [Bitaculous].

Installation
------------

### Bower

Run `bower install bitaculous/assetify`.

### npm

Run `npm install bitaculous/assetify`.

### Sprockets

1. Add Assetify to your Gemfile:

    ```ruby
    gem 'bitaculous-assetify', github: 'bitaculous/assetify'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

### Sass / CSS via Sprockets

#### [normalize.css]

The most basic option is simply:

```sass
@import normalize
```

which includes the “Default package”.

Or import only specific parts:

##### Default package

```sass
@import normalize/base
@import normalize/html5_display_definitions
@import normalize/links
@import normalize/text_level_semantics
@import normalize/embedded_content
@import normalize/grouping_content
@import normalize/forms
@import normalize/tables
```

##### Additional imports

```sass
@import normalize/box_sizing
```

#### [reset.css]

Import reset:

```sass
@import reset
```

#### [Sass Media Queries]

Just import Sass Media Queries:

```sass
@import media-queries
```

and you're ready to [roll].

### CoffeeScript / JavaScript via Sprockets

#### [Detect.js]

```coffeescript
#= require detect
```

#### [jQuery]

```coffeescript
#= require jquery
```

#### [Modernizr]

```coffeescript
#= require modernizr
```

#### [Salvattore]

```coffeescript
#= require salvattore
```

#### [Velocity]

```coffeescript
#= require velocity
```

```coffeescript
#= require velocity/ui
```

#### [Waypoints]

```coffeescript
#= require waypoints
```

#### [yepnope]

```coffeescript
#= require yepnope
```

##### jQuery Plugins

###### Browser

```coffeescript
#= require jquery/plugins/browser
```

###### Detector

```coffeescript
#= require jquery/plugins/detector
```

###### [hoverIntent]

```coffeescript
#= require jquery/plugins/hover_intent
```

###### Printify

```coffeescript
#= require jquery/plugins/printify
```

###### [Waypoints]

```coffeescript
#= require jquery/plugins/waypoints
```

#### Polyfills

##### [Console]

```coffeescript
#= require polyfills/console
```

##### [FastClick]

```coffeescript
#= require polyfills/fastclick
```

Build
-----

### [Modernizr]

1. Update Modernizr through npm

2. Update / modify the Modernizr configuration

3. Run `rake build:modernizr` or `rake 'build:modernizr[true]'` (minifies the output) to build a new version

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### See Test Coverage

Run `COVERAGE=true rspec`.

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

Credits
-------

### Assetify uses the following libraries:

#### Cascading Style Sheets

* [Bourbon]
* [Breakpoint]
* [Modular Scale]
* [normalize.css]
* [reset.css]
* [Sass Media Queries]
* [Sassy Maps]

#### JavaScript

* [Detect.js]
* [jQuery]
* [Modernizr]
* [Salvattore]
* [Velocity]
* [Waypoints]
* [yepnope]

##### jQuery

* [hoverIntent]
* [Waypoints]

##### Polyfills

* [Console]
* [FastClick]

License
-------

Assetify is released under the [MIT License (MIT)], see [LICENSE].

[Assetify]: https://bitaculous.github.io/assetify/ "Assets used by Bitaculous, packaged for Bower, npm, Sass and Sprockets."
[Bitaculous]: https://bitaculous.com "It's all about the bits, baby!"
[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Bourbon]: http://bourbon.io "A simple and lightweight mixin library for Sass"
[Bower]: http://bower.io "A package manager for the web"
[Breakpoint]: https://github.com/at-import/breakpoint "Really Simple Media Queries with Sass"
[Code Climate]: https://codeclimate.com/github/bitaculous/assetify "Assetify at Code Climate"
[Code Climate Status]: https://img.shields.io/codeclimate/github/bitaculous/assetify.svg?style=flat "Code Climate Status"
[Console]: https://github.com/h5bp/html5-boilerplate/blob/master/src/js/plugins.js "Avoid `console` errors in browsers that lack a console"
[Detect.js]: https://github.com/darcyclarke/Detect.js "JS Library to detect browser, os and device based on the UserAgent string"
[FastClick]: https://github.com/ftlabs/fastclick "Polyfill to remove click delays on browsers with touch UIs"
[Gemnasium]: https://gemnasium.com/bitaculous/assetify "Assetify at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/assetify.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/assetify/issues "Github Issues"
[hoverIntent]: https://github.com/briancherne/jquery-hoverIntent "HoverIntent is a plug-in that attempts to determine the user's intent... like a crystal ball, only with mouse movement!"
[jQuery]: https://jquery.com "The Write Less, Do More, JavaScript Library."
[LICENSE]: https://raw.githubusercontent.com/bitaculous/assetify/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Modernizr]: http://modernizr.com "A JavaScript library that detects HTML5 and CSS3 features in the user’s browser"
[Modular Scale]: https://github.com/Team-Sass/modular-scale "Modular scale calculator built into your Sass"
[normalize.css]: http://necolas.github.io/normalize.css "A modern, HTML5-ready alternative to CSS resets"
[npm]: https://www.npmjs.com "A package manager for JavaScript"
[reset.css]: http://meyerweb.com/eric/tools/css/reset "Reset CSS"
[roll]: http://paranoida.github.io/sass-mediaqueries "Sass Media Queries"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Salvattore]: http://salvattore.com "A jQuery Masonry alternative with CSS-driven configuration"
[Sass]: http://sass-lang.com "Syntactically Awesome Style Sheets"
[Sass Media Queries]: http://paranoida.github.io/sass-mediaqueries "A collection of useful media queries mixins (including iOS devices like iPhones and iPads) for Sass"
[Sassy Maps]: https://github.com/Team-Sass/Sassy-Maps "Map helper functions for Sass 3.3 Maps including get-deep and set/set-deep"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Sprockets]: https://github.com/rails/sprockets "Rack-based asset packaging"
[Test Coverage]: https://codeclimate.com/github/bitaculous/assetify "Test Coverage (Code Climate)"
[Test Coverage Status]: https://img.shields.io/codeclimate/coverage/github/bitaculous/assetify.svg?style=flat "Test Coverage Status"
[Travis CI]: https://travis-ci.org/bitaculous/assetify "Assetify at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/assetify.svg?style=flat "Travis CI Status"
[Velocity]: http://velocityjs.org "Accelerated JavaScript animation"
[Waypoints]: http://imakewebthings.com/waypoints "A library that makes it easy to execute a function whenever you scroll to an element."
[yepnope]: http://yepnopejs.com "An asynchronous conditional resource loader that's super-fast, and allows you to load only the scripts that your users need"