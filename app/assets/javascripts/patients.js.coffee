# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("form").bind "cocoon:after-insert", (e, added_resultat) ->
    added_resultat.find("select").first().focus()
    added_resultat.find("select").auto_tab()


  $("#patient_surv_doppler").on "change", (e) ->
    $(@).next().focus() if @checked

$.fn.auto_tab = ->
  @each ->
    $(@).on "keyup", (e) ->
      if @value is "a - normal"
        $("#patient_intro_statine").focus()
      else
        $(e.target).closest(".control-group").parent().next().find("select, input").focus()
