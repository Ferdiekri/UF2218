package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.dao.VideoDAO;
import com.ipartek.formacion.model.pojo.Video;

/**
 * Servlet implementation class VideoController
 */
@WebServlet("/videos")
public class VideoController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public static final String VIEW_INDEX = "youtube/index.jsp";
	public static final String VIEW_FORM = "youtube/formulario.jsp";
	
	public static final String OPCION_LISTAR = "1";
	public static final String OPCION_NUEVO = "2";
	public static final String OPCION_DETALLE = "3";
	public static final String OPCION_GUARDAR = "4";
	public static final String OPCION_BORRAR = "5";
	public static final String OPCION_CREAR = "6";
	
	String view = "";
	VideoDAO videoDAO = VideoDAO.getInstance(); 
	Video video = new Video();
	boolean nuevo = true;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String opcion = request.getParameter("op");
		
		if (opcion == null) {
			opcion= OPCION_LISTAR;
		}
			
		switch (opcion) {
			case OPCION_LISTAR: // Listar todos los vídeos.
				listar(request,response);
				break;
			
			case OPCION_NUEVO: // Cargar una página para meter nuevo.
				nuevo(request,response);
				break;
				
			case OPCION_DETALLE:
				detalle(request,response);
				break;
				
			case OPCION_GUARDAR:
				guardar(request,response);
				break;
				
			case OPCION_BORRAR:
				break;
	
			default:
				break;
		}
		
		request.setAttribute("videos", videoDAO.getAll() );
		request.getRequestDispatcher(view).forward(request, response);
	}

	private void guardar(HttpServletRequest request, HttpServletResponse response) {
		String indice = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String codigo = request.getParameter("codigo");
		
		//TODO llamar al DAO
				//   si id == -1 => INSERT
				//   si id > 0   => UPDATE
		Video v = new Video();
		v.setId(Integer.parseInt(indice));
		v.setNombre(nombre);
		v.setCodigo(codigo);
		
		request.setAttribute("video", v );
		view = VIEW_FORM;	
	}

	private void detalle(HttpServletRequest request, HttpServletResponse response) {
		int indice = Integer.parseInt(request.getParameter("id"));
		video = videoDAO.getById(indice);
		request.setAttribute("video", video);
		view = VIEW_FORM;
		nuevo = false;
		request.setAttribute("mostrar", nuevo);	
	}

	private void nuevo(HttpServletRequest request, HttpServletResponse response) {
		video = new Video();				
		request.setAttribute("video", video);	
		view = VIEW_FORM;
		nuevo = true;
		request.setAttribute("mostrar", nuevo);
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("videos", videoDAO.getAll() );
		view = VIEW_INDEX;	
	}



}