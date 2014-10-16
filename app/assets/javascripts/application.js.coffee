#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require slick
#= require jquery-fullscreen/jquery.fullscreen-min.js
#= require_tree .



ready = ->
  for link in $("a")
    if $(link).attr("href") is window.location.pathname
      $(link).addClass("active")
      if $(link).parent().prop("tagName") is "LI"
        $(link).parent().addClass("active")


$(document).ready(ready)
$(document).on('page:load', ready)