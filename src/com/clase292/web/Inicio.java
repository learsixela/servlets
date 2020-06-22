package com.clase292.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Inicio
 */
@WebServlet("/Inicio")
public class Inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //obtener las variables pasadas por url
		String userName = request.getParameter("name");
		
        String userApellido = request.getParameter("apellido");
        
        if(null ==userApellido ||  userApellido.equals("")) {
        	userApellido = "Unknown";
        }
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.write("<h1>Hola Clase 29, contenido variable name:  " + userName +" - apellido: "+userApellido+ "</h1>");
        
		response.getWriter().append("clases 29 2.0 Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
