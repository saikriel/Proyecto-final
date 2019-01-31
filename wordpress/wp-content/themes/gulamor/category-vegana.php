<?php get_header() ?>
<div class="categorias">


<div class="container">
	<div class="row">




	<div class="col-md-8">
	<li class="recetas__li">
	</ul>
		
		<li class="recetas__li">
	<?php 
			$arg = array(
				'post_type' => 'post_recetas',
				'category_name' => 'vegana',
				'posts_per_page' => 12,
				

			);

			$get_arg = new WP_Query( $arg );

			while ( $get_arg->have_posts()) {
				$get_arg->the_post();
			
			?>
		<?php get_template_part('posts-recetas') ?>
				
		</li>
		<?php } wp_reset_postdata();
			?>
			</ul>
				
	</div>
	

	<div class="col-md-3 sidebar">
	
		
		<?php get_template_part('side') ?>

	</div>
	</div>
</div>
</div>
<?php get_footer() ?>