class @Printify
  # === Variables ===

  defaults: { }

  # === Public ===

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend @defaults, options

    initialize.call @

    return

  # === Private ===

  initialize = ->
    @element.click ->
      do window.print

      false

    return