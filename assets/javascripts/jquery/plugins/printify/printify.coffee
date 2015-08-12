class @Printify
  # === Variables ===

  defaults:
    debug: false

  # === Public ===

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend true, { }, @defaults, options

    initialize.call @

    return

  # === Private ===

  initialize = ->
    @element.click ->
      do window.print

      false

    return