<%@include file="includes/header.jsp" %>
<%@include file="includes/navbar.jsp" %>

 	<h1>Hello Java Web App 3.1</h1>
 	<hr>
 	
 	<div id="menuInicio" class="row justify-content-around">	
		<div class="col-5 border border-info rounded">	
			<h2 class="bg-info pt-3 pb-3 text-center">Ejercicios Teóricos</h2>
	
			<ul class="list-group mt-3">
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico1.jsp">Ejemplo Servlet Básico 1 - Sin JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico2.jsp">Ejemplo Servlet Básico 2 - Con JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico3.jsp">Ejemplo Servlet Básico 3 - Response Content Type</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico4.jsp">Ejemplo Servlet Básico 4 - Get & Post</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/jsp.jsp">JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="jstl">JSTL - java Server Tag Libraries</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/el.jsp">EL - Expression Language</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/errores.jsp">Páginas de error</a></li>
				<li class="list-group-item list-group-item-light">Ciclo de vida</li>
				<li class="list-group-item list-group-item-light">Página de error</li>
			</ul>
			
			<ul>
				<li>Por hacer:</li>
					<ul>
				<li>Session</li>
				<li>Cookies</li>
				<li>Filtros</li>
				<li>Listeners</li>
			</ul></ul>

		</div> <!-- div.col-5 -->
		
 		<div class="col-5 border border-info rounded">	
			<h2 class="bg-info p-3 text-center">Ejercicios</h2>
			<ul class="list-group mt-3">
				<li class="list-group-item list-group-item-light"><a href="nombres">Listado Nombres</li>
				<li class="list-group-item list-group-item-light"><a href="videos">Listado vídeos Youtube</a></li>
			</ul>
		</div> <!-- div.col-5 -->
 	</div>
		
<%@include file="includes/footer.jsp" %>