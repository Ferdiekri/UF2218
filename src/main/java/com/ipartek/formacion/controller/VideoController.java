package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.ipartek.formacion.controller.pojo.Alert;
import com.ipartek.formacion.model.dao.VideoDAO;
import com.ipartek.formacion.model.pojo.Video;
import com.mysql.fabric.xmlrpc.base.Array;

/**
 * Servlet implementation class VideoController
 */
@WebServlet("/backoffice/videos")
public class VideoController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public static final String VIEW_INDEX = "youtube/index.jsp";
	public static final String VIEW_FORM = "youtube/formulario.jsp";
	public static String view = VIEW_INDEX;

	public static final String OP_LISTAR = "1";
	public static final String OP_GUARDAR = "2";
	public static final String OP_NUEVO = "3";
	public static final String OP_ELIMINAR = "4";
	public static final String OP_DETALLE = "5";

	private static VideoDAO videoDAO;
	public static HashMap<Integer,Video> videosVistos;

	// Crear Factoria y Validador
	private ValidatorFactory factory;
	private Validator validator;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		videoDAO = VideoDAO.getInstance();
		

		factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String op = request.getParameter("op");
		if (op == null) {
			op = OP_LISTAR;
		}

		switch (op) {
		case OP_DETALLE:
			detalle(request, response);
			break;

		case OP_GUARDAR:
			guardar(request, response);
			break;

		case OP_ELIMINAR:
			eliminar(request, response);
			break;

		case OP_NUEVO:
			nuevo(request, response);
			break;

		default:
			listar(request, response);
			break;
		}

		request.getRequestDispatcher(view).forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) {

		request.setAttribute("videos", videoDAO.getAll());
		view = VIEW_INDEX;

	}

	private void detalle(HttpServletRequest request, HttpServletResponse response) {

		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);

		Video v = videoDAO.getById(id);
		request.setAttribute("video", v);
		view = VIEW_FORM;
		
		// Apartado de guardar el listado.
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("vistos") == null) {
			videosVistos = new HashMap<Integer, Video>();
		}
			videosVistos.put(v.getId(),v);
		
		session.setAttribute("vistos", videosVistos);

	}

	private void nuevo(HttpServletRequest request, HttpServletResponse response) {

		request.setAttribute("video", new Video());
		view = VIEW_FORM;
	}

	private void guardar(HttpServletRequest request, HttpServletResponse response) {

		String sid = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String codigo = request.getParameter("codigo");

		Video v = new Video();
		v.setId(Integer.parseInt(sid));
		v.setNombre(nombre);
		v.setCodigo(codigo);
		
		Set<ConstraintViolation<Video>> violations = validator.validate(v);
		
		if (violations.isEmpty()) {
	
			try {
	
				if (v.getId() == -1) {
					videoDAO.crear(v);
					request.setAttribute("mensaje", new Alert("success", "Nuevo vídeo creado con exito."));
				} else {
					videoDAO.modificar(v);
					request.setAttribute("mensaje", new Alert("success", "Vídeo modificado con exito."));
				}
	
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("mensaje", new Alert("danger", "No se han guardado los cambios. " + e.getMessage()));
			}
		}else { 
			// hay violaciones en las validaciones.
			String mensaje="Han ocurrido los siguientes mensajes:<br>";
			for (ConstraintViolation<Video> violation : violations) {
				mensaje += violation.getPropertyPath() + ": " + violation.getMessage() + "<br>";
			}
			request.setAttribute("mensaje", new Alert("warning", mensaje));
		}

		request.setAttribute("video", v);
		view = VIEW_FORM;

	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) {

		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);

		if (videoDAO.delete(id)) {
			request.setAttribute("mensaje", new Alert("success", "Vídeo eliminado correctamente."));
		} else {
			request.setAttribute("mensaje", new Alert("danger", "Lo sentimos, pero no se pudo eliminar el vídeo."));
		}

		listar(request, response);

	}
}