<?php  /* Template Name: Recetas */ ?>
<?php get_header() ?>
<div class="recetas__container row">



	<div class="container">
		
		<div class="recetas__main col-md-9">
			

			<ul>
				<li class="recetas__li">
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
							
					<a href="<?php the_permalink() ?>"><h3 class="recetas__link"><?php the_title() ?></h3></a>
					<?php if( get_field('dificultad') == '1' ): ?>
						<p><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i></p>
					<?php endif; ?>
					<?php if( get_field('dificultad') == '2' ): ?>
						<p><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i></p>
					<?php endif; ?>
					<?php if( get_field('dificultad') == '3' ): ?>
						<p><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon"></i><i class="fas fa-lemon"></i></p>
					<?php endif; ?>
					<?php if( get_field('dificultad') == '4' ): ?>
						<p><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon" carrot-orange></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon"></i></p>
					<?php endif; ?>
					<?php if( get_field('dificultad') == '5' ): ?>
						<p><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i><i class="fas fa-lemon carrot-orange"></i></p>
					<?php endif; ?>
					</div>	
					
		
				</li>
				<?php } wp_reset_postdata();
					?>
			</ul>

		</div>
		<div class="col-md-3 sidebar">
		<div class="sidebar col-md-4">
			<?php get_template_part('side') ?>
		</div>
		</div>
	</div>
</div>




<?php get_footer() ?>

