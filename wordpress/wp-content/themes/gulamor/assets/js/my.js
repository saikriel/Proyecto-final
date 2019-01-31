/*$(function(){
 	$(".calculadora").on("submit" , function(event){
		event.preventDefault();
		var libra = 0,00220462 ;
        var pesa = parseFloat($('#libra').val())
	   $("#pounds").text((libra * pesa ).toFixed(2))   
	   
        console.log(peso)
    })

*/
$(function(){

    var currency = {
        dolar: 0,
        euro: 0,
        utm: 0,
        uf: 0
    }
        

    $.ajax({
        url: 'https://mindicador.cl/api',
        method: 'GET',
       
    }).done(function(data){
        console.log(data);
        currency.dolar = data.dolar.valor
        currency.euro = data.euro.valor
        currency.utm = data.utm.valor
        currency.uf = data.uf.valor

        $('#UF').text( '$ ' +data.uf.valor )
        $('#UTM').text( '$ ' +data.utm.valor )
        $('#dolar').text( '$ ' +data.dolar.valor )
        $('#euro').text( '$ ' +data.euro.valor )
	});

	$(".calculadora").on("submit" , function(event){
		event.preventDefault();
		var libra = 0.00220462 ;
		var pesar = parseInt(('#libra').val())
		$('#pounds').text((libra * pesar))
	});

    
})