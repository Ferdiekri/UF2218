<%@page
	import="com.ipartek.formacion.controller.listener.UsuariosLogeadosListener"%>
<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

	<h1>Backoffice</h1>
	<hr>
	
	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show"
			role="alert">
			<p>${mensaje.texto}</p>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	</c:if>
	
	<meta http-equiv="refresh" content="3">
	
	<%=UsuariosLogeadosListener.nombre%>

	<h2>Listado de eventos:</h2>
	<p class="bg-success">toString(): <%=UsuariosLogeadosListener.sesiones%></p>
	<hr>
	
	<ul>
		<c:forEach items="${UsuariosLogeadosListener.sesiones}" var="s">	
			<li>${s }</li>	
	 	</c:forEach>
 	</ul>

<%@include file="../includes/footer.jsp"%>


/*
 El usuario, cada vez que vaya al detalle del vídeo, sacar un dropdown button que ha estado viendo.
 
 new Alert("info","Hay que iniciar sesión para poder entrar.")
 new Alert("warning", "Se ha caducado la sesión."
*/