<?php get_header() ?>
<div class="recetas container">

		<div class="receta__content ">
		<?php if ( have_posts() ) { ?>
			<?php while ( have_posts() ) { ?>
				<?php the_post(); ?>
				
				<h1><?php the_title() ?></h1>
				<?php $image = get_field('imagen');
					if( !empty($image) ): ?>
				<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" width="700px" />
				<?php endif; ?>
				<br>
				<time datetime="<?php the_time('Y-m-d') ?>"><?php the_time('d \d\e F \d\e Y') ?></time>
				<p><?php the_field('tiempo_preparacion'); ?></p>
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
				<h2>Ingredientes</h2>
				<ul>
					<li><p><?php the_field('ingrediente_1'); ?></p></li>
					<li><p><?php the_field('ingrediente_2'); ?></p></li>
					<li><p><?php the_field('ingrediente_3'); ?></p></li>
					<li><p><?php the_field('ingrediente_4'); ?></p></li>
					<li><p><?php the_field('ingrediente_5'); ?></p></li>
					<li><p><?php the_field('ingrediente_6'); ?></p></li>
					<li><p><?php the_field('ingrediente_7'); ?></p></li>
					<li><p><?php the_field('ingrediente_8'); ?></p></li>
				</ul>
				
				
				<h2>Preparación</h2>
				<p><?php the_content(); ?></p>
				

				

			<?php } ?>
			<?php } else { ?>
			<!-- Content -->
			
		
		</div>

</div>

<?php get_footer() ?>
<?php } wp_reset_post_data();
				?>