package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class JstlController
 */
@WebServlet("/jstl")
public class JstlController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<String> colores = new ArrayList<String>();
		colores.add("verde");
		colores.add("rojo");
		colores.add("azul");
		
		request.setAttribute("colores", colores);
		request.setAttribute("isLunes", false);
		request.setAttribute("isMartes", false);
		request.setAttribute("isMiercoles", true);
		request.setAttribute("alerta1", new Alert("danger", "Error on the top."));
		request.setAttribute("alerta2", new Alert("danger", "Todo guay."));

		request.getRequestDispatcher("ejemplos/jstl.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
