$(document).ready(function() {

  $('a.photo_thumb').click(function(event) {
    event.preventDefault();
    imageURL = $(this).attr('href');
    $('.container').append(imageBox(imageURL));
  });

  $('.container').on('click', '.image_close', function(event) {
    event.preventDefault();
    $('.full_size').remove();
  });

});

var imageBox = function(imageURL) {
 return '<div class="full_size"><a class="image_close" href="#">close</a><img src=' + imageURL + ' width="860" /></div>'
}