// $(document).ready(function() {

//   // Nav Link AJAX
//   $('.main').on('click', 'a.jlink, .pagination a', function(event) {
//     event.preventDefault();
//     $('#content').html('<img style="width:550px;height:400px;padding:0 140px;margin-top:-60px;" src="/assets/loadingAnimation.gif"/>');
//     if ($(this).attr('data') === undefined) {
//       var bodyClass = "posts";
//     }
//     else {
//       var bodyClass = $(this).attr('data');
//     }
//     var url = $(this).attr('href');
//     history.pushState({ url: url, bodyClass: bodyClass }, '', url);
//     $('body').removeClass();
//     $('.main').load(url + ' .main');
//     $('body').addClass(bodyClass);
//     $('html, body').animate({ scrollTop: 0 }, 0);
//   });

//   // For Browser 'Back' Button
//   window.onpopstate = function(event) {
//     $('.main').load(event.state.url + ' .main');
//     $('body').removeClass().addClass(event.state.bodyClass);
//   };

// });