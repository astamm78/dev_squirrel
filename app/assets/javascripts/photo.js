$(document).ready(function() {

  $('.full_size').toggle();

  $('.container').on('click', 'a.photo_thumb', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    $('.full_size').load(url).removeClass('hidden');
  });

  $('.container').on('click', '.image_close', function(event) {
    event.preventDefault();
    $('.full_size').addClass('hidden').html('');
  });

  $('.container').on('click', 'a.photo_nav', function(event){
    event.preventDefault();
    var nextImage = $(this).attr('href');
    $('.full_size').load(nextImage);
  });

});