(($, window, document) ->
  'use strict'

  $.fn.detector = (options) ->
    @each ->
      element = $ @

      if typeof element.data('detector') is 'undefined'
        plugin = new Detector @, options

        element.data 'detector', plugin

      return
) jQuery, window, document