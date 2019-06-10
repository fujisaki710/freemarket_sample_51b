$(function() {
  $(".left-btn--category").on("mouseout", function() {
    $(".accordion-wrapper").();
	});
	
	$(".left-btn--category").on("mouseenter", function() {
    $(".accordion-wrapper").css('display', 'block');
  });
});