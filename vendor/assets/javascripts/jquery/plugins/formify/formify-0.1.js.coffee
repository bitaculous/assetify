#= require ./class

#= require_self

(($, window, document) ->
  $.fn.extend formify: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'formify'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'formify', (data = new Formify @, options)
) jQuery, window, document