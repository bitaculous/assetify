(($, window, document) ->
  'use strict'

  $.fn.printify = (options) ->
    @each ->
      element = $ @

      if typeof element.data('printify') is 'undefined'
        plugin = new Printify @, options

        element.data 'printify', plugin

      return
) jQuery, window, document