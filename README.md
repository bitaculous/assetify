[Assetify]
==========

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Code Climate Status][Code Climate Status]][Code Climate]

**Assets used by Bitaculous, packaged for [Bower], [npm], [Sass] and [Sprockets].**

Assetify is our package for Bower, npm, Sass and Sprockets, with common libraries we use at [Bitaculous].

Installation
------------

### Bower

Run `bower install bitaculous/assetify`

### npm

Run `npm install bitaculous/assetify`

### Sprockets

1. Add Assetify to your Gemfile:

    ```ruby
    gem 'bitaculous-assetify', github: 'bitaculous/assetify'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

### Sass / CSS via Sprockets

```sass
@import bitaculous/assetify
```

[Bourbon], [Media Queries], [Breakpoint], [Modular Scale], [Rem] and [Sassy Maps] are automaticly imported.

#### [normalize.css]

The most basic option is simply:

```sass
@import normalize
```

which includes the default package.

Or import only specific parts:

##### Default package

```sass
@import normalize/document
@import normalize/sections
@import normalize/grouping_content
@import normalize/text_level_semantics
@import normalize/embedded_content
@import normalize/forms
@import normalize/interactive
@import normalize/misc
```

##### Additional imports

```sass
@import normalize/box_sizing
@import normalize/legacy
@import normalize/opinionated
@import normalize/tables
```

#### [reset.css]

Import reset:

```sass
@import reset
```

Building
--------

### [Modernizr]

1. Update / modify the Modernizr configuration

2. Run `rake build:modernizr` or `rake 'build:modernizr[true]'` (minifies the output) to build a new version

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
* [Media Queries]
* [Modular Scale]
* [normalize.css]
* [Rem]
* [reset.css]
* [Sassy Maps]

#### JavaScripts

* [Modernizr]

License
-------

Assetify is released under the [MIT License (MIT)], see [LICENSE].

[Assetify]: https://bitaculous.github.io/assetify/ "Assets used by Bitaculous, packaged for Bower, npm, Sass and Sprockets."
[Bitaculous]: https://bitaculous.com "It's all about the bits, baby!"
[Bourbon]: http://bourbon.io "A simple and lightweight mixin library for Sass"
[Bower]: http://bower.io "A package manager for the web"
[Breakpoint]: https://github.com/at-import/breakpoint "Really Simple Media Queries with Sass"
[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Code Climate]: https://codeclimate.com/github/bitaculous/assetify/maintainability "Assetify at Code Climate"
[Code Climate Status]: https://api.codeclimate.com/v1/badges/a23a4786463ec458e836/maintainability "Code Climate Maintainability"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/assetify/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/assetify/master/LICENSE "License"
[Media Queries]: http://paranoida.github.io/sass-mediaqueries "A collection of useful Media Queries mixins for Sass (including iOS devices, TVs and more)."
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Modernizr]: http://modernizr.com "A JavaScript library that detects HTML5 and CSS3 features in the user’s browser"
[Modular Scale]: https://github.com/Team-Sass/modular-scale "Modular scale calculator built into your Sass"
[normalize.css]: http://necolas.github.io/normalize.css "A modern, HTML5-ready alternative to CSS resets"
[npm]: https://www.npmjs.com "A package manager for JavaScript"
[Rem]: https://github.com/pierreburel/sass-rem "Sass function and mixin to use rem units with optional pixel fallback."
[reset.css]: http://meyerweb.com/eric/tools/css/reset "Reset CSS"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Sass]: http://sass-lang.com "Syntactically Awesome Style Sheets"
[Sassy Maps]: https://github.com/Team-Sass/Sassy-Maps "Map helper functions for Sass 3.3 Maps including get-deep and set/set-deep"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Sprockets]: https://github.com/rails/sprockets "Rack-based asset packaging"
[Test Coverage]: https://codeclimate.com/github/bitaculous/assetify/test_coverage "Test Coverage"
[Test Coverage Status]: https://api.codeclimate.com/v1/badges/a23a4786463ec458e836/test_coverage "Code Climate Test Coverage"
[Travis CI]: https://travis-ci.org/bitaculous/assetify "Assetify at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/assetify.svg?style=flat "Travis CI Status"
[Waypoints]: http://imakewebthings.com/waypoints "A library that makes it easy to execute a function whenever you scroll to an element."