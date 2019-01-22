<?php  /* Template Name: Recetas */ ?>
<?php get_header() ?>

<div class="recetas__main">
	<div class="col-md-3">
	
		<?php 
			$arg = array(
				'post_type' => 'post_recetas',
				'category_name' => '',
				'posts_per_page' => 12,
				

			);

			$get_arg = new WP_Query( $arg );

			while ( $get_arg->have_posts()) {
				$get_arg->the_post();
			
			?>

		<div class="recetas-blog">

			<?php $image = get_field('imagen');
						if( !empty($image) ): ?>
					<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" width="300px" class="recetas__img"/>
					<?php endif; ?>
			<a href="<?php the_permalink() ?>"><h3><?php the_title() ?></h3></a>
			

		</div>	

			<?php } wp_reset_post_data();
			?>
	
	</div>
</div>


<?php get_sidebar() ?>

<?php get_footer() ?>