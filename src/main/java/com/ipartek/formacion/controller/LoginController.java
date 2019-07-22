package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String VIEW_CORRECTA = "backoffice/index.jsp";
	private static final String VIEW_INCORRECTA = "login.jsp";
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("usuario");
		String pass = request.getParameter("pass");
		String vista=null;
		
		if ("admin".equals(usuario) && "admin".equals(pass)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("usuario", usuario);
			session.setAttribute("pass", pass);
			
			request.setAttribute("mensaje", new Alert("success", "Bienvenido " + usuario));
			vista = VIEW_CORRECTA;
		}else {
			request.setAttribute("mensaje", new Alert("danger", "Credenciales incorrectas"));
			vista = VIEW_INCORRECTA;
		}
		
		
		request.getRequestDispatcher(vista).forward(request, response);
		
		
	}

}
