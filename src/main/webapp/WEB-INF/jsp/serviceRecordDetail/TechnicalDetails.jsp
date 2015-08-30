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
<%@ include file="../header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Technician Details</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#technicaldetails"]').tab('show');
	
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#technicaldetails" id="technical-details-tab" role="tab" data-toggle="tab" aria-controls="technicaldetails" aria-expanded="true">Technician Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="technicaldetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Technician Details</h4>
			</div>
			<div class="modal-body">
				<p>Please enter following information about Equipment Admin</p>
				<form class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Engineer Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="engineername1"
										disabled="disabled" name = "engineername">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Company Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="companyname1"
										disabled="disabled" name = "companyname">
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
								<label for="bookId" class="col-lg-3 text-left">Engineer Address Line 1 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="engaddr1"
										disabled="disabled" name = "engaddr">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Engineer Address Line 2 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="engaddr2"
										disabled="disabled" name = "engaddrline">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Suburb :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suburb1"
										disabled="disabled" name = "suburb">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="city1"
										disabled="disabled" name = "city">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Pin/Zip :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="pinzip1"
										disabled="disabled" name = "pinzip">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Engineer Contact Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="engcontactphone1"
										disabled="disabled" name = "engcontactphone">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Engineer Alternate Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="engaltphone1"
										disabled="disabled" name = "engaltphone">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="emailaddress1"
										disabled="disabled" name = "emailaddress">
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