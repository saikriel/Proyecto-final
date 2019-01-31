<?php  /* Template Name: Articulos */ ?>
<?php get_header() ?>
<div>
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
                    <div class=" col-md-5 col-sm-12">
                    <?php the_post_thumbnail( 'full', array( 'class' => 'articulos__img' ) ); ?>
                    </div>
                    <div class="col-md-7 col-sm-12">
                        <a href="<?php the_permalink() ?>" ><h3><?php the_title() ?></h3></a>
                    </div>
                
                

              </div>      

				

				
                <?php } wp_reset_postdata();
                ?>
</div>


<?php get_footer() ?>