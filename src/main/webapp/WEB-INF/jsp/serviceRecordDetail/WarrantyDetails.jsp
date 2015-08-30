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
<title>Equipment Warranty Details</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#warrantydetails"]').tab('show');

	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#warrantydetails" id="equip-warranty-tab" role="tab" data-toggle="tab" aria-controls="warrantydetails" aria-expanded="true">Equipment Warranty Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="warrantydetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Warranty Details</h4>
				<a style="display:inline-block; float:right;" href="warrantyDetailsListPage">Return to Warranty List</a>
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
									<input type="text" class="form-control" id="assetno3"
										disabled="disabled" value="${record.INT_ASS_NUM}">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Serial Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="serialNo3"
										disabled="disabled" value="${record.S_NUM}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="equipname1"
										disabled="disabled" value="${record.EQP_NAME}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="equipdescription"
										disabled="disabled" value="${record.EQP_DESC}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Manufacturer Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="manufname1"
										disabled="disabled" value="${record.MNF_NAME}">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Vendor Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="vendorname1"
										disabled="disabled" value="${record.VENDOR_NAME}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warranty Start Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="warrstartdate1"
										disabled="disabled" value="${record.WAR_S_DATE}" >
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Warranty End Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="warrenddate1"
										disabled="disabled" value="${record.WAR_E_DATE}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Warranty Type :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="warrantytype1"
										disabled="disabled" value="${record.WAR_TYPE}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Invoice Number :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="invoicenumber1"
										disabled="disabled" value="${record.INV_NUM}" >
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Invoice Date :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="invoicedate1"
										disabled="disabled" value="${record.INV_DATE}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Delivery Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="deliverydate1"
										disabled="disabled" value="${record.DELY_DATE}">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Installation Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="installdate1"
										disabled="disabled" value="${record.INSTA_DATE}"> 
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