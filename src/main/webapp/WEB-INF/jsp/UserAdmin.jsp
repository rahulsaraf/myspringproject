<!DOCTYPE html>
<html>
<head>


<style type="text/css">
#header-wrapper {
	background: url(/librarysystem/static/fin.jpg) no-repeat right;
	border-top: 5px solid #CC0000;
}
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ include file="header.html"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>User Administration Details</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#useradmindetails"]').tab('show');

	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#useradmindetails" id="useradmin-tab" role="tab" data-toggle="tab" aria-controls="useradmindetails" aria-expanded="true">User Administration Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">User Administration Details</h4>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">User First Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="firstname"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="firstname" name="firstname">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">User Last Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="lastname"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="lastname" name="lastname">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Organization :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="organization1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="organization" name="organization">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Login ID :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="loginid1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="loginid" name="loginid">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Department :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="dept1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="dept" name="dept">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Password :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="password1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="password" name="password">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Section :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="section1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="section" name="section">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Confirm Password :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="confirmpswd1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="confirmpswd" name="confirmpswd1">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">User Full Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="fullname1"
										disabled="disabled" name = "fullname">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Employee ID :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="employeeid1"
										disabled="disabled" name = "employeeid">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">User Contact Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="contactphone1"
										disabled="disabled" name = "contactphone">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="alternatephone1"
										disabled="disabled" name = "alternatephone">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="emailadddress1"
										disabled="disabled" name = "emailaddress">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Manager Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="managername1"
										disabled="disabled" name = "managername">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Manager ID :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="managerid1"
										disabled="disabled" name = "managerid">
								</div>
							</div>
							
		
							<div class="modal-footer">
								<button type="Submit" class="btn btn-primary">Submit</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<footer class="container footer" style="padding-top: 60px;">
      <div class="container">
        <p class="text-muted">Slice n Dice LLC. Designed by Manasa Malleshappa</p>
      </div>
</footer>
</body>
</html>