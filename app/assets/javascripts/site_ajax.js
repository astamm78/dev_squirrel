$(document).ready(function() {

  // Nav Link AJAX
  $('.container').on('click', '#home_nav li a', function(event) {
    event.preventDefault();
    var bodyClass = $(this).text();
    var url = $(this).attr('href');
    history.pushState({ path: this.path }, '', this.href);
    $('body').removeClass();
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).filter('title').text();
      $('body').addClass(bodyClass);
      $('#content').html(newContent);
      $('.full_size').toggle();
      $('title').html(newTitle);
    });
  });

  $('.container').on('click', 'a.home_link', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    history.pushState({ path: this.path }, '', this.href);
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).attr('title');
      $('#content').html(newContent);
      $('title').html(newTitle);
    });
  });

  $('#content').on('click', 'a.post_link', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    history.pushState({ path: this.path }, '', this.href);
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).attr('title');
      $('#content').html(newContent);
      $('title').html(newTitle);
    });
  });

  $('#content').on('click', 'a.tag_link', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    history.pushState({ path: this.path }, '', this.href);
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).attr('title');
      $('#content').html(newContent);
      $('title').html(newTitle);
    });
  });

  $('#content').on('click', '.pagination a', function(event) {
    event.preventDefault();
    var url = $(this).attr('href');
    history.pushState({ path: this.path }, '', this.href);
    $.get(url, function(results) {
      var newContent = $(results).find('#content').html();
      var newTitle = $(results).attr('title');
      $('#content').html(newContent);
      $('title').html(newTitle);
    });
  });

});