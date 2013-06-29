$(document).ready(function() {

  // Nav Link AJAX
  $('#home_nav li a').click(function(event) {
    event.preventDefault();
    var bodyClass = $(this).text();
    var url = $(this).attr('href');
    $('body').removeClass();
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).attr('title');
      $('body').addClass(bodyClass);
      $('#content').html(newContent);
      $('.full_size').toggle();
      history.pushState(null, null, url);
      $('title').html(newTitle);
    });
  });

});