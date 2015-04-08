# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('form#new_exitpop').submit (e) ->
    console.log(e.currentTarget);

    $("#exitpopup").on("ajax:success", (e, data, status, xhr) ->
      $("#exitpopup").append xhr.responseText).on "ajax:error", (e, xhr, status, error) ->
      $("#exitpop_email").append "<p>error</p>"
      return


      #$(document).ready ->
        #$('input[type="submit"]').click ->
         # $("#exitpopup").on("ajax:success", (e, data, status, xhr) ->
          #  $("#exitpopup").append xhr.responseText).on "ajax:error", (e, xhr, status, error) ->
           # $("#exitpop_name").append "<p>ERROR</p>"



