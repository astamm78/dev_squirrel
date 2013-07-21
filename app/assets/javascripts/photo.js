$(document).ready(function() {

  $('.main_box').on('click', 'a.photo_thumb', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    $('.full_size').load(url).removeClass('hidden');
  });

  $('.main_box').on('click', '.image_close', function(event) {
    event.preventDefault();
    $('.full_size').addClass('hidden').html('');
  });

  $('.main_box').on('click', 'a.photo_nav', function(event){
    event.preventDefault();
    var nextImage = $(this).attr('href');
    $('.full_size').load(nextImage);
  });

});