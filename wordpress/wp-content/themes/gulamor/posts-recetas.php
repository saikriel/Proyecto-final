

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
					
		