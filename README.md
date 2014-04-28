[ASSETIFY](http://bitaculous.github.io/assetify "Assetify")
===========================================================

**“All your assets are belong to us” (“AYAABTU”)**

[![Travis CI Status](https://travis-ci.org/bitaculous/assetify.svg)](http://travis-ci.org/bitaculous/assetify) [![Gemnasium Status](https://gemnasium.com/bitaculous/assetify.svg)](https://gemnasium.com/bitaculous/assetify)

Installation
------------

1.  Add assetify to your Gemfile:

    ```
    group :assets do
      gem 'assetify', github: 'bitaculous/assetify'
    end
    ```

2.  Run `bundle install`

Usage
-----

### CSS

#### [normalize.css](http://necolas.github.io/normalize.css "normalize.css")

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

#### [reset.css](http://meyerweb.com/eric/tools/css/reset "reset.css")

First, import reset:

```sass
@import reset
```

Second, include it:

```sass
@include reset
```

#### [Sass Media Queries](http://paranoida.github.io/sass-mediaqueries "Sass Media Queries")

Just import Sass Media Queries:

```sass
@import media_queries
```

and you're ready to [roll](http://paranoida.github.io/sass-mediaqueries "Sass Media Queries").

### JavaScript

#### [jQuery](http://jquery.com "The Write Less, Do More, JavaScript Library.")

```coffeescript
#= require jquery
```

#### [Modernizr](http://modernizr.com "Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser.")

```coffeescript
#= require modernizr
```

#### [yepnope](http://yepnopejs.com "yepnope is an asynchronous conditional resource loader that's super-fast, and allows you to load only the scripts that your users need.")

```coffeescript
#= require yepnope
```

#### Polyfills

##### [Console](https://github.com/h5bp/html5-boilerplate/blob/master/js/plugins.js "Avoid `console` errors in browsers that lack a console.")

```coffeescript
#= require polyfills/console
```

Credits
-------

Assetify uses the following libraries:

### CSS

* [normalize.css](http://necolas.github.io/normalize.css "normalize.css")
* [reset.css](http://meyerweb.com/eric/tools/css/reset "reset.css")
* [Sass Media Queries](http://paranoida.github.io/sass-mediaqueries "Sass Media Queries")

### JavaScript

* [jQuery](http://jquery.com "The Write Less, Do More, JavaScript Library.")
* [Modernizr](http://modernizr.com "Modernizr is a JavaScript library that detects HTML5 and CSS3 features in the user’s browser.")
* [yepnope](http://yepnopejs.com "yepnope is an asynchronous conditional resource loader that's super-fast, and allows you to load only the scripts that your users need.")

#### Polyfills

* [Console](https://github.com/h5bp/html5-boilerplate/blob/master/js/plugins.js "Avoid `console` errors in browsers that lack a console.")

License
-------

Assetify is released under the MIT License (MIT), see [LICENSE](https://raw.githubusercontent.com/bitaculous/assetify/master/LICENSE "License").