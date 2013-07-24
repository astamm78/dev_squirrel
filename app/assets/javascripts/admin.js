$(document).ready(function() {

  $('.admin_post_form').toggle();
  $('.admin_photo_form').toggle();

  $('#new_content a').click(function(event) {
    event.preventDefault();
    var target = $(this).attr('data');
    $('.entry').hide();
    $(target).toggle();
    $('#new_content').toggle();
  });

  $('.main_box').on('click', 'a.admin_close', function(event) {
    event.preventDefault();
    $(this).closest('.entry').toggle();
    $('#new_content').toggle();
  });

});