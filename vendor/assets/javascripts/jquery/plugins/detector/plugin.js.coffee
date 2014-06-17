# This is the manifest for `plugin.js`.

#= require_self

(($, window, document) ->
  $.fn.extend detector: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'detector'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'detector', (data = new Detector @, options)
) jQuery, window, document