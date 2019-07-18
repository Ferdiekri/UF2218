<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>
<%@page import="java.util.ArrayList"%>
		
		<h1>EL - Expression Language</h1>
		<hr>
		
		<section class="p-3 mb-3 bg-light">
			<h2>Ejemplos</h2>
	 		<p><code>&dollar;{ 2 + 2 } = ${ 2 + 2 }</code></p>
	 		<p><code>&dollar;{ 2 > 4 } = ${ 2 > 4 }</code></p>
	 		
	 		<% ArrayList<String> colores = null; %>
	 		<p><code>&lt;% ArrayList&lt;String&gt; colores = null; %&gt;</code></p>
	 		<p><code>&dollar;{ colores == null } = ${ colores == null }</code></p>
	 		
	 		<% colores.add("red"); %>
	 		<% colores.add("verde"); %>
	 		<% colores.add("azul"); %>
	 		<p><code>&lt;% colores.add("red");&gt;</code></p>
	 		<p><code>&lt;% colores.add("verde");&gt;</code></p>
	 		<p><code>&lt;% colores.add("azul"); %&gt;</code></p>
	 		<p><code>&dollar;{ colores == null } = ${ colores == null }</code></p>
	 		
	 	</section>
		
		
		
		
		
		

<%@include file="../includes/footer.jsp"%>