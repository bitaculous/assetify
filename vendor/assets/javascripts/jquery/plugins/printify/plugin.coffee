# This is the manifest for `plugin.js`.

#= require_self

(($, window, document) ->
  $.fn.printify = (options) ->
    @each ->
      element = $ @

      if element.data('printify') is `undefined`
        plugin = new Printify @, options

        element.data 'printify', plugin

      return
) jQuery, window, document