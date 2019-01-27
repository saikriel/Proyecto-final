<?php if ( has_nav_menu( 'footer-menu' ) ) { ?>
	<?php wp_nav_menu( array( 'theme_location' => 'footer-menu', 'container_class' => 'footer-menu' ) ); ?>
<?php } ?>

<div class="footer container">
	<div class="row">
		<div class="col-md-4">
		lorem
		</div>
		<div class="col-md-4">
		lorem
		</div>
		<div class="col-md-4 ">
			<p class="footer__titulos"> ¡Visita nuestras redes sociales! </p>	
			<ul class="footer__listaredes">
				<li><a href="#"><i class="fab fa-instagram footer__redes"></i></a></li>
				<li><a href="#"><i class="fab fa-facebook-f footer__redes"></i></a></li>
			</ul>
		</div>
	</div>
</div>

<?php wp_footer() ?>
</body>
</html>