
$ ->
  $('#boxA-1').masonry

    itemSelector: '.gaiyou',

    gutterWidth: 5,

    isAnimated: true,
    animationOptions: {
      duration: 500,
      easing: 'swing'
    }
$ ->
  $('.gaiyou').hide();
  $('.gaiyou').each((i) ->
    $(this).delay(i * 100).fadeIn(1000))