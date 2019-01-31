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
		var pesar = parseFloat($('#libra').val())
		$('#pounds').text((libra * pesar))
	});

	$('#contacto__submit').on('click', function (event) {
		event.preventDefault();
	  alert("Huh");
	  var email = 'marianacabezasgt@gmail.com';
	  var subject = 'gulamor';
	  var emailBody = $('#footer__textarea').val();
	  window.location = 'mailto:' + email + '?subject=' + subject + '&body=' +   emailBody;
	});
	$(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = 'https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v3.2';
		fjs.parentNode.insertBefore(js, fjs);
	  }(document, 'script', 'facebook-jssdk'));

    
})