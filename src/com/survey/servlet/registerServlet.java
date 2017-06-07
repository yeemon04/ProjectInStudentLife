package com.survey.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
		
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String pass = request.getParameter("pass");
	        try{
	        
	        //loading drivers for mysql
	        Class.forName("com.mysql.jdbc.Driver");

		//creating connection with the database 
	          Connection  con=DriverManager.getConnection
	                     ("jdbc:mysql://localhost:3306/SURVEY_ANALYSIS?autoReconnect=true&useSSL=false","root","admin");
con.createStatement();
	        PreparedStatement ps=con.prepareStatement
	                  ("insert into tblUser values(?,?,?)");

	        ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, pass);
	        int i=ps.executeUpdate();
	        
	          if(i>0)
	          {
	            //out.println("You are sucessfully registered");
	        	  out.print("You are sucessfully registered. log in here!");  
	        	  RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
		          rd.include(request,response); 
	          }
	         
	        }
	        catch(Exception se)
	        {
	            se.printStackTrace();
	        }
		
	}

}
