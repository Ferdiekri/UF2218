<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Formulario de YouTube</h1>
 	<hr>
	
	<div class="row justify-content-center align-items-center">	
		<div class="col-8">
			<a class="btn btn-outline-info btn-lg text-center btn-block p5 mb-3" href="videos?op=1">Volver al listado</a>

			<form method="post" action="videos" class="bg-light border-info justify-content-center align-items-center"> 	
				<div class="form-group p-3">
					<label for="idVideo">Id del video</label>
					<input type="text" id="idVideo" class="form-control" placeholder="${video.id }" value="${video.id }">
				</div>
							  		 
				<div class="form-group p-3">
					<label for="nombreVideo">Nombre del video</label>
					<input type="text" class="form-control" id="nombreVideo" placeholder="${video.nombre }" value="${video.nombre }" required>
				</div>
				
				<div class="form-group p-3">
					<label for="codigoVideo">Codigo del video</label>
					<input type="text" class="form-control" id="codigoVideo" placeholder="${video.codigo }" value="${video.codigo }" required>
				</div>
				<input type="hidden" id="op" name="op" value="3">
				<div class="row align-items-stretch">
					<div class="col-12">
						<button type="submit" class="btn btn-outline-success btn-lg text-center btn-block mb-2 mt-2 p-3 w-100"><i class="far fa-file fa-2x"></i> Crear nuevo video</button>
					</div>
					<div class="col-6">
						<button type="submit" class="btn btn-outline-warning btn-lg text-center btn-block mb-2 mt-2 p-3 w-100"><i class="fas fa-pencil-alt fa-2x"></i> Editar nuevo video</button>
					</div>
					<div class="col-6">
						<button type="submit" class="btn btn-outline-danger btn-lg text-center btn-block mb-2 mt-2 p-3 w-100 align-self-stretch"><i class="fas fa-trash-alt fa-2x"></i> Eliminar video</button>
					</div>
				</div>
				
				
				
			</form>
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
