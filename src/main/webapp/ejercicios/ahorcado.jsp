<%@page import="com.ipartek.formacion.controller.AhorcadoController"%>

<%@include file="../../includes/header.jsp" %>
<%@include file="../../includes/navbar.jsp" %>

	<h1>Ahorcado</h1>
	<hr>
	
	<a class="btn btn-outline-info btn-lg text-center btn-block mb-3 p-3 w-100 align-items-baseline"
		href="ahorcado?nuevo=si"><i class="fas fa-play fa-2x"></i> Empezar partida</a>

	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p >${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>
	
	<style>
		#pizarra{
			background-image: url("resources/images/pizarra.png");
		  	background-size: 100% 100%;
		  	color: #FFF;
		  	height: 500px;
		}
		
		.cuadrado{
		width: 80px;
		height: 80px;
		border: 5px solid #FFF;
		font-size: 3em;
		padding: 0;
		margin: 0;
		}
	</style>
	
		
	<div id="pizarra" class="row justify-content-center align-items-center p-3">	
		<div class="col-10">
			
			
			<p>${palabra }</p>
			<p>${letras }</p>
			
			
		</div> <!-- div.col -->	
		
	</div> <!-- div.row -->
	
	<div class="row justify-content-center align-items-center p-3">
		<div class="col-8">
			<form action="ahorcado" method="post" class="bg-light border-info justify-content-center align-items-center">
				
				<div class="form-group col-4">
					<label for="letra">Introduce una letra</label>
					<input type="text" name="letra" class="form-control" value="${letra}" required>
				</div>
	
				<div class="form-group col-10">
					<input type="submit"
						value="Comprobar letra"
						class="btn btn-outline-success btn-lg text-center btn-block mb-2 mt-2 p-3 w-100">
				</div>
			</form>
		</div><!-- div.col -->
	
	</div><!-- div.row PALABRA -->
	
	
	
<%@include file="../../includes/footer.jsp"%>