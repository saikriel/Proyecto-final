<?php  /* Template Name: Articulos */ ?>
<?php get_header() ?>

<?php 
				$arg = array(
					'post_type' => 'post',
					'category_name' => 'articulo',
					'posts_per_page' => 10,
					

				);

				$get_arg = new WP_Query( $arg );

				while ( $get_arg->have_posts()) {
					$get_arg->the_post();
				
				?>
              <div class="articulos__post">

                <?php the_post_thumbnail() ?>
                <a href="<?php the_permalink() ?>" ><h3><?php the_title() ?></h3></a>

              </div>      

				

				
                <?php } wp_reset_postdata();
				?>