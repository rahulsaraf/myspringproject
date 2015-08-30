<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>PEMS Login</title>
<style type="text/css">

body { 
 background: url('/healthcarev1/static/stethoscope.jpg') no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}

.panel-default {
 opacity: 0.9;
 margin-top:30px;
}
.form-group.last {
 margin-bottom:0px;
}

</style>

    <!-- Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
       
            <div class="panel panel-default">
     
                <div class="panel-heading"> <strong class="">Login to PEMS</strong>
				
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" name="Loginapp"
					action="Loginapp" method="POST">
                        <div class="form-group">
                            <label for="inputusername" class="col-sm-3 control-label">Name</label>
                            <div class="input-group">
    						<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input name="username" class="form-control" id="inputusername" placeholder="Enter User Name" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                            <div class="input-group">
    								<span class="input-group-addon"><span class="glyphicon glyphicon-star"></span></span>
                                <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Enter Password" required="">
                            </div>
                        </div>
                        <!--  
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div class="checkbox">
                                    <label class="">
                                        <input type="checkbox" class="">Remember me</label>
                                </div>
                            </div>
                        </div>
                        -->
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-lock"></span>Sign in</button>
                                <button type="reset" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-arrow-left"></span>Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
               <!-- <div class="panel-footer">Not Registered? <a href="#" class="">Register here</a>
                </div>
                 --> 
                 
                 
                 
            </div>
                    <div id="errorMessage">
						<c:choose>
							<c:when test="${result == 0}">
							    <div class="alert alert-danger fade in">
					        	<a href="#" class="close" data-dismiss="alert">&times;</a>
					        	<strong>Error!</strong> Invalid Login ID or Password.
				    			</div>
				    		</c:when>
				    	</c:choose>
					</div>
        </div>
    </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>