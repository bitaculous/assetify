(($, window, document) ->
  class Formify
    defaults: { }

    constructor: (element, options) ->
      @options = $.extend { }, @defaults, options
      @element = $ element

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

  $.fn.extend formify: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'formify'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'formify', (data = new Formify @, options)
) jQuery, window, document