package com.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method= request.getParameter("method");
		
		if(method.equalsIgnoreCase("addBooking"))
		{
			String dep_datetime1=request.getParameter("");
			String pickup1=request.getParameter("");
			String drop1=request.getParameter("");
			String ret_date=request.getParameter("");
			String pickup2=request.getParameter("");
			String drop2=request.getParameter("");
			int people= Integer.parseInt(request.getParameter(""));
			
			System.out.println(dep_datetime1);
			System.out.println(pickup1);
			System.out.println(drop1);
			System.out.println(ret_date);
			System.out.println(pickup2);
			System.out.println(drop2);
			System.out.println(people);
			
		}
		
	}

}
