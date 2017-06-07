<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
${email}
<div class="jumbotron text-center">
  <h1>Thank you for your cooperation.</h1>
  <% 
String e = (String) request.getAttribute("email");
	System.out.println("test " + e);
	request.setAttribute("email", e);
%>
  <a href="survey.jsp"><buttontype="button" class="btn btn-success">Give suggestion for another product</button></a>
   <a href="logoutServlet"><buttontype="button" class="btn btn-success">Log Out</button></a>
</div>
  
</body>
</html>