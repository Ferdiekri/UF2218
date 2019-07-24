<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>

<%@include file="../../includes/header.jsp" %>
<%@include file="../../includes/navbar.jsp" %>

	<h1>Ahorcado</h1>
	<hr>

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
		}
	</style>
	
		
	<div class="row justify-content-center align-items-center p-3">	
		<div id="pizarra" class="col-10">
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
			
		</div> <!-- div.col -->		
	</div> <!-- div.row -->
	
<%@include file="../../includes/footer.jsp"%>