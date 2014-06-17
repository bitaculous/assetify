# This is the manifest for `extend.js`.

#= require_self

(($, window, document) ->
  $.fn.present = -> # Helper to test whether an element exists
    $(@).length
) jQuery, window, document