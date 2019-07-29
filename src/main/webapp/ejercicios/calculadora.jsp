<%@page import="com.ipartek.formacion.controller.CalculadoraController"%>

<%@include file="../../includes/header.jsp" %>
<%@include file="../../includes/navbar.jsp" %>

	<h1>Calculadora</h1>
	<hr>

	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p >${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>
		
	<div class="row justify-content-center align-items-center p-3">	
		<div class="col-8">
			<form action="calculadora" method="post" class="bg-light border-info justify-content-center align-items-center">
			
				<div class="row justify-content-center align-items-center p-3">
					<div class="form-group col-4">
						<label for="num1">Numero 1</label>
						<input type="text" name="num1" class="form-control" value="${num1}" required>
					</div>
					
					<div class="form-group col-4">
						<label for="num2">Numero 2</label>
						<input type="text" name="num2" class="form-control" value="${num2}" required>
					</div>
				</div>
				
				<div class="row justify-content-center align-items-center p-3">
					<div class="form-group col-6">
						<label for="operacion">Operacion</label>
						<select name="operacion" class="form-control">
							<option ${(op == CalculadoraController.NINGUNA)?'selected':'' }>Elegir operacion</option>
							<option ${(op == CalculadoraController.SUMAR)?'selected':'' } value="<%=CalculadoraController.SUMAR%>">Sumar</option>
							<option ${(op == CalculadoraController.RESTAR)?'selected':'' } value="<%=CalculadoraController.RESTAR%>">Restar</option>
							<option ${(op == CalculadoraController.MULTIPLICAR)?'selected':'' }  value="<%=CalculadoraController.MULTIPLICAR%>">Multiplicar</option>
							<option ${(op == CalculadoraController.DIVIDIR)?'selected':'' }  value="<%=CalculadoraController.DIVIDIR%>">Dividir</option>
						</select>
					</div>
				</div>
				
				<div class="row justify-content-center align-items-center p-3">
					<div class="form-group col-10">
						<input type="submit"
							value="Calcular"
							class="btn btn-outline-success btn-lg text-center btn-block mb-2 mt-2 p-3 w-100">
					</div>
				</div>
			</form>
			
		</div> <!-- div.col -->
		
		<c:if test="${resultado != null and op != 0}">
			<div class="col-4 bg-info justify-content-center align-items-center">
			
				<div class="form-group p-3">
					<label for="resultado">Resultado: </label>
					<span class="bg-light w-100 p-2">
						<fmt:formatNumber pattern="#,###.##" value="${resultado}"/>
					</span>
				</div>
			</div> <!-- div.col -->
		</c:if>
		
	</div> <!-- div.row -->
	
<%@include file="../../includes/footer.jsp"%>