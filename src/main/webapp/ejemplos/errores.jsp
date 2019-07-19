<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
<%@page import="java.util.ArrayList"%>

	<h1>Páginas de error</h1>
	
	<div class="row">
	</div>	
	
	<div class="row">	
		<div class="col-8">	
			<h2 class="bg-info p-5 text-center">Listado Nombres</h2>
			<a class="btn btn-outline-info btn-lg text-center btn-block pl-5 pr-5 mt-5 mb-3" href="nombres">Ver todos</a>

			<form method="get" action="nombres" class="form-inline justify-content-center align-items-center "> 	
				<label class="sr-only" for="buscar">Nombre</label>
				<input type="search"
			  		 name="buscar"
			  		 id="buscar"
			  		 value="${buscar}"
			  		 required
			  		 class="form-control  mr-sm-2 form-control-lg"  
			  		 placeholder="nombre a buscar">			  		 
				<button type="submit" class="btn btn-outline-info btn-lg text-center m-3">
					<i class="fas fa-search"></i> Buscar
				</button>
			</form>
			
			
			<%
				if (request.getAttribute("mensaje") != null){ 
			%>
					<div class="row justify-content-center text-center">
						<div class="col-10 alert alert-${mensaje.tipo } p-3" role="alert">
						<p>${mensaje.texto }</p>
						</div>
					</div>
			<% 
				}
			%>
			
			<ul class="list-group w-50 text-center p-3 justify-content-center mx-auto">
			  <%
			 	 ArrayList<String> nombres = (ArrayList<String>)request.getAttribute("nombres");
			     for( String nombre : nombres ){
			  %>	
			  		<li class="list-group-item"><%=nombre%></li>
			  <%
			     } // end for
			  %>
			</ul>		
		</div>
				
		<div class="col-4 align-items-center">
			<h2 class="bg-info p-5 text-center">Nuevo Nombre</h2>
			<form method="post" action="nombres" class=" justify-content-center align-items-center mt-5 w-100">			  	
				<label class="sr-only" for="nuevo">Nombre</label>
				<input type="search"
			  		 name="nuevo"
			  		 id="nuevo"
			  		 value="${nuevo}"
			  		 required
			  		 class="form-control mb-2 mr-sm-2 form-control-lg"  
			  		 placeholder="nombre a guardar">			  		 
				<button type="submit" class="btn btn-outline-info btn-lg btn-block text-center">
					<i class="fas fa-pencil-alt"></i> Guardar
				</button>
			</form>
		</div>	
	</div> <!-- .row -->
	
<%@include file="../includes/footer.jsp" %>