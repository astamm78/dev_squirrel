$(document).ready(function() {

  $('.full_size').toggle();

  $('a.photo_thumb').click(function(event) {
    event.preventDefault();
    imageID = $(this).attr('id');
    $.get('/photos/' + imageID, function(results){
      $('.full_size').toggle().html(results);
    });
  });

  $('.container').on('click', '.image_close', function(event) {
    event.preventDefault();
    $('.full_size').toggle();
  });

  $('.container').on('click', 'a.photo_nav', function(event){
    event.preventDefault();
    var nextImage = $(this).attr('href');
    $.get(nextImage, function(results){
      $('.full_size').html(results);
    });
  });

});