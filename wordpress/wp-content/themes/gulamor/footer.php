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
		<div class="col-md-4">
		lorem
		</div>
	</div>
</div>

<?php wp_footer() ?>
</body>
</html>