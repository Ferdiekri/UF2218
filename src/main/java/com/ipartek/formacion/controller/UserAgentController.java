package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eu.bitwalker.useragentutils.UserAgent;

/**
 * Servlet implementation class UserAgentController
 */
@WebServlet("/useragent")
public class UserAgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doProcess(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//TODO mirar user-agent de la cabecera
		
		PrintWriter out = response.getWriter();
		String icono="<i class=\"fas fa-question\"></i>";
		
		out.print("<h2 class=\"text-danger\">Resultados</h2>");
		
		UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader("User-Agent"));
		
		request.setAttribute("todo", userAgent);
		
		if ("chrome".equalsIgnoreCase(userAgent.getBrowser().toString())) {
			icono= "<i class=\"fab fa-chrome tetx-success\"></i>";
		}else if ("firefox".equalsIgnoreCase(userAgent.getBrowser().toString())) {
			icono= "<i class=\"fab fa-firefox tetx-success\"></i>";
		}else if ("IE".equalsIgnoreCase(userAgent.getBrowser().toString())) {
			icono= "<i class=\"fab fa-internet-explorer tetx-success\"></i>";
		}
		
		String userAgentMobile = request.getHeader("User-Agent").toLowerCase();
		
		if (userAgentMobile.contains("mobile")) {
			request.setAttribute("movil", true);
		}else {
			request.setAttribute("movil", false);
		}
		
		request.setAttribute("icono", icono);
		request.setAttribute("navegador", userAgent.getBrowser());
		request.setAttribute("version", userAgent.getBrowserVersion());
		
		request.getRequestDispatcher("ejemplos/basico2.jsp").forward(request, response);
		
	}
}
