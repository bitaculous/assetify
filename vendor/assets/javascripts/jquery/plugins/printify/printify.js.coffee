# This is the manifest for “printify.js”.

#= require_self

class @Printify
  # === Defaults ===

  defaults: { }

  # === Public ===

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend { }, @defaults, options

    initialize.call @

    return

  # === Private ===

  initialize = ->
    @element.click -> # Hook into click
      do window.print

      false

    return