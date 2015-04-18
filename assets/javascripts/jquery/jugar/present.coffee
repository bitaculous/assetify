(($, window, document) ->
  # Helper to test whether an element exists.
  $.fn.present = ->
    $(@).length
) jQuery, window, document