class @Formify
  defaults: { }

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend { }, @defaults, options

    setup.call @

    return

  setup = ->
    submit = @element.find 'a.submit'

    submit.click -> # Hook into click
      submit = $ this
      form   = submit.closest 'form'

      do form.submit

      false

    return