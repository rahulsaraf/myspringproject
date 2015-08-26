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
<%@ include file="../header.html"%>
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
	
	$('#myTabs a[href="#vendoradmindetails"]').tab('show');
	$('#myTabs a[href="#vendoradditionaldetails"]').tab('show');

	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#vendoradmindetails" id="equip-tab" role="tab" data-toggle="tab" aria-controls="vendoradmindetails" aria-expanded="true">Vendor Administration Details</a></li>
		    <li role="presentation"><a href="#vendoradditionaldetails" role="tab" id="location-tab" data-toggle="tab" aria-controls="vendoradditionaldetails">Vendor Additional Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="vendoradmindetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Vendor Administration Details</h4>
				<a style="display:inline-block; float:right;" href="vendorAdminListPage">Return to Vendor Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form class="form-horizontal" name="checkoutbook" action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendorname"
										disabled="disabled" name = "vendorname" value="${record.vendor_Name}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendordescription"
										disabled="disabled" name = "vendordescription" value="${record.vendor_Desc}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 1 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendoraddress1"
										disabled="disabled" name = "vendoraddressline1" value="${record.ven_Addr_l1}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 2 :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendoraddress2"
										disabled="disabled" name = "vendoraddressline2" value="${record.ven_Addr_l2}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="city1"
										disabled="disabled" name = "city" value="${record.ven_Addr_l3}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Country :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendorcountry1"
										disabled="disabled" name = "vendorcountry" value="${record.ven_Country}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Contact Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendorcontact1"
										disabled="disabled" name = "vendorcontactname" value="${record.ven_Ct_Name}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Contact Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="vendorcontactphone1"
										disabled="disabled" name = "vendorcontactphone" value="${record.ven_Ct_Phone}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="alternatephone1"
										disabled="disabled" name = "alternatephone" value="${record.alt_Phone}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="emailaddress1"
										disabled="disabled" name = "vendoremail" value="${record.email_ID}">
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
<div id="vendoradditionaldetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Vendor Additional Details</h4>
				<a style="display:inline-block; float:right;" href="vendorAdminListPage">Return to Vendor Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form class="form-horizontal" name="checkoutbook" action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Is Vendor Supplier Also? :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control"  id="isvendorsupplier" name="isvendorsupplier" value="${record.is_Ven_Supp}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Is Vendor Manufacturer Also? :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control"  id="isvendormanufacturer" name="isvendormanufacturer" value="${record.is_Ven_Manuf}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Is Vendor Preferred? :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="isvendorpreferred"
										disabled="disabled" value="${record.is_Ven_Preffd}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Does Vendor Supply Spares? :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" name="doesvendorspares" value="${record.DVS_Spares}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Additional Remarks :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="remarks" name="remarks" value="${record.add_Re}">
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
        <p class="text-muted">Slice n Dice LLC. Designed by Rahul</p>
      </div>
</footer>
</body>
</html>