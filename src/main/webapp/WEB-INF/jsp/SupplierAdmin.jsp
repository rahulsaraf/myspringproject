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
<title>Supplier Administration</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#supplieradmindetails"]').tab('show');

	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#supplieradmindetails" id="supplier-tab" role="tab" data-toggle="tab" aria-controls="supplieradmindetails" aria-expanded="true">Supplier Administration Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Supplier Administration Details</h4>
				<a style="display:inline-block; float:right;" href="supplierAdminListPage">Return to Supplier Administration List</a>
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
								<label for="bookId" class="col-lg-3 text-left">Supplier Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppname"
										disabled="disabled" name = "suppname" value="${record.sp_Name}">
								</div>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 1 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppaddressline1"
										disabled="disabled" name = "suppaddressline1" value="${record.sp_Addr_L1}">
								</div>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 2 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppaddressline2"
										disabled="disabled" name = "suppaddressline2" value="${record.sp_Addr_L2}">
								</div>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Suburb :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suburb"
										disabled="disabled" name = "suburb" value="${record.suburb}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="city"
										disabled="disabled" name = "city" value="${record.sp_City}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Pin/Zip :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="pinzip"
										disabled="disabled" name = "pinzip" value="${record.sp_Zip}">
								</div>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Country :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppliercountry"
										disabled="disabled" name = "suppliercountry" value="${record.sp_Country}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppcontactname"
										disabled="disabled" name = "suppcontactname" value="${record.sp_Ct_Fname}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="suppcontactphone"
										disabled="disabled" name = "suppcontactphone" value="${record.sp_Ct_Phone}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="alternatephone"
										disabled="disabled" name = "alternatephone" value="${record.alt_phone}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="emailaddress"
										disabled="disabled" name = "emailaddress" value="${record.email_ID}">
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