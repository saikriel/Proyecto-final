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
              <div class="articulos__post container">
                    <div class=" col-md-4 col-sm-12">
                    <img src="<?php the_post_thumbnail() ?>" alt="" 
                    </div>
                    <div class="col-md-8 col-sm-12">
                        <a href="<?php the_permalink() ?>" ><h3><?php the_title() ?></h3></a>
                    </div>
                
                

              </div>      

				

				
                <?php } wp_reset_postdata();
				?>