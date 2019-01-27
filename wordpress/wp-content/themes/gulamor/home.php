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
    <div class="about-me row">
        <div class="about-me__img col-md-4">
            <img src="" alt="">
        </div>
        <div class="about-me__content col-md-8">
            <p>
            Lorem ipsum dolor sit amet consectetur adipiscing elit, viverra venenatis pulvinar sem vel non lectus tellus, ad lobortis tempor augue quam fusce. Facilisis interdum augue elementum velit luctus tellus, etiam laoreet fames dictumst id tempus a, et iaculis nulla ridiculus ante. Lectus ad eleifend torquent urna habitant ultrices conubia, ridiculus in dui dictumst vel erat.

            Torquent erat libero nunc iaculis mi magnis duis sem id potenti volutpat, luctus parturient ultricies justo pellentesque dictum sollicitudin morbi facilisis vivamus. Vulputate sociosqu egestas nam nisl neque ante mus, aliquet magnis condimentum fermentum parturient aenean convallis cubilia, primis est eros mollis tincidunt eleifend. Lectus lacus aliquet montes suspendisse venenatis potenti, dapibus inceptos sapien mattis eget sodales mauris, nec fames tellus hendrerit sociis.
            </p>
        </div>


    </div>

</div>

<?php get_footer() ?>