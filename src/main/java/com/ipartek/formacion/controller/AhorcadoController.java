package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AhorcadoController
 */
@WebServlet("/ahorcado")
public class AhorcadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String VIEW = "ejercicios/ahorcado.jsp";

	public static ArrayList<String> palabras;
	char[] adivinar;
	//char[] resuelto;

	String nuevo;
	int indice;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);

		palabras = new ArrayList<String>();
			palabras.add("ROJO");
			palabras.add("VERDE");
			palabras.add("AZUL");
		
		
		nuevo = "si";
		indice = 0;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		nuevo = request.getParameter("nuevo");

		if ("si".equalsIgnoreCase(nuevo)) { // NUEVA PARTIDA
			adivinar=null;
			adivinar = seleccionarPalabra();

		} else { // NO NUEVA PARTIDA

		}
		
		request.setAttribute("palabra", adivinar);
		request.setAttribute("letras", adivinar.length);

		request.getRequestDispatcher(VIEW).forward(request, response);

	}

	private char[] seleccionarPalabra() {

		int elegir = 0;

		elegir = (int) (Math.random() * palabras.size());
		String palabra = palabras.get(elegir);

		char[] resultado = new char[palabra.length()];

		for (int i = 0; i < resultado.length; i++) {
			resultado[i] = palabra.charAt(i);
		}

		return resultado;
	}

}
