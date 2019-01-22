$(function(){

	$('.main_nav__hamb-link').on('click', function(event) {
		event.preventDefault();
		$('.main_nav__elements').toggleClass('show');
	});

	$(window).load(function() {
		$('.flexslider').flexslider({
		  animation: "slide"
		});
	  });
})