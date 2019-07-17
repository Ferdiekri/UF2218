<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Ejemplo Servlet Basico con JSP 2</h1>
 	<hr>
 	
 	<p>Vamos a crear un Servlet para mostrar que navegador estamos usando.</p>
 	
 	<a class="btn btn-outline-info btn-lg text-center btn-block m-3" href="useragent">Detectar Navegador que estas usando</a>
 	
 	<!-- <p>${todo }</p> -->
 	<p>${icono } - ${navegador } v${version }</p>
 	<p>${movil }</p>
 	
 	
 	
 	<i class="fas fa-phone-slash tetx-success"></i>
 	<i class="fas fa-phone tetx-success"></i>
		
<%@include file="../includes/footer.jsp" %>