ready = ->





  if $(".slideshow").length
    $(".slideshow img").unwrap().wrap("<div class='slide'></div>")



    setUpSlider = () ->
      $(".slideshow .counter").remove()
      $(".slideshow").slick
        arrows: false
        fade: true
        dots: true
        onAfterChange: ->
          $(".slideshow .counter .num").text($(".slideshow").slickCurrentSlide()+1)
          if $(document).fullScreen()
            $(".slick-active img").fullScreen(true)
      document.onkeydown = (evt) ->
        evt = evt || window.event
        switch evt.keyCode
          when 37 then $(".slideshow").slickPrev()
          when 39 then $(".slideshow").slickNext()

      $(".slideshow").append("<div class='counter'><span class='num'>1</span> / <span class='of'>5</span></div>")
      $(".slideshow .counter .of").text($(".slick-slide").length)
      $(".slideshow .counter .num").text($(".slideshow").slickCurrentSlide()+1)


    do setUpSlider

    $(document).bind "fullscreenchange", ->
      unless $(document).fullScreen()
        location.reload()











  $(".blog_post .content_header .goback").click ->
    if window.history.back()
      return false

  $(".blog_post .content_header .open_fullscreen").click ->
    $(".slick-active img").fullScreen(true)
    return false




$(document).ready(ready)
$(document).on('page:load', ready)
