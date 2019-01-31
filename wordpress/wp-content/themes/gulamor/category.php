<?php get_header() ?>
<div class="categorias">


<div class="container">
	<div class="row">




	<div class="col-md-8">
	<?php if (have_posts()) { ?>

		<ul>
			<?php while ( have_posts() ) { the_post(); ?>
				<li>
					<a href="<?php the_permalink() ?>">
						<?php the_post_thumbnail() ?>
						<?php the_title() ?>
						<time datetime="<?php the_time('Y-m-d') ?>"><?php the_time('d \d\e F \d\e Y') ?></time>
						<?php the_excerpt() ?>
					</a>
				</li>
			<?php }; ?>
		</ul>

<?php } else { ?>
	<!-- Content -->
	<p>No hay elementos</p>
<?php } wp_reset_query(); ?>
	</div>
	

	<div class="col-md-3 sidebar">
		
		<?php get_template_part('side') ?>

	</div>
	</div>
</div>
</div>
<?php get_footer() ?>