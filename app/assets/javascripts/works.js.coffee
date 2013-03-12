$(document).ready -> 
	
	if $("html").hasClass("no-touch")
		$(".work-grid-item").hover \
			(-> $(this).find(".overlay").stop().fadeIn()), \
			(-> $(this).find(".overlay").stop().fadeOut())

$(window).load ->
	$(".flexslider").flexslider({
		animation: "slide",
		smoothHeight: true,
		touch: true
	});
	