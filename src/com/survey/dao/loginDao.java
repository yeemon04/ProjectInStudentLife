package com.survey.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginDao {
	 public static boolean validate(String email, String pass) {   
			//String email; String pass;
		        boolean status = false;
		        Connection conn = null;
		        PreparedStatement pst = null;
		        ResultSet rs = null;
		//create connection to database
		        String url="jdbc:mysql://localhost:3306/SURVEY_ANALYSIS?autoReconnect=true&useSSL=false";
				String user="root";
				String password= "admin";
				
				  try {
		        	Class.forName("com.mysql.jdbc.Driver").newInstance();
					 conn = DriverManager.getConnection(url,user,password);
					System.out.println("connected");
					
		//to retrieve only username & password
		            pst = conn
		                    .prepareStatement("select * from tbluser where email=? and pass=?");
		            pst.setString(1, email);
		            pst.setString(2, pass);

		            rs = pst.executeQuery();
		            status = rs.next();
		System.out.println(email + " "+ pass);
		        } catch (Exception e) {
		            System.out.println(e);
		        } finally {
		            if (conn != null) {
		                try {
		                    conn.close();
		                } catch (SQLException e) {
		                    e.printStackTrace();
		                }
		            }
		            if (pst != null) {
		                try {
		                    pst.close();
		                } catch (SQLException e) {
		                    e.printStackTrace();
		                }
		            }
		            if (rs != null) {
		                try {
		                    rs.close();
		                } catch (SQLException e) {
		                    e.printStackTrace();
		                }
		            }
		        }
		       // return status;
				return status;
		}
}
