<%@include file="../includes/header.jsp" %>
<%@include file="../includes/navbar.jsp" %>
<%@page import="com.ipartek.formacion.model.UtilidadesWeb"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
		
 	<h1>JSP</h1>
 	<hr>
 	
 	<section class="p-3 mb-3 bg-light">
 		<p>Los elementos de script nos permiten insertar c�digo Java dentro del servlet que se generar� desde la p�gina JSP actual.</p>
 		<p>Hay tres formas:
 			<ul>
 				<li>Scriptlets de la forma <code>&lt;% c�digo %&gt;</code> que se insertan dentro del m�todo service del servlet</li>
 				<li>Expresiones de la forma <code>&lt;%= expresi�n %&gt;</code> que son evaluadas e insertadas en la salida.</li>
 				<li>Declaraciones de la forma <code>&lt;%! c�digo %&gt;</code> que se insertan en el cuerpo de la clase del servlet, fuera de cualquier m�todo existente.</li>
 			</ul>
 		</p>
 		<a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm" target="_blank">Tutorial</a>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;% c�digo %&gt;</h2>
 		<p>Sirve para iterar sobre una coleccion sin tener que usar <code>&lt;% ... %&gt;</code> scriptlets</p>
 		
 		<pre><code>
 			<%=UtilidadesWeb.escapeHtml("<c:choose>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isLunes}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 		</code></pre>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;%= expresi�n %&gt;</h2>
 		<p>Sirve para iterar sobre una coleccion sin tener que usar <code>&lt;% ... %&gt;</code> scriptlets</p>
 		
 		<pre><code>
 			<%=UtilidadesWeb.escapeHtml("<c:choose>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isLunes}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 		</code></pre>
 	</section>
 	
 	<section class="p-3 mb-3 bg-light">
 		<h2>&lt;%! c�digo %&gt;</h2>
 		<p>Sirve para iterar sobre una coleccion sin tener que usar <code>&lt;% ... %&gt;</code> scriptlets</p>
 		
 		<pre><code>
 			<%=UtilidadesWeb.escapeHtml("<c:choose>") %>
 			<%=UtilidadesWeb.escapeHtml("	<c:when test = \"${isLunes}\">") %>
 			<%=UtilidadesWeb.escapeHtml("		<p>Hoy es Lunes.</p>") %>
 			<%=UtilidadesWeb.escapeHtml("	</c:when>") %>
 		</code></pre>
 	</section>
 	
 	
		
<%@include file="../includes/footer.jsp" %>