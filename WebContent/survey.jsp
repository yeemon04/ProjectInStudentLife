<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Survey Analysis</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<% 
 String e = (String) request.getAttribute("email");
if(e==null){  
     
        out.print("Please login first");  
        request.getRequestDispatcher("login.jsp").include(request, response);  
    }  else{
	System.out.println("test " + e);
	request.setAttribute("email", e);
    }
%>
<div class="jumbotron text-center">
  <h1>Survey Analysis</h1>
  <p>Survey the market. 
        Review the success. </p> 
</div>

<div class="container">
  <div class="container">
            <form class="form-horizontal" role="form" action = "uploadServlet" method = "post"
         enctype = "multipart/form-data">
                
                <div class="form-group">
                    <label for="uploadyourfile" class="col-sm-3 control-label">Upload Your File</label>
                    <div class="col-sm-9">
                        <input type = "file" name = "file" size = "50" />
         
      </div>
                </div>
                 <div class="form-group" >
                   
                    <div class="col-sm-9">
                        <input type="email" id="email" name="email" placeholder="email" class="form-control" value=<%= session.getAttribute("email")%> style="visibility:hidden">
                    </div>
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Name (nick name)</label>
                    <div class="col-sm-9">
                        <input type="name" id="name" name="name" placeholder="name" class="form-control" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pcategory" class="col-sm-3 control-label">Product Category</label>
                    <div class="col-sm-9">
                       <select name="pcategory">
  <option value="cosmetics">Cosmetics</option>
  <option value="jewel">Jewel</option>
  <option value="clothing">Clothing</option>
  <option value="stationary">Stationary</option>
</select>
                    </div>
                </div>
                <div class="form-group">
                 <label for="description" class="col-sm-3 control-label">Description</label>
                  
                    <div class="col-sm-9">
                    <textarea rows="5" cols="50" type="description" id="description" name="description" placeholder="description" class="form-control" required>

</textarea>
                    </div>
                </div>
                                
                 <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                     
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
</div>
${email};
System.out.print(email);

</body>
</html>