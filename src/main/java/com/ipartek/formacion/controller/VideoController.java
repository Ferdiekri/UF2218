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
	
	private static final int OPCION_LISTAR = 1;
	private static final int OPCION_NUEVO = 2;
	private static final int OPCION_DETALLE = 3;
	private static final int OPCION_MODIFICAR = 4;
	private static final int OPCION_BORRAR = 5;
	
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VideoDAO videoDAO = VideoDAO.getInstance(); 
		Video video = new Video();
		
		if (request.getParameter("op") != null) {
			
			int opcion = Integer.parseInt(request.getParameter("op"));
			
			switch (opcion) {
			case OPCION_LISTAR:
				request.setAttribute("videos", videoDAO.getAll() );
				request.getRequestDispatcher("youtube/index.jsp").forward(request, response);
				break;
			
			case OPCION_NUEVO:
				video = new Video();
				int idRecogido = Integer.parseInt(request.getParameter("id"));
				String nombreRecogido = request.getParameter("nombre");
				String codigoRecogido = request.getParameter("codigo");
				
				
				request.setAttribute("video", video);	
				request.getRequestDispatcher("youtube/formulario.jsp").forward(request, response);
				break;
				
			case OPCION_DETALLE:
				int indice = (int) request.getAttribute("id");
				video = videoDAO.getById(indice);
				request.setAttribute("video", video);	
				request.getRequestDispatcher("youtube/formulario.jsp").forward(request, response);
				break;
				
			case OPCION_MODIFICAR:
				break;
				
			case OPCION_BORRAR:
				break;
	
			default:
				break;
			}
		}
		
		request.setAttribute("videos", videoDAO.getAll() );
		request.getRequestDispatcher("youtube/index.jsp").forward(request, response);
	}

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

}