package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NombresController
 */
@WebServlet("/nombres")
public class NombresController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static ArrayList<String> lista;
	String mensaje = "";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NombresController() {
		super();
		lista = new ArrayList<String>();
		/*
		 * lista.add("Gaizka"); lista.add("Jon A."); lista.add("Arkaitz");
		 * lista.add("Veronica"); lista.add("Manuel"); lista.add("Mounir");
		 * lista.add("Ander");
		 */
		lista.add("Eder I.");
		lista.add("Jose Luis");
		lista.add("Aritz");
		lista.add("Jon C.");
		lista.add("Asier");
		lista.add("Borja");
		lista.add("Eder S.");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String buscar = request.getParameter("buscar");
		ArrayList<String> lista2 = new ArrayList<String>();
		String stringToSearch;
		Pattern p;
		Matcher m;
		mensaje = "no";

		if (buscar != null) {
			for (String nom : lista) {
				/*
				 * if (buscar.equalsIgnoreCase(nom)) { lista2.add(nom); }
				 */

				stringToSearch = nom.toLowerCase();
				p = Pattern.compile(buscar.toString().toLowerCase()); // the pattern to search for
				m = p.matcher(stringToSearch);

				// now try to find at least one match
				if (m.find()) {
					lista2.add(nom);
				}
			}
			if (lista2.size() > 0) {
				mensaje = "Resultados encontrados con el nombre "+buscar+".";
			}else {
				mensaje = "No se han encontrado resultados con el nombre "+buscar+".";
			}

			request.setAttribute("nombres", lista2);
		} else {
			request.setAttribute("nombres", lista);
		}

		request.setAttribute("buscar", buscar);
		request.setAttribute("mensaje", mensaje);

		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nuevo = request.getParameter("nuevo");

		{

		}

		if (nuevo != null) {
			nuevo = nuevo.trim();

			if ("".equalsIgnoreCase(nuevo)) {
				mensaje = "Por favor, inserte un nombre válido.";
			} else
				mensaje = "Nombre introducido correctamente.";
			lista.add(nuevo);
		} else {

		}

		lista.add(nuevo);
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("nuevo", "");
		doGet(request, response);
	}

}