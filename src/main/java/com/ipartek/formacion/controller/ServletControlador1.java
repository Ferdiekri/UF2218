package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletControlador1
 */
@WebServlet("/controlador1")
public class ServletControlador1 extends HttpServlet implements Servlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Obtener datos de cliente a través de ls REQUEST

		// Dar una respuesta a través de la RESPONSE.
		
		PrintWriter out = response.getWriter();
		
		// Incluir encabezados
		
		RequestDispatcher rd1 = request.getRequestDispatcher("includes/header.jsp");
		RequestDispatcher rd2 = request.getRequestDispatcher("includes/navbar.jsp");
		rd1.include(request, response); 
		rd2.include(request, response); 
		
		// out.print("<%@include file=\"includes/header.jsp\" %>");
		// out.print("<%@include file=\"includes/navbar.jsp\" %>");
		
		out.print("<h1 class=\"text-warning\">Respuesta desde ServletControlador1</h1><hr>");

		
		//Parsear el user-agent
		//https://developers.whatismybrowser.com/useragents/parse/#parse-useragent
		
		out.print("<p class=\"text-warning\">User-Agent: " + request.getHeader("user-agent") + "</p>");

		// Mirar versión http y más cosas.
		
		// Todos los datos de la cabecera.
		Enumeration<String> headerNames = request.getHeaderNames();
		out.print("<h2 class=\"text-danger\">Header Names</h2>");

		out.print("<table class=\"table\"><thead><tr><th scope=\"col\">Name</th><th scope=\"col\">Value</th></tr></thead><tbody>");
		while (headerNames.hasMoreElements()) {
			String headerName = headerNames.nextElement();
			out.print("<tr><td>" + headerName + "</td>");
			String headerValue = request.getHeader(headerName);
			if ("user-agent".equalsIgnoreCase(headerName)) {
				out.print("<td style=\"background-color:yellow\">" + headerValue + "</td></tr>");
			}else {
				out.print("<td>" + headerValue + "</td></tr>");
			}
			
		}
		out.print("</tbody></table>");
		
		// Todos los parametros que envíe el usuario.
		out.print("<h2 class=\"text-danger\">Parámetros del usuario</h2>");
		Enumeration<String> parameterNames =request.getParameterNames();
		
		out.print("<table class=\"table\"><thead><tr><th scope=\"col\">Name</th><th scope=\"col\">Value</th></tr></thead><tbody>");
		
		while (parameterNames.hasMoreElements()) {
			String parameterName = parameterNames.nextElement();
			out.print("<tr><td>" + parameterName + "</td>");
			String parameterValue = request.getParameter(parameterName);
			out.print("<td>" + parameterValue + "</td></tr>");
		}
		out.print("</tbody></table>");
		
		RequestDispatcher rd3 = request.getRequestDispatcher("includes/footer.jsp");
		rd3.include(request, response); 
		
		out.flush();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Tenemos el GET y POST unidos (puenteados); hacen lo mismo.
		doGet(request, response);
	}

}
