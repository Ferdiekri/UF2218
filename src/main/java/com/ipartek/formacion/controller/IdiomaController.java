package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IdiomaController
 */
@WebServlet("/i18n")
public class IdiomaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Locale locale;
       
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idiomaSeleccionado = request.getParameter("idiomaSeleccionado");
		String ruta = request.getParameter("ruta");
		ruta = ruta.split("UF2018/")[1];
		
		String languaje = "es";
		String country = "ES";
		
		if ( idiomaSeleccionado != null ) {
			languaje = idiomaSeleccionado.split("_")[0];
			country = idiomaSeleccionado.split("_")[1];
			
		}
		
		locale = new Locale(languaje,country);
		
		ResourceBundle properties = ResourceBundle.getBundle ( "i18n/i18nmessages", locale );
		
		// Guardamos en la sesión para usarla en los JSPs.
		HttpSession session = request.getSession();
		session.setAttribute("idiomaSeleccionado", idiomaSeleccionado);
		
		
		request.setAttribute("mensajeIdiomaInicio", properties.getString("menu.inicio") );
		request.setAttribute("mensajeIdiomaEjemplos", properties.getString("menu.ejemplos") );
		
		// request.setAttribute("mensajeIdioma", idiomaSeleccionado);
		
		if (ruta != null) {
			request.getRequestDispatcher("ejemplos/i18n.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher(ruta).forward(request, response);
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}