<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

		<nav class="navbar navbar-expand-lg navbar-dark bg-info">
			<a class="navbar-brand" href="#">JEE</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
		
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="${pageContext.request.contextPath}/">
							<fmt:message key="menu.inicio" />
						<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						 	<fmt:message key="menu.ejemplos" />
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="ejemplos/basico1.jsp">Sin JSP</a>
							<a class="dropdown-item" href="ejemplos/basico2.jsp">Con JSP</a>
							<a class="dropdown-item" href="ejemplos/basico3.jsp">Content Type</a>
							<a class="dropdown-item" href="ejemplos/basico4.jsp">Get & Post</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						 	<fmt:message key="menu.teoria" />
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="ejemplos/jsp.jsp">JSP</a>
							<a class="dropdown-item" href="ejemplos/jstl.jsp">JSTL</a>
							<a class="dropdown-item" href="ejemplos/el.jsp">EL - Expression Language</a>
							<a class="dropdown-item" href="ejemplos/errores.jsp">Páginas de error</a>
						</div>
					</li>
					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						 	<fmt:message key="menu.ejercicios" />
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:if test="${usuario != null}">
									<a class="dropdown-item" href="backoffice/videos">Vídeos<span class="sr-only">(current)</span></a>
							</c:if>
							<a class="dropdown-item" href="nombres">Nombres<span class="sr-only">(current)</span></a>
							<a class="dropdown-item" href="ejercicios/calculadora.jsp">Calculadora<span class="sr-only">(current)</span></a>
							<a class="dropdown-item" href="ejercicios/ahorcado.jsp">Ahorcado<span class="sr-only">(current)</span></a>
						</div>
					</li>
					
					
					
					
					<c:if test="${usuario == null}">
			       		<li class="nav-item">
							<a class="nav-link" href="login.jsp"><i class="fas fa-user-lock"></i> 
								<fmt:message key="menu.login" />
							<span class="sr-only">(current)</span></a>
						</li>
			        </c:if>
					
			        <c:if test="${usuario != null}">
						<li class="nav-item">
							<a class="nav-link" href="logout"><i class="fas fa-door-open"></i> ${usuario} <fmt:message key="menu.logout" /><span class="sr-only">(current)</span></a>
						</li>
					</c:if>
					
					
					
					
					
				</ul>
			</div>
		</nav> <!-- nav.navbar -->
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-white justify-content-end">	
			<a href="i18n?idiomaSeleccionado=es_ES&ruta=${pageContext.request.requestURL}"
				class="pr-2 ${idiomaSeleccionado == 'es_ES'?'text-uppercase text-danger font-weight-bold':'' }">es</a>
			<a href="i18n?idiomaSeleccionado=en_EN&ruta=${pageContext.request.requestURL}"
				class="pr-2 ${idiomaSeleccionado == 'en_EN'?'text-uppercase text-danger font-weight-bold':'' }">en</a>
			<a href="i18n?idiomaSeleccionado=eu_ES&ruta=${pageContext.request.requestURL}"
				class="pr-2 ${idiomaSeleccionado == 'eu_ES'?'text-uppercase text-danger font-weight-bold':'' }">eu</a>
		</nav> <!-- nav.navbar -->
	
	<main class="container text-dark">
	
	
	