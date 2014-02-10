#= require ../browser

#= require_self

(($, window, document) ->
  class Detector
    defaults: {
      detectMobile: true
      detectOS: true
    }

    constructor: (element, options) ->
      @options = $.extend { }, @defaults, options
      @element = $ element

      detectMobile.call @ if @options.detectMobile

      detectOS.call @ if @options.detectOS

      return

    detectMobile = ->
      if $.browser.mobile
        @element.addClass 'mobile'
      else
        @element.addClass 'desktop'

      return

    detectOS = ->
      os = 'unknown'

      unless navigator.appVersion.indexOf('Win') is -1
        os = 'windows'
      else unless navigator.appVersion.indexOf('Mac') is -1
        os = 'mac'
      else unless navigator.appVersion.indexOf('X11') is -1
        os = 'UNIX'
      else os = 'Linux' unless navigator.appVersion.indexOf('Linux') is -1

      @element.addClass os

      return

  $.fn.extend detector: (options, args...) ->
    @each ->
      element = $ @
      data    = element.data 'detector'

      if data
        data[options].apply data, args if data[options]
      else
        element.data 'detector', (data = new Detector @, options)
) jQuery, window, document