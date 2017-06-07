package com.survey.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.survey.dao.loginDao;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        String n=request.getParameter("email");  
        String p=request.getParameter("userpass"); 
        System.out.println(n+"  "+ p);
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("email", n);
        System.out.println(n+" ss "+ p);
       if(loginDao.validate(n, p)){  
    	   request.setAttribute("email", n);
    	   System.out.println(n);
            RequestDispatcher rd=request.getRequestDispatcher("survey.jsp?");  
          rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
            rd.include(request,response);  
        }  

        out.close(); 
	}

}
