package com.flight.reservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PaymentConfirmation
 */
public class PaymentConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentConfirmation() {
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
		PrintWriter out = response.getWriter();
		final String url = "jdbc:mysql://localhost:3306/db_flight_reservation";
	    final String user = "root";
	    final String password = "root";
	    Connection con =null;
	    PreparedStatement prSt= null;
	    
	    PreparedStatement prSt1= null;
	    int rowAffected=0;
	    try{
	    	
		    String userEmail = request.getParameter("passEmail");   
	        String flighNo = request.getParameter("flightNo");
	        String totalSeats = request.getParameter("bookedSeats");
			  
	        Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            
	        prSt = con.prepareStatement("INSERT into booking(email_id,flight_no)Values(?,?)");
	        prSt.setString(1, userEmail);
	        prSt.setString(2, flighNo);
	        
	       
	         rowAffected = prSt.executeUpdate();
  
	        System.out.println(String.format("Row affected %d", rowAffected));
	        
	        if(rowAffected >= 1) { 
	        	 System.out.println(String.format("Row affected %d", rowAffected));
	        	 }else {
	        	   out.print("Booking Failed");
	           }
	       
	        con.close();
	   }
	   catch(Exception e){       
	       out.print("Something went wrong !! Please try again");   
	       e.printStackTrace();
	   }finally{
		      //finally block used to close resources
		      try{
		         if(prSt!=null)
		        	 prSt.close();
		         
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(con!=null)
		            con.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }
		
		//doGet(request, response);
	
	
	    if(rowAffected>=1) {
	    	try{
	    	
		    String flighNo = request.getParameter("flightNo");
	        String totalSeats = request.getParameter("bookedSeats");
			  
	        Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            
	        prSt1 = con.prepareStatement("Update flight_details set booked_seats = ? where flight_no = ?");
	        
	        prSt1.setString(1, totalSeats);
	        prSt1.setString(2, flighNo);
	        
	       
	        int rowsAffected = prSt1.executeUpdate();
  
	        System.out.println(String.format("Row affected %d", rowsAffected));
	        
	        if(rowsAffected >= 1) { 
	        	System.out.println(String.format("Row affected sss %d", rowsAffected));
	        	out.print("<font size=\"5\" color='green'>Congratulations Reservation done Successfully....</font>");
	        	out.print("<br><a href=\"HomePage.html\"> Click here</a> to redirect To Home Page");
	        	
		       }else {
	        	   out.print("Failed to update seats");
	           }
	        prSt1.close();
	        con.close();
	   }
	   catch(Exception e){       
	       out.print("Something went wrong !! Please try again");   
	       e.printStackTrace();
	   }finally{
		      //finally block used to close resources
		      try{
		         if(prSt1!=null)
		        	 prSt1.close();
		         
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(con!=null)
		            con.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }
	    
	    
	    
	    }
		
	
	}
}
