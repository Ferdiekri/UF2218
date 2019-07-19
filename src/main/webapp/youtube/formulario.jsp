<%@page import="com.ipartek.formacion.controller.VideoController"%>
<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Formulario de YouTube</h1>
 	<hr>
	
	<div class="row justify-content-center align-items-center">	
		<div class="col-8">
			<p class="bg-success">${video}</p>
			<a class="btn btn-outline-info btn-lg text-center btn-block p5 mb-3" href="videos">Volver al listado</a>

			<form method="post" action="videos" class="bg-light border-info justify-content-center align-items-center"> 	
				<div class="form-group p-3">
					<label for="idVideo">Id del video</label>
					<input type="text" name="idVideo" class="form-control" placeholder="${video.id }" value="${video.id }" readonly>
				</div>
		 
				<div class="form-group p-3">
					<label for="nombreVideo">Nombre del video</label>
					<input type="text" class="form-control" name="nombreVideo" placeholder="${video.nombre }" value="${video.nombre }" required>
				</div>
				
				<div class="form-group p-3">
					<label for="codigoVideo">Codigo del video</label>
					<input type="text" class="form-control" name="codigoVideo" placeholder="${video.codigo }" value="${video.codigo }" required>
				</div>
				<input type="hidden" name="op" value="<%=VideoController.OP_GUARDAR%>">
				<input type="submit" value="${(video.id != -1)?'Modificar':'Crear'}">
				<div class="row align-items-stretch">
						
					<c:choose>
		 				<c:when test = "${mostrar}">
		 					<div class="col-12">
								<button type="submit" name="opcion" value="${VideoController.OPCION_CREAR }" class="btn btn-outline-success btn-lg text-center btn-block mb-2 mt-2 p-3 w-100"><i class="far fa-file fa-2x"></i> Guardar video</button>
							</div>
		 				</c:when>
		 				<c:when test = "${!mostrar}">
		 					<div class="col-6">
								<button type="submit" name="opcion" value="${VideoController.OPCION_MODIFICAR }" class="btn btn-outline-warning btn-lg text-center btn-block mb-2 mt-2 p-3 w-100"><i class="fas fa-pencil-alt fa-2x"></i> Editar video</button>
							</div>
							<div class="col-6">
								<button type="submit" name="opcion" value="${VideoController.OPCION_BORRAR }" class="btn btn-outline-danger btn-lg text-center btn-block mb-2 mt-2 p-3 w-100 align-self-stretch"><i class="fas fa-trash-alt fa-2x"></i> Eliminar video</button>
							</div>
		 				</c:when>
		 			</c:choose>
					
				</div>
			</form>
			
			<c:if test="${video.id != -1}">
		<form action="videos" method="post">	
			<input type="hidden" name="op" value="<%=VideoController.OP_ELIMINAR%>">
			<input type="hidden" name="id" value="${video.id}" readonly>			
			<input type="submit" value="Eliminar">	
		</form>
	</c:if>	
			
		</div> <!-- div.col -->
	</div> <!-- div.row -->
	
				  <!-- 		 
				<input type="search"
					name="buscar"
			  		id="buscar"
			  		value="${buscar}"
			  		required
			  		class="form-control  mr-sm-2 form-control-lg"  
			  		placeholder="nombre a buscar">
 	 -->
		
<%@include file="../includes/footer.jsp" %>
