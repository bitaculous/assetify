class @Printify
  # === Defaults ===

  defaults: { }

  # === Public ===

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend { }, @defaults, options

    setup.call @

    return

  # === Private ===

  setup = ->
    @element.click -> # Hook into click
      do window.print

      false

    return