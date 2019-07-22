<%@page import="com.ipartek.formacion.controller.VideoController"%>

<%@include file="../../includes/header.jsp" %>
<%@include file="../../includes/navbar.jsp" %>

	<h1>Detalle Video</h1>
	<hr>
	<a class="btn btn-outline-info btn-lg text-center btn-block p5 mb-3" href="backoffice/videos">Volver al listado</a>
	
	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p >${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>	
	<div class="row justify-content-center align-items-center">	
		<div class="col-6">
			<form action="videos" method="post" class="bg-light border-info justify-content-center align-items-center">
			
				<input type="hidden" name="op" value="<%=VideoController.OP_GUARDAR%>">
			
				<div class="form-group p-3">
					<label for="idVideo">Id del video</label>
					<input type="text" name="id" class="form-control" value="${video.id}" readonly>
				</div>
				
				<div class="form-group p-3">
					<label for="nombreVideo">Nombre del video</label>
					<input type="text" class="form-control" name="nombre" value="${video.nombre}" required placeholder="Mínimo 3 máximo 150">
				</div>
				
				<div class="form-group p-3">
					<label for="codigoVideo">Codigo del video</label>
					<input type="text" class="form-control" name="codigo" value="${video.codigo}" required placeholder="Exactamente 11">
				</div>
			
				<input type="submit"
					value="${(video.id != -1)?'Editar video':'Guardar video'}"
					class="btn btn-outline-success btn-lg text-center btn-block mb-2 mt-2 p-3 w-100">
		
			</form>
			
			<c:if test="${video.id != -1}">
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Eliminar vídeo</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        Estas seguro que deseas eliminar el video?
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-outline-info btn-lg text-center w-25"
				        data-dismiss="modal">Cerrar</button>
				        <form action="videos" method="post">	
							<input type="hidden" name="op" value="<%=VideoController.OP_ELIMINAR%>">
							<input type="hidden" name="id" value="${video.id}" readonly>			
							<input type="submit" value="Eliminar video"
								class="btn btn-outline-danger btn-lg text-center btn-block w-100">	
						</form>
				      </div>
				    </div>
				  </div>
				</div>
				<!-- Fin Modal -->
			</c:if>
			
			<!-- Modal -->
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-outline-danger btn-lg text-center btn-block mb-2 mt-2 p-3 w-100" data-toggle="modal" data-target="#exampleModal">
			  Eliminar
			</button>
			
			
			
		</div> <!-- div.col -->
		
		<div class="col-6 align-self-start">	
		
			<iframe width="500" 
			        height="300" 
			        src="https://www.youtube.com/embed/${video.codigo}" 
			        frameborder="0" 
			        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
			        allowfullscreen></iframe>
			        
		</div> <!-- div.col -->
	</div> <!-- div.row -->
	
<%@include file="../../includes/footer.jsp"%>