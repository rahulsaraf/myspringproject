<!DOCTYPE html>
<html>
<head>
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
<title>Medical Equipment</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#contactdetails"]').tab('show');
	$('#myTabs a[href="#accountinginformationdetails"]').tab('show');
	$('#myTabs a[href="#workorderdetails"]').tab('show');

	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#contactdetails" id="contact-tab" role="tab" data-toggle="tab" aria-controls="contactdetails" aria-expanded="true">Contact Details</a></li>
		    <li role="presentation"><a href="#accountinginformationdetails" role="tab" id="accounting-tab" data-toggle="tab" aria-controls="accountinginformationdetails">Accounting Information Details</a></li>
		    <li role="presentation"><a href="#workorderdetails" role="tab" id="workorder-tab" data-toggle="tab" aria-controls="workorderdetails">Work Order Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Contact Details</h4>
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
								<label for="bookId" class="col-lg-2 text-left">Order Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="orderdate1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="orderdate" name="orderdate">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Requested Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="requesteddate1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="requesteddate" name="requesteddate">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Vendor Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="vendorname1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="vendorname" name="vendorname">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Engineer Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="engineername1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="engineername" name="engineername">
								</div>
							</div>
	
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Suburb :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="suburb1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="suburb" name="suburb">
								</div>
								<label for="branchId" class="col-lg-3 text-left">City :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="city1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="city" name="city">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Eng. Contact Phone :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="engcontactphone1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="engcontactphone" name="engcontactphone">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Eng. Alternate Phone :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="engaltphone1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="engaltphone" name="engaltphone">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 1 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendoraddressline11"
										disabled="disabled" name = "vendoraddressline1">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 2 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendoraddressline21"
										disabled="disabled" name = "vendoraddressline2">
								</div>
							</div>
									
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="emailaddress1"
										disabled="disabled" name = "email">
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
<div id="accountinginformationdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Account Information Details</h4>
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
								<label for="bookId" class="col-lg-2 text-left">Department :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="dept1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="dept" name="dept">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Department Contact :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="deptcontact1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="deptcontact" name="deptcontact">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Internal Asset Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="asstnumb1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="asstnumb" name="asstnumb">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Serial Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="serialnumber1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="serialnumber" name="serialnumber">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Items Cost :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="itemcost1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="itemcost" name="itemcost">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Hours Worked :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="hoursworked1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="hoursworked" name="hoursworked">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Item Quantity :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="itemqty1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="itemqty" name="itemqty">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Hourly Rate :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="hourlyrate1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="hourlyrate" name="hourlyrate">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Total Item Cost :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="totalic1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="totalic" name="totalic">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Total Labor Cost :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="totallc1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="totallc" name="totallc">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Name :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="department1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="department" name="department">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="eqpdescription1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="eqpdescription" name="eqpdescription">
								</div>
							</div>
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Total Cost :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="totalc1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="totalc" name="totalc">
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
<div id="workorderdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Work Order Details</h4>
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
								<label for="bookId" class="col-lg-2 text-left">Internal Asset Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="assetno1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="assetno" name="assetno">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Serial Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="serialnumber1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="serialnumber" name="serialnumber">
								</div>
							</div>

							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Name :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="eqpname1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="eqpname" name="eqpname">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="eqpdescr1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="eqpdescr" name="eqpdescr">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Description of Work :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="descrow" name="descrow"
										disabled="disabled">
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