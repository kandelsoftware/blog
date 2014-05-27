# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery  ->
   $('#himalaya_datepicker').datepicker(
     altField:"#himalaya",
     dateFormat: "yy-mm-dd",
     minDate: -0,
     dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],

     maxDate: "+1M +10D");



$(window).load ->
  $("#slider").ramblingSlider()
