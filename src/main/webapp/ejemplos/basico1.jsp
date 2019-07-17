<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Ejemplo Servlet B�sico sin JSP</h1>
 	<hr>
 	
 	<p>Vamos a crear un Servlet para mostrar la REQUEST y el RESPONSE.</p>
 	<p>El servlet ser� el encargado de pintar la respuesta a pelo, sin usar una JSP.</p>
 	
 	<a class="btn btn-outline-info btn-lg text-center btn-block m-3" href="controlador1">PETICION GET</a>
 	<a class="btn btn-outline-success btn-lg text-center btn-block m-3" href="controlador1?param1=value1&param2=foo&p3=manolito">PETICION GET con par�metros</a>
	<a class="btn btn-outline-danger btn-lg text-center btn-block m-3" href="controladorNoExistente">PETICION GET - Response 404</a>
	
	
<%@include file="../includes/footer.jsp" %>