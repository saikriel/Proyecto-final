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
			   echo '<div class="col-md-4 categorias__indiv"><a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a></div>';
		
			} ?>
    </div> 
    <br>
    <br>
    <div class="calculadora">
        <form>
            <p>Convierte gramos a libras (pounds)</p>
        <input type="text" id="libra" class="form-control" placeholder="Text input">
        <button type="submit" class="btn btn-primary submit">Enviar</button>
        <span id="pounds"></span>
        </form>

    </div>
    <div>
        <table class="table table-bordered side__indicadores">
                        <h3>Indicadores económicos de hoy</h3>
                        <tr>
                            <td>UF</td>
                            <td id="UF"></td>
                        </tr>
                        <tr>
                            <td>UTM</td>
                            <td id="UTM"></td>
                        </tr>
                        <tr>
                            <td>Dólar</td>
                            <td id="dolar"></td>
                        </tr>
                        <tr>
                            <td>Euro</td>
                            <td id="euro"></td>
                        </tr>
                    </table>

    </div>

</div>