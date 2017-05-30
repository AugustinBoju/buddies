//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

$( ".tab" ).click(function() {
  $('.active').removeClass('active');
  $(this).addClass('active');
});
