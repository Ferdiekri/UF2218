package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/calculadora")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String SUMAR = "1";
	public static final String RESTAR = "2";
	public static final String MULTIPLICAR = "3";
	public static final String DIVIDIR = "4";

	public static final String VIEW = "ejercicios/calculadora.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		float num1 = Float.parseFloat(request.getParameter("num1"));
		float num2 = Float.parseFloat(request.getParameter("num2"));
		String operacion = request.getParameter("operacion");
		float resul = 0f;

		switch (operacion) {
		case SUMAR:
			resul = num1 + num2;
			break;

		case RESTAR:
			resul = num1 - num2;
			break;

		case MULTIPLICAR:
			resul = num1 * num2;
			break;

		case DIVIDIR:
			if (num2 == 0) {
				request.setAttribute("mensaje", new Alert("danger", "Lo sentimos, pero no se puede dividir entre " + num2));
			} else {
				resul = num1 / num2;
			}
			break;

		default:
			// listar(request, response);
			break;
		}


		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("resultado", resul);

		request.getRequestDispatcher(VIEW).forward(request, response);
	}

}
