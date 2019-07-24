package com.ipartek.formacion.controller.listener;

import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class UsuariosLogeadosListener
 *
 */
@WebListener
public class UsuariosLogeadosListener implements HttpSessionAttributeListener, HttpSessionListener {

	public static String nombre = "Variable pública y estática. TODO lo mismo pero para una colección.";
	public static ArrayList<String> sesiones;

	/**
	 * Default constructor.
	 */
	public UsuariosLogeadosListener() {
		sesiones = new ArrayList<String>();
		
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent se) {

		sesiones.add("sessionCreated");

	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent se) {

		sesiones.add("sessionDestroyed");
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent event) {
	
		HttpSession sesion = event.getSession();
		
		if ("usuario".equalsIgnoreCase(event.getName())) {
			
			String usuario = (String) sesion.getAttribute("usuario");
			sesiones.add("attributeAdded: " + usuario);
			
		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent event) {
		
		HttpSession sesion = event.getSession();
		
		if ("usuario".equalsIgnoreCase(event.getName())) {
			
			String usuario = (String) sesion.getAttribute("usuario");
			
			sesion.removeAttribute("usuario");
			sesiones.add("attributeRemoved: " + usuario);
			
		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// reemplaza un valor de un atributo otro
		sesiones.add("attributeReplaced");
	}

}
