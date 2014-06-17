# This is the manifest for `plugin.js`.

#= require_self

(($, window, document) ->
  $.fn.detector = (options) ->
    @each ->
      element = $ @

      if element.data('detector') is `undefined`
        plugin = new Detector @, options

        element.data 'detector', plugin

      return
) jQuery, window, document