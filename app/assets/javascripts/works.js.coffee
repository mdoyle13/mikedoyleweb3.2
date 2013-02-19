$(document).ready -> 
	$(".work-grid-item").hover \
		(-> $(this).find(".overlay").stop().fadeIn()), \
		(-> $(this).find(".overlay").stop().fadeOut())

$(window).load ->
	$(".flexslider").flexslider({
		animation: "slide",
		smoothHeight: true,
		touch: true
	});
	