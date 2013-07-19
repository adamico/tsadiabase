# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("form").bind "cocoon:after-insert", (e, added_resultat) ->
    console.log added_resultat.find("select").first().focus()

