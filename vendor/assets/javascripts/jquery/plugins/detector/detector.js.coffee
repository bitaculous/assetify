class @Detector
  # === Defaults ===

  defaults:
    detectMobile: true
    detectOS: true

  # === Public ===

  constructor: (element, options) ->
    @element = $ element
    @options = $.extend { }, @defaults, options

    detectMobile.call @ if @options.detectMobile

    detectOS.call @ if @options.detectOS

    return

  # === Private ===

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