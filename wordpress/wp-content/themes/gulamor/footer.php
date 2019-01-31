

<div class="footer container">
	<div class="row">
		<div class="col-md-4 footer__contact">
			<h3 class="contacto__text">Contáctanos :)</h3>
		<form>
			<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
			<input type="email" class="form-control" id="inputEmail3" placeholder="Email">
			</div>
			<br>
			</div>
			<div class="form-group group__textarea">
				<textarea class="form-control" rows="3" id="footer__textarea"></textarea>
			</div>
			<button type="submit" class="btn btn-primary" id="contacto__submit">Submit</button>
		

		</form>
		</div>
		
		<div class="col-md-4 ">
			<!-- <p class="footer__titulos"> ¡Visita nuestras redes sociales! </p>	
			<ul class="footer__listaredes">
				<li><a href="#"><i class="fab fa-instagram footer__redes"></i></a></li>
				<li><a href="#"><i class="fab fa-facebook-f footer__redes"></i></a></li>
			</ul> -->
		</div>
		<div class="col-md-4 footer__menu">
			<h3 class="fmenu__title">Páginas</h3>
			<?php if ( has_nav_menu( 'footer-menu' ) ) { ?>
				<?php wp_nav_menu( array( 'theme_location' => 'footer-menu', 'container_class' => 'footer-menu' ) ); ?>
			<?php } ?>

		</div>
		
	</div>
</div>

<?php wp_footer() ?>
</body>
</html>