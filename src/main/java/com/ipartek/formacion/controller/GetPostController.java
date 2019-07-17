package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPostController
 */
@WebServlet("/getpost")
public class GetPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		saludar(request,response,request.getParameter("nombre"));
	}

	private void saludar(HttpServletRequest request, HttpServletResponse response, String parameter) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		RequestDispatcher rd1 = request.getRequestDispatcher("includes/header.jsp");
		RequestDispatcher rd2 = request.getRequestDispatcher("includes/navbar.jsp");
		rd1.include(request, response); 
		rd2.include(request, response);
		
		
		out.print("<h1 class=\"text-dark bg-warning mt-3 p-5\">Hola "+ parameter + "</h1>");
		
		out.close();		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		saludar(request,response,request.getParameter("nombre"));
	}

}
