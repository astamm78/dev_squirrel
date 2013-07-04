$(document).ready(function() {

  // Nav Link AJAX
  $('.container').on('click', 'a.jlink, .pagination a', function(event) {
    event.preventDefault();
    if ($(this).attr('data') === undefined) {
      var bodyClass = "posts";
    }
    else {
      var bodyClass = $(this).attr('data');
    }
    var url = $(this).attr('href');
    history.pushState({ url: url, bodyClass: bodyClass }, '', url);
    $('body').removeClass();
    $('.container').load(url + ' .container');
    $('body').addClass(bodyClass);
    $('html, body').animate({ scrollTop: 0 }, 0);
  });

  // For Browser 'Back' Button
  window.onpopstate = function(event) {
    $('.container').load(event.state.url + ' .container');
    $('body').removeClass().addClass(event.state.bodyClass);
  };

});