function confirmar(){
	var cont2 = document.getElementById("cont2");
	var h = document.getElementById("hora").value;
	var f = document.getElementById("fecha").value;
	$.ajax({
		type:"get",
		url:"medicoDisponible",
		data: {
			hora:h,
			fecha: f
		}
	}).done(function(respuesta){
		cont2.innerHTML =respuesta;
	});
}