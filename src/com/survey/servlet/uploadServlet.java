package com.survey.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 * Servlet implementation class uploadServlet
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)  
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

 // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/SURVEY_ANALYSIS?autoReconnect=true&useSSL=false";
    private String dbUser = "root";
    private String dbPass = "admin";
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	 	String email = request.getParameter("email");
		 String name=request.getParameter("name");  
	        String pcate=request.getParameter("pcategory"); 
	        String description=request.getParameter("description"); 
	        System.out.println("email "+email);
		InputStream inputStream = null; // input stream of the upload file
		 // obtains the upload file part in this multipart request
        Part filePart = request.getPart("file");
       
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
           
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
          }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
           // Calendar cal = Calendar.getInstance();
            // constructs SQL statement
            String sql = "INSERT INTO tblsurveyinfo (email, nickname,category, description, photo) values (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, name);
            statement.setString(3, pcate);
            statement.setString(4, description);
            if (inputStream != null) {
               statement.setBlob(5, inputStream);
            }
           
          
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Thanks for your cooperation!!";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }// sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            request.setAttribute("email", email);
            getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
        }
	}

}
