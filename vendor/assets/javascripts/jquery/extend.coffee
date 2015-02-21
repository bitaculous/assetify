# This is the manifest for `extend.js`.

#= require_self

(($, window, document) ->
  # Helper to test whether an element exists.
  $.fn.present = ->
    $(@).length
) jQuery, window, document