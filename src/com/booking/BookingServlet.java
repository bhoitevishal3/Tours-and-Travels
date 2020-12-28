package com.booking;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
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
		BookingDAO dao = new BookingDAO();
		if(method.equalsIgnoreCase("page1"))
		{
			int result=0;
			
			String dep_date=request.getParameter("dep_date");
			String ret_date=request.getParameter("ret_date");
			String pickup=request.getParameter("pickup");
			String drop=request.getParameter("drop");
			int people= Integer.parseInt(request.getParameter("people"));
			String type= request.getParameter("radio");
			

	        ArrayList<BookingDTO> list = new ArrayList<BookingDTO>();
	        
	        BookingDTO dto = new BookingDTO();
	        dto.setPickup_datetime(dep_date);
	        dto.setRet_datetime(ret_date);
	        dto.setPickup_from(pickup);
	        dto.setDrop_to(drop);
	        dto.setNumber_of_people(people);
	        dto.setRide_type(type);
	        list.add(dto);
	    
	        
	        
	        if(!list.isEmpty())
	        {
	         request.setAttribute("data",list);
	         RequestDispatcher rd=request.getRequestDispatcher("SelectTransfer.jsp");
	         rd.forward(request, response);
	        }
	        else {
	        	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
		         rd.forward(request, response);
				
	        }
	      
			
			
			/*
			 * result = dao.addBooking(dep_date,ret_date,pickup,drop,type,people);
			 * if(result==1) {
			 * 
			 * }
			 */
			
		}
		if(method.equalsIgnoreCase("page2"))
		{
			String dep_date=request.getParameter("dep_date");
			String ret_date=request.getParameter("ret_date");
			String pickup=request.getParameter("pickup");
			String drop=request.getParameter("drop");
			int people= Integer.parseInt(request.getParameter("people"));
			String type= request.getParameter("type");
			String vehicle=request.getParameter("vehicle");

	        ArrayList<BookingDTO> list = new ArrayList<BookingDTO>();
	        
	        BookingDTO dto = new BookingDTO();
	        dto.setPickup_datetime(dep_date);
	        dto.setRet_datetime(ret_date);
	        dto.setPickup_from(pickup);
	        dto.setDrop_to(drop);
	        dto.setNumber_of_people(people);
	        dto.setRide_type(type);
	        dto.setVehiclename(vehicle);
	        list.add(dto);
	        
	      //  System.out.println(list.);
	        
	        if(!list.isEmpty())
	        {
	         request.setAttribute("data",list);
	         RequestDispatcher rd=request.getRequestDispatcher(".jsp");
	         rd.forward(request, response);
	        }
	        else {
	        	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
		         rd.forward(request, response);
				
	        }
		}
		
		
		
	}

}
