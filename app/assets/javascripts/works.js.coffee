$(document).ready -> 
	$(".work-grid-item").hover \
		(-> $(this).find(".overlay").stop().fadeIn()), \
		(-> $(this).find(".overlay").stop().fadeOut())
	