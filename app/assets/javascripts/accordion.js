$(function (){
  

  $('.accordion p').click(function(){
		$(this).next('ul').slideToggle();
	});
});

// $(document).on('turbolinks:load', function(){
//   $(".left-btn").on('mouseenter', function(){
//     $(this).children('ul.accordion').css('display', 'block');
//   });
