<%@include file="includes/header.jsp" %>
<%@include file="includes/navbar.jsp" %>

 	<h1>Hello Java Web App 3.1</h1>
 	<hr>
 	
 	<div id="menuInicio" class="row justify-content-around">	
		<div class="col-5 border border-info rounded">	
			<h2 class="bg-info pt-3 pb-3 text-center">Ejercicios Te�ricos</h2>
	
			<ul class="list-group mt-3">
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico1.jsp">Ejemplo Servlet B�sico 1 - Sin JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico2.jsp">Ejemplo Servlet B�sico 2 - Con JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico3.jsp">Ejemplo Servlet B�sico 3 - Response Content Type</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/basico4.jsp">Ejemplo Servlet B�sico 4 - Get & Post</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/jsp.jsp">JSP</a></li>
				<li class="list-group-item list-group-item-light"><a href="jstl">JSTL - java Server Tag Libraries</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/el.jsp">EL - Expression Language</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejemplos/errores.jsp">P�ginas de error</a></li>
				<li class="list-group-item list-group-item-light">Ciclo de vida</li>
				<li class="list-group-item list-group-item-light">P�gina de error</li>
			</ul>
			
			<ul>
				<li>Por hacer:</li>
					<ul>
				<li>Session</li>
				<li>Cookies</li>
				<li>Filtros</li>
				<li>Listeners</li>
				<li>Redirecci�n</li>
			</ul></ul>

		</div> <!-- div.col-5 -->
		
 		<div class="col-5 border border-info rounded">	
			<h2 class="bg-info p-3 text-center">Ejercicios</h2>
			<ul class="list-group mt-3">
				<li class="list-group-item list-group-item-light"><a href="nombres">Nombres</a></li>
				<li class="list-group-item list-group-item-light"><a href="backoffice/videos">V�deos</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejercicios/calculadora.jsp">Calculadora</a></li>
				<li class="list-group-item list-group-item-light"><a href="ejercicios/ahorcado.jsp">Ahorcado</a></li>
			</ul>
		</div> <!-- div.col-5 -->
 	</div>
		
<%@include file="includes/footer.jsp" %>