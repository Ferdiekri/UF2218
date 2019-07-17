<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
<%@page import="com.ipartek.formacion.model.UtilidadesWeb"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
		
 	<h1>JSTL - java Server Tag Libraries</h1>
 	<hr>
 	
 	<section class="p-3 mb-3 bg-light">
 		<p>JavaServer Pages (JSP) es una tecnología que ayuda a los desarrolladores de software a ...</p>
 		<p class="text-danger">*Recordar que hay que importar los taglibraries. EL CODIGO DEL EL TAG</p>
 		<a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm" target="_blank">Tutorial</a>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;c:foreach&gt;</h2>
 		<p>Sirve para iterar sobre una coleccion sin tener que usar <code>&lt;% ... %&gt;</code> scriptlets</p>
 		<p>Usando EL con el <code>&dollar;{colores}</code> --> [verde, rojo, azul]</p>
 		
 		<ul>
	 		<c:forEach items="${colores}" var="color">
	 			<li>${color }</li>
	 		</c:forEach>
 		</ul>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;c:if&gt;</h2>
 		<p>Etiqueta condicional simple que evalúa su cuerpo si la condición suministrada es verdadera.</p>
 		<p>No existe if else --> Se usa el choose (sería un switch)</p>
  		<p><code>c:if test="&dollar;{isLunes}"</code></p>
		<c:if test="${isLunes}">
	 		<p>Hoy es Lunes.</p>
	 	</c:if>
	 	<p><code>c:if test="&dollar;{!isLunes}"</code></p>
	 	<c:if test="${!isLunes}">
	 		<p>Hoy no es Lunes.</p>
	 	</c:if>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;c:choose&gt;</h2>
 		<p>Etiqueta condicional simple que establece un contexto para operaciones condicionales mutuamente excluyentes, marcadas con <code>&lt;when&gt;</code> y <code>&lt;otherwise&gt;</code>.</p>
 		
 		<pre><code>
 			<%=UtilidadesWeb.escapeHtml("<c:choose>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isLunes}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isMartes}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isMiercoles}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:otherwise>") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>No sé qué día es hoy.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:otherwise>") %>
 			<%=UtilidadesWeb.escapeHtml("</c:choose>") %>
 		</code></pre>

		<c:choose>
		         
			<c:when test = "${isLunes}">
				<p>Hoy es Lunes.</p>
			</c:when>
			
			<c:when test = "${isMartes}">
				<p>Hoy es Martes.</p>
			</c:when>
			
			<c:when test = "${isMiercoles}">
				<p>Hoy es Miércoles.</p>
			</c:when>
			
			<c:otherwise>
				<p>No sé qué día es hoy.</p>
			</c:otherwise>
		</c:choose>
		
		
 	</section>
 	
 	
		
<%@include file="../includes/footer.jsp" %>