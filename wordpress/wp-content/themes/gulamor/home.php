<?php get_header() ?>


<div class="container home__contenido">
    <div class="row">
        <div class="col-md-12">

        <div class="home-featured">
        <?php 
				$arg = array(
					'post_type' => 'post_recetas',
					'category_name' => '',
					'posts_per_page' => 4,
					

				);

				$get_arg = new WP_Query( $arg );

				while ( $get_arg->have_posts()) {
					$get_arg->the_post();
				
				?>

                    <div class="col-md-3 col-sm-12 featured__post">
                    <?php $image = get_field('imagen');
							if( !empty($image) ): ?>
						<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>"  class="home__featured__img"/>
                        <?php endif; ?> 

                        <div class="home-featured__title">

                            <a href="<?php the_permalink() ?>" ><h3><?php the_title() ?></h3></a>
                        </div>
                    </div>
				
                <?php } wp_reset_postdata();
				?>
			
        </div>
        
        </div>
    </div>
</div>

<div class="container">
                <?php 
				$arg = array(
					'post_type' => 'about-me',
					'posts_per_page' => 1,
					

				);

				$get_arg = new WP_Query( $arg );

				while ( $get_arg->have_posts()) {
					$get_arg->the_post();
				
				?>
    <div class="about-me row">
        <div class=" col-md-3 col-sm-12">
       
       <?php $image = get_field('imagen');
                   if( !empty($image) ): ?>
               <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>"  class="about-me__img"/>
               <?php endif; ?> 
        </div>
        <div class="about-me__content col-md-9 col-sm-12">
         <h3><?php the_field('titulo'); ?></h3>
        <p><?php the_field('descripcion'); ?></p>
        </div>
        <?php } wp_reset_postdata();
				?>
    </div>

</div>

<?php get_footer() ?>