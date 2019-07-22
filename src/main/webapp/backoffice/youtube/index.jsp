<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../../includes/header.jsp" %>
<%@include file="../../includes/navbar.jsp" %>

	<h1>Listado Videos</h1>
	<hr>
	
	<a class="btn btn-outline-info btn-lg text-center btn-block mb-3 p-3 w-100"
		href="backoffice/videos?op=<%=VideoController.OP_NUEVO%>"><i class="far fa-file fa-2x"></i> Crear nuevo video</a>
	
	<div class="row justify-content-center align-items-top">	
	
		<c:forEach items="${videos}" var="v">
				
				<div class="col-3 mb-3">
					<div class="card">
						<a href="backoffice/videos?op=<%=VideoController.OP_DETALLE%>&id=${v.id}">
							<img src="https://img.youtube.com/vi/${v.codigo }/hqdefault.jpg" class="card-img-top" alt="Vista previa del vídeo.">
						</a>
						<div class="card-body">
							<span class="card-text"><a href="backoffice/videos?op=<%=VideoController.OP_DETALLE%>&id=${v.id}">${v.nombre}</a></span>
						</div>
					</div>
			
				</div> <!-- div.col -->
		 		
		 	</c:forEach>
	
	</div> <!-- div.row -->
	
	<!-- Lo mismo pero en una tabla 
	<table class="table table-hover table-dark">
		<thead>
			<tr class="text-uppercase">
				<th scope="col">Previa</th>
				<th scope="col">Id</th>
				<th scope="col">Nombre</th>
				<th scope="col">Codigo</th>
			</tr>
		</thead>
		<tbody>			
			<c:forEach items="${videos}" var="v">
				<tr>
					<td><img alt="Vista previa del vídeo." src="https://img.youtube.com/vi/${v.codigo }/default.jpg"></td>
		 			<td>${v.id }</td>
		 			<td><a href="backoffice/videos?op=<%=VideoController.OP_DETALLE%>&id=${v.id}">${v.nombre}</a></td>
		 			<td>${v.codigo }</td>
		 		</tr>
		 	</c:forEach>
		</tbody>
	</table>
	-->
	
<%@include file="../../includes/footer.jsp"%>