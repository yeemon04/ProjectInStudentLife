<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in to app</title>
 

<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
              </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" action="login"  method="post">
          <a href="signup.jsp"><buttontype="button" class="btn btn-success">New Registration</button></a>
           <div class="form-group">
              <input type="text" name="email" style="width:300px;" placeholder="Email" class="form-control">
              
            </div>
            <div class="form-group">
              <input type="password" name="userpass" style="width:300px;" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success" >Sign in</button>
             
           
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h2>Customer Satisfation is one step of products' success in the market. </h2>
           </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Make the future.</h2>
          <p>Survey the market. <br>
        Review the success. </p>
        <br><br>
        <br>
        </div>
        <div class="col-md-4">
          <h2>Why do a survey?</h2>
          <p>Base decisions on objective information. Conducting surveys is an unbiased approach to decision-making. Don't rely on “gut feelings” to make important business decisions. You can collect unbiased survey data and develop sensible decisions based on analyzed results.</p>
          <br>
          <br>
          <br>
       </div>
        <div class="col-md-4">
          <h2>Chance</h2>
          <p>Determine need for new program <br>
Help design new program <br>
Evaluate existing program</p>
       <br><br><br>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; December 2016 Survey Detector</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
          

</body>
</html>