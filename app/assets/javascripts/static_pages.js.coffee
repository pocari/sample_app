# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

MAX_CHAR_NUM = 140

observe_content = (elem) ->
  len = elem.value.length
  $("#feed_char_counter").text("#{len}/#{MAX_CHAR_NUM}")
  if len > MAX_CHAR_NUM
    $("#feed_size_over").show();
  else
    $("#feed_size_over").hide();

ready = ->
  $("#micropost_content").bind "keyup", ->
    observe_content(this)
  
  $("#feed_size_over").hide();

$(document).on('ready page:load', ready)


