#= require ./class

#= require_self

(($, window, document) ->
  $.fn.extend printify: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'printify'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'printify', (data = new Printify @, options)
) jQuery, window, document