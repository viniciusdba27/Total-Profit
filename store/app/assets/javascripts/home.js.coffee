# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->  
  $(".navbar-toggle").click ->
    el = $(".navbar-collapse")
    if el.is(":visible")
      el.hide()
    else
      el.show()


  $(".list-group-image img").click (el) ->
    src = $(el.target).attr("src")
    $("#myModal .modal-image img").attr("src", src)    
    $("#myModal").modal("show") 

