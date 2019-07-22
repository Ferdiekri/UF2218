package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class ListadoNombresController
 */
@WebServlet("/nombres")
public class ListadoNombresController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static ArrayList<String> lista;
	private static Alert mensaje;
       
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("1º peticion de un cliente");
		
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
		
	    mensaje = new Alert("info", "Alerta sin crear.");
	}

	public void destroy() {
		System.out.println("Al parar el servidor");
	}
   
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Antes de servir GET o POST");
		super.service(request, response);
		System.out.println("Despues de servir GET o POST");
		
	}
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String buscar = request.getParameter("buscar");
		
		
		if ( buscar != null && !buscar.trim().isEmpty() ) {
			
			ArrayList<String> listaFiltrada = new ArrayList<String>();
			for (String nombre : lista) {			
				if ( nombre.toLowerCase().contains(buscar.toLowerCase())) {
					listaFiltrada.add(nombre);
				}
			}
			request.setAttribute("nombres", listaFiltrada );
			
			if (listaFiltrada.size()>0) {
				mensaje.setTipo("success");				
				mensaje.setTexto("Resultados de búsqueda de <b>" + buscar + "</b>.");
			}else {
				mensaje.setTipo("danger");			
				mensaje.setTexto("No hay resultados que coincidan con <b>" + buscar + "</b>.");
			}
						
		}else {
			mensaje.setTipo("success");
			mensaje.setTexto("Listado cargado con éxito.");
			request.setAttribute("nombres", lista );
		}
		
		
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("buscar", buscar);
		
		
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nombreNuevo = request.getParameter("nombre");
		
		if ( nombreNuevo != null ) {
		
			nombreNuevo = nombreNuevo.trim();
			
			if ( "".equalsIgnoreCase(nombreNuevo)) {
				mensaje.setTipo("warning");
				mensaje.setTexto("Nombre no valido, intentalo de nuevo.");
			}else {
				lista.add(nombreNuevo);
				mensaje.setTipo("success");
				mensaje.setTexto("Nombre introducido correctamente.");
			}				
		
		}
		
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("nombres", lista);
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
		
	}

}