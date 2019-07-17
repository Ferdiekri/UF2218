<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Ejemplo Servlet Response Content Type</h1>
 	<hr>
 	
 	<p>Un Servlet de Java siempre responde por defercto con "text/html". Pero podemos cambiar el CONTENT TYPE</p>
 	
 	<p>Vamos a responder desde el Servlet los mismos datos pero con diferente CONTENT TYPE.</p>
 	<p>DATOS: perro [nombre:'bubba', raza:'boxer']</p>
 	
 	
 	<p><a href="https://developer.mozilla.org/es/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Lista_completa_de_tipos_MIME" target="_blank">Listado de los CONTENT TYPES que soporta un navegador.</a></p>
 	<div class=""
 	<a class="btn btn-outline-info btn-lg text-center w-20 m-3" href="servlet3?p=1">Respuesta text/plain</a>
	<a class="btn btn-outline-info btn-lg text-center w-20 m-3" href="servlet3?p=2">Respuesta text/html</a>
	<a class="btn btn-outline-info btn-lg text-center w-20 m-3" href="servlet3?p=3">Respuesta JSON</a>
	<a class="btn btn-outline-info btn-lg text-center w-20 m-3" href="servlet3?p=4">Respuesta PDF</a>
	
	
<%@include file="../includes/footer.jsp" %>