<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

	<h1>Listado Videos</h1>
	<hr>
	
	<a class="btn btn-outline-info btn-lg text-center btn-block mb-3 p-3 w-100"
		href="videos?op=<%=VideoController.OP_NUEVO%>"><i class="far fa-file fa-2x"></i> Crear nuevo video</a>
	
	<table class="table table-hover table-dark">
		<thead>
			<tr class="text-uppercase">
				<th scope="col">Id</th>
				<th scope="col">Nombre</th>
				<th scope="col">Codigo</th>
			</tr>
		</thead>
		<tbody>			
			<c:forEach items="${videos}" var="v">
				
				<tr>
		 			<td>${v.id }</td>
		 			<td><a href="videos?op=<%=VideoController.OP_DETALLE%>&id=${v.id}">${v.nombre}</a></td>
		 			<td>${v.codigo }</td>
		 		</tr>
		 		
		 	</c:forEach>
			
		</tbody>
	</table>
	
<%@include file="../includes/footer.jsp"%>