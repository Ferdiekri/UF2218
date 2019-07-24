<%@include file="includes/header.jsp" %>
<%@include file="includes/navbar.jsp" %>
		
 	<h1>Login</h1>
 	<hr>
 	
	<c:if test="${mensaje != null}">
		
	</c:if>
	<c:if test="${mensaje == null}">
		<div class="alert alert-info alert-dismissible fade show" role="alert">
		  <p >${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>
	
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3 class="text-info">Back Office</h3>
			</div>
			<div class="card-body">
				<form action="login" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" name="usuario" placeholder="Usuario">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" name="pass" placeholder="Usuario">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Recu�rdame
					</div>
					<div class="form-group">
						<input type="submit" value="Entrar" class="btn btn-outline-info float-right login_btn">
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					No eres un usuario? <a href="#"> Date de alta.</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Olvidaste tu contrase�a?</a>
				</div>
			</div>
		</div>
	</div>
	
	
<%@include file="includes/footer.jsp" %>