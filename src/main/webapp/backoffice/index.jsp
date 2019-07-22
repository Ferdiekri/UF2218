<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
		
 	<h1>Backoffice</h1>
 	<hr>
 	
 	<c:if test="${mensaje != null}">
		<div class="alert alert-${mensaje.tipo} alert-dismissible fade show" role="alert">
		  <p >${mensaje.texto}</p>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
	</c:if>
	
	
<%@include file="../includes/footer.jsp" %>