<div class="buscar">
    <div class="input-group search">
      <input type="text" class="form-control" placeholder="Busca tu receta">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Go!</button>
      </span>
    </div>
    <div class="categorias">
			<?php
			$categories = get_categories();
			foreach($categories as $category) {
			   echo '<div class="col-md-4"><a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a></div>';
		
			} ?>
	</div> 
</div>