<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
		
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
		 			<td><a href="videos?op=3&id=idVideo&nombre=nombreVideo&codigo=codigoVideo">${video.nombre }</a></td>
		 			<td>${video.codigo }</td>
		 		</tr>
		 		
		 	</c:forEach>
			
		</tbody>
	</table>
 	
 	<i class="far fa-file"></i>
 	<i class="fas fa-trash-alt"></i>
 	<i class="fas fa-pencil-alt"></i>
 	
 	
 	${videos}
		
<%@include file="../includes/footer.jsp" %>