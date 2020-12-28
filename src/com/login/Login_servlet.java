package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login_servlet
 */
@WebServlet("/Login_servlet")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginDAO ldao = new LoginDAO();
	boolean flag;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equalsIgnoreCase("logout"))
		{
			HttpSession session = request.getSession();
			session.invalidate();
//			request.setAttribute("Loggedout", "Logged out successfully");
//			request.setAttribute("status", "fail");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		HttpSession session = request.getSession();
		
		if(action != null && action.equalsIgnoreCase("login"))
		{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
//			System.out.println(username);
			
			session.setAttribute("username", username);
//			session.setAttribute("passowrd", password);
//			request.setAttribute("Loginsuccess", "Logged in successfully" + username);
//			request.setAttribute("status", "success");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}
