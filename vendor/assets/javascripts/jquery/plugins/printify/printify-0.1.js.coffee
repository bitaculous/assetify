(($, window, document) ->
  class Printify
    defaults: { }

    constructor: (element, options) ->
      @element = $ element
      @options = $.extend { }, @defaults, options

      setup.call @

      return

    setup = ->
      @element.click -> # Hook into click
        do window.print

        false

      return

  $.fn.extend printify: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'printify'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'printify', (data = new Printify @, options)
) jQuery, window, document