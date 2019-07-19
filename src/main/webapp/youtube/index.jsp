<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>

		
 	<h1>Listado de videos de YouTube</h1>
 	<hr>
	
	<a class="btn btn-outline-info btn-lg text-center btn-block mb-3 p-3 w-100" href="videos?op=2"><i class="far fa-file fa-2x"></i> Crear nuevo video</a>
 	
 	<table class="table table-hover table-dark">
		<thead>
			<tr class="text-uppercase">
				<th scope="col">Id</th>
				<th scope="col">Nombre</th>
				<th scope="col">Codigo</th>
			</tr>
		</thead>
		<tbody>			
			<c:forEach items="${videos}" var="video">
				
				<tr>
		 			<td>${video.id }</td>
		 			<td><a href="videos?op=3&id=${video.id }">${video.nombre }</a></td>
		 			<td>${video.codigo }</td>
		 		</tr>
		 		
		 	</c:forEach>
			
		</tbody>
	</table>
 	
 	<hr>
 	<p class="bg-success">${videos}</p>
		
<%@include file="../includes/footer.jsp" %>