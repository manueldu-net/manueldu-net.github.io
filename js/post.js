/**
 * https://manueldu.net
 * Post related JS code
 */
$(function() {
  $.each(['prev', 'next'], function(idx, el) {
    $('#' + el + '-post').hover(function() {
      $(this).find('i#post-nav-chevron').addClass('animated shake');
    },
    function() {
      $(this).find('i#post-nav-chevron').removeClass('animated shake');
    });
  });
});
