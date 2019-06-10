$(function() {
	$(".accordion-wrapper").hide();

  $(".left-btn--category").on("mouseleave", function() {
		$(".accordion-wrapper").css('display', 'none');

	});
	
	$(".left-btn--category").on("mouseenter", function() {
		$(".accordion-wrapper").css('display', 'block');
		$(".child-wrapper").hide();

		$(".accordion-parent__category").on("mouseenter", function() {
			$(".accordion-wrapper").find(".child-wrapper").css('display', 'block');
			$(".grandchild-wrapper").hide();

			$(".accordion-child__category").on("mouseenter", function() {
				$(".grandchild-wrapper").css('display', 'block');
			});
		});
	});
	
	$(".accordion-wrapper").on("mouseleave", function() {
		$(this).css('display', 'none');
	});

	$(".accordion-wrapper").on("mouseenter", function() {
    $(this).css('display', 'block');
	});
});