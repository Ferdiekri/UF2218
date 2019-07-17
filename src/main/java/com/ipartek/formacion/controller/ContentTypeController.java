package com.ipartek.formacion.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.pdfbox.pdmodel.PDDocument;

/**
 * Servlet implementation class ContentTypeController
 */
@WebServlet("/servlet3")
public class ContentTypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		
		String tipo = request.getParameter("p");
		String responseContent = "";

		switch (tipo) {
		case "1":
			response.setContentType("text/plain");
			responseContent = "perro buba, raza boxer. <p>No renderiza HTML porque le hemos dicho que es texto plano.</p>";
			break;
		case "2":
			response.setContentType("text/html");
			responseContent = "<h2>perro buba</h1> <h3>raza boxer</h3> <p>Sí renderiza HTML porque le hemos dicho que es HTML.</p>";
			break;
		case "3":
			response.setContentType("application/json");
			responseContent += "{";
			responseContent += " \"nombre\":\"bubba\",";
			responseContent += " \"raza\":\"boxer\"";
			responseContent += "}";
			
			break;
		case "4":
			response.setContentType("application/pdf");
			
			PDDocument document = new PDDocument();
			
			document.close();
			
			
			responseContent="resources/images/lista.pdf";
			/*crearPdf(request, response);*/
			break;

		default:
			break;
		}

		out.print(responseContent);

		out.flush();

	}
	
	private void crearPdf(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String pdfFileName = "pdf-test.pdf";
		String contextPath = getServletContext().getRealPath(File.separator);
		File pdfFile = new File(contextPath + pdfFileName);
		
		response.setContentType("application/pdf");
		response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
		response.setContentLength((int) pdfFile.length());
		
		FileInputStream fileInputStream = new FileInputStream(pdfFile);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
		    responseOutputStream.write(bytes);
		}
	
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
