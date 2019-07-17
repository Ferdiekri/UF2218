<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Nombres</h1>
 	<hr>
 	
 	<h2 class="m-5">Ejemplo GET</h2>
 	<p>El método GET solicita una representación del recurso especificado. Las solicitudes que usan GET solo deben recuperar datos y no deben tener ningún otro efecto. (Esto también es cierto para algunos otros métodos HTTP.)</p>
 	<p>Sirve para solicitar datos al  servidor. Si escribimos la URL en el navegador es GET. Si pulsamos un enlace con la etiqueta <code>a</code> es GET. Un formulario también puede ser get.</p>
 	
 	<a class="btn btn-outline-info btn-lg text-center btn-block  m-3" href="getpost?nombre=Manolo">Ejemplo GET</a>
 	
 	<h2 class="m-5">Ejemplo POST</h2>
 	<p>Envía los datos para que sean procesados por el recurso identificado. Los datos se incluirán en el cuerpo de la petición. Esto puede resultar en la creación de un nuevo recurso o de las actualizaciones de los recursos existentes o ambas cosas.</p>
 	<p>Siempre se envía mediante una etiquieta <code>form</code> con el <code>method="post"</code>.</p>
 	 
 	<form action="getpost" method="post">
 		<input type="text" name="nombre" placeholder="Dime tu nombre" required />
 		<br>
 		<input type="submit" value="Enviar">
 	</form>	
	
<%@include file="../includes/footer.jsp" %>