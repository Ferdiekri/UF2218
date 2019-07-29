<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>i18n - Internacionalización</h1>
 	<hr>

 	<p>i18n es la abreviatura de <b>internationalization</b> porque entre la "i" y la "n" tenemos 18 letras.</p>
 	<p>Internacionalization es un tema que tiene que estar presente en la cabeza de todos los desarrolladores de esta era tan globalizada. Es poder hacer una aplicación soporte diferentes lenguages con el minimo impacto en el código.Por suerte Java nos da una API para poder manejarlo en los servlet y en las vistas con JSP.</p>
 	<p>Para poder realizar todo esto nos basaremos en ficheros .properties cada uno de ellos contendran los mensajes para el idioma necesario:</p>
 	<img alt="Bandera Española" src="resources/images/i18n.png">

 	<hr>

	<h2>Recuperar properties desde Servlet</h2>
	<div class="row justify-content-around">
		<div class="col-3">
			<a href="i18n?idiomaSeleccionado=es_ES">
 				<img alt="Bandera Española" src="resources/images/espanol.jpg">
			</a>
		</div>
		<div class="col-3">
			<a href="i18n?idiomaSeleccionado=eu_ES">
 				<img alt="Bandera Española" src="resources/images/euskara.jpg">
			</a>
		</div>
		<div class="col-3">
			<a href="i18n?idiomaSeleccionado=en_EN">
				<img alt="Bandera Española" src="resources/images/ingles.jpg">
			</a>
		</div>
	</div> 
	
	<p class="bg-info mt-3 p-3">menu.inicio: ${mensajeIdiomaInicio }</p>
	<p class="bg-info mt-3 p-3">menu.ejemplos: ${mensajeIdiomaEjemplos }</p>
	
	
	<h2>Recuperar properties desde JSP</h2>
	
	<% // @see includes/header.jsp para la gestión del idioma. %>
	
	<p class="bg-info mt-3 p-3"><fmt:message key="menu.ejemplos" /></p>
	<p class="bg-info mt-3 p-3"><fmt:message key="menu.inicio" /></p>

	<% // end includes/header.jsp para la gestión del idioma. %>


<%@include file="../includes/footer.jsp" %>