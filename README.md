[Assetify]
==========

**“All your assets are belong to us”**

Assetify is our package for [Sprockets], the Rack-based asset packaging system, with libraries we need for our projects
at [Bitaculous].

[![Travis CI Status](https://travis-ci.org/bitaculous/assetify.svg)](http://travis-ci.org/bitaculous/assetify)
[![Gemnasium Status](https://gemnasium.com/bitaculous/assetify.svg)](https://gemnasium.com/bitaculous/assetify)

Installation
------------

1. Add assetify to your Gemfile:

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

#### [yepnope]

```coffeescript
#= require yepnope
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

Assetify uses the following libraries:

### CSS

* [normalize.css]
* [reset.css]
* [Sass Media Queries]

### JavaScript

* [Detect.js]
* [jQuery]
* [Modernizr]
* [yepnope]

#### Polyfills

* [Console]
* [FastClick]

Bug Reports
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

Assetify is released under the MIT License (MIT), see [LICENSE].

[Assetify]: http://bitaculous.github.io/assetify "“All your assets are belong to us”"
[Bitaculous]: http://bitaculous.com "It's all about the bits, baby!"
[Console]: https://github.com/h5bp/html5-boilerplate/blob/master/js/plugins.js "Avoid `console` errors in browsers that lack a console."
[Detect.js]: https://github.com/darcyclarke/Detect.js "JS Library to detect browser, os and device based on the UserAgent string."
[FastClick]: https://github.com/ftlabs/fastclick "Polyfill to remove click delays on browsers with touch UIs."
[here]: https://github.com/bitaculous/assetify/issues "Github Issues"
[jQuery]: http://jquery.com "The Write Less, Do More, JavaScript Library."
[LICENSE]: https://raw.githubusercontent.com/bitaculous/assetify/master/LICENSE "License"
[Modernizr]: http://modernizr.com "Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser."
[normalize.css]: http://necolas.github.io/normalize.css "normalize.css"
[reset.css]: http://meyerweb.com/eric/tools/css/reset "reset.css"
[roll]: http://paranoida.github.io/sass-mediaqueries "Sass Media Queries"
[Sass Media Queries]: http://paranoida.github.io/sass-mediaqueries "Sass Media Queries"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Sprockets]: https://github.com/sstephenson/sprockets "Sprockets: Rack-based asset packaging"
[yepnope]: http://yepnopejs.com "yepnope is an asynchronous conditional resource loader that's super-fast, and allows you to load only the scripts that your users need."