# This is the manifest for `formify.js`.

#= require_self

class @Formify
  # === Defaults ===

  defaults: { }

  # === Public ===

  constructor: (form, options) ->
    @form    = $ form
    @options = $.extend { }, @defaults, options

    initialize.call @

    return

  # === Private ===

  initialize = ->
    submit = @form.find 'a.submit'

    submit.click => # Hook into click
      do @form.submit

      false

    return