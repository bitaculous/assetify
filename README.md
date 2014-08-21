[Assetify]
==========

**“All your assets are belong to us”**

Assetify is our package for [Sprockets], a Rack-based asset packaging system, with common libraries we need for our
projects at [Bitaculous].

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

Installation
------------

1. Add Assetify to your Gemfile:

    ```
    group :assets do
      gem 'assetify', github: 'bitaculous/assetify'
    end
    ```

2. Run `bundle install`

Usage
-----

### CSS

#### [normalize.css]

First, import normalize:

```sass
@import normalize
```

The most basic option is simply:

```sass
@include normalize
```

which includes the “full package”.

Or include only specific parts:

```sass
@include base
@include html5-display-definitions
@include links
@include text-level-semantics
@include embedded-content
@include grouping-content
@include forms
@include tables
```

#### [reset.css]

First, import reset:

```sass
@import reset
```

Second, include it:

```sass
@include reset
```

#### [Sass Media Queries]

Just import Sass Media Queries:

```sass
@import media_queries
```

and you're ready to [roll].

### JavaScript

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

#### [Velocity]

```coffeescript
#= require velocity
```

```coffeescript
#= require velocity/ui
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

Credits
-------

### Assetify uses the following libraries:

#### CSS

* [normalize.css]
* [reset.css]
* [Sass Media Queries]

#### JavaScript

* [Detect.js]
* [jQuery]
* [Modernizr]
* [Velocity]
* [yepnope]

##### jQuery Plugins

* [Waypoints]

##### Polyfills

* [Console]
* [FastClick]

### Assetify uses the following gems:

* [Bourbon]
* [Sprockets]

Bug reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

Assetify is released under the [MIT License (MIT)], see [LICENSE].

[Assetify]: http://bitaculous.github.io/assetify "“All your assets are belong to us”"
[Bitaculous]: http://bitaculous.com "It's all about the bits, baby!"
[Bourbon]: http://bourbon.io "A simple and lightweight mixin library for Sass."
[Console]: https://github.com/h5bp/html5-boilerplate/blob/master/src/js/plugins.js "Avoid `console` errors in browsers that lack a console."
[Detect.js]: https://github.com/darcyclarke/Detect.js "JS Library to detect browser, os and device based on the UserAgent string."
[FastClick]: https://github.com/ftlabs/fastclick "Polyfill to remove click delays on browsers with touch UIs."
[Gemnasium]: https://gemnasium.com/bitaculous/assetify "Assetify at Gemnasium"
[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/assetify.svg?style=flat "Gemnasium Status"
[here]: https://github.com/bitaculous/assetify/issues "Github Issues"
[jQuery]: http://jquery.com "The Write Less, Do More, JavaScript Library."
[LICENSE]: https://raw.githubusercontent.com/bitaculous/assetify/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Modernizr]: http://modernizr.com "Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser."
[normalize.css]: http://necolas.github.io/normalize.css "normalize.css"
[reset.css]: http://meyerweb.com/eric/tools/css/reset "reset.css"
[roll]: http://paranoida.github.io/sass-mediaqueries "Sass Media Queries"
[Sass Media Queries]: http://paranoida.github.io/sass-mediaqueries "Sass Media Queries"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Sprockets]: https://github.com/sstephenson/sprockets "Rack-based asset packaging system"
[Travis CI]: https://travis-ci.org/bitaculous/assetify "Assetify at Travis CI"
[Travis CI Status]: http://img.shields.io/travis/bitaculous/assetify.svg?style=flat "Travis CI Status"
[Velocity]: http://velocityjs.org "Accelerated JavaScript animation."
[Waypoints]: http://imakewebthings.com/jquery-waypoints "Waypoints is a jQuery plugin that makes it easy to execute a function whenever you scroll to an element."
[yepnope]: http://yepnopejs.com "yepnope is an asynchronous conditional resource loader that's super-fast, and allows you to load only the scripts that your users need."