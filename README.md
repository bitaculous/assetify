[ASSETIFY](http://bitaculous.github.io/assetify "Assetify")
===========================================================

**“All your assets are belong to us.”**

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

#### normalize.css

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

#### reset.css

First, import reset:

```sass
@import reset
```

Second, include it:

```sass
@include reset
```

Credits
-------

Assetify uses the following libraries:

### CSS

* [normalize.css](http://necolas.github.io/normalize.css "normalize.css")
* [reset.css](http://meyerweb.com/eric/tools/css/reset "reset.css")
* [Sass Media Queries](http://paranoida.github.io/sass-mediaqueries "Sass Media Queries")

### JavaScript

* [jQuery](http://jquery.com "jQuery")
* [Modernizr](http://modernizr.com "Modernizr")
* [yepnope](http://yepnopejs.com "yepnope")

Code Status
-----------

[<img src="https://travis-ci.org/bitaculous/assetify.svg" title="Travis CI Status" alt="Travis CI Status" />](http://travis-ci.org/bitaculous/assetify)
[<img src="https://gemnasium.com/bitaculous/assetify.svg" title="Gemnasium Status" alt="Gemnasium Status" />](https://gemnasium.com/bitaculous/assetify)

License
-------

Assetify is released under the MIT License.