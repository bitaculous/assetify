# This is the manifest for `plugin.js`.

#= require_self

(($, window, document) ->
  $.fn.formify = (options) ->
    @each ->
      element = $ @

      if element.data('formify') is `undefined`
        plugin = new Formify @, options

        element.data 'formify', plugin

      return
) jQuery, window, document