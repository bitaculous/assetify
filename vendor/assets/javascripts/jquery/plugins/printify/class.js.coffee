class @Printify
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