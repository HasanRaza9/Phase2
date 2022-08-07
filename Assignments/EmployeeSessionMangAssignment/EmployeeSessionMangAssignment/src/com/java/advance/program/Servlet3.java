package com.java.advance.program;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet3
 */
public class Servlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String uName = request.getParameter("username");
		String pass = request.getParameter("pass");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
	    
		HttpSession session = request.getSession();
		
		session.setAttribute("uName", uName);
		session.setAttribute("pass", pass);
		session.setAttribute("age",age);
		session.setAttribute("email",email);
		session.setAttribute("country",country);
		
		pw.print("<form action='welcome'><input type='submit' value='viewDetails'></form>");
		
		pw.close();
		
		doGet(request, response);
	}

}
