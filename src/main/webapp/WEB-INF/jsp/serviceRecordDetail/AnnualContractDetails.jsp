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
<title>Annual Contract Details</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#annualcontrctdetails"]').tab('show');
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#annualcontrctdetails" id="annual-contract-tab" role="tab" data-toggle="tab" aria-controls="annualcontrctdetails" aria-expanded="true">Annual Contract Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Annual Contract Details</h4>
				<a style="display:inline-block; float:right;" href="anuualcontractdetailslistpage">Return to Annual Contract List</a>
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
								<label for="branchId" class="col-lg-2 text-left">Internal Asset Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="asstno3"
										disabled="disabled" value="${record.INT_ASS_NUM}"> 
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Serial Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="serialNo1"
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
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="equipdescription"
										disabled="disabled" value="${record.EQP_DESC}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Vendor Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="vendorname1"
										disabled="disabled" value="${record.VENDOR_NAME}">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Manufacturer Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="manufacturer1"
										disabled="disabled" value="${record.MNF_NAME}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">AMC Vendor Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="amcvendor1"
										disabled="disabled" value="${record.AMC_V_NAME}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">AMC Start Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="amcstartdate1"
										disabled="disabled" value="${record.AMC_S_DATE}">
								</div>
								<label for="branchId" class="col-lg-3 text-left">AMC End Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="amcenddate1"
										disabled="disabled" value="${record.AMC_E_DATE}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Original Install Date :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="orginstalldate1"
										disabled="disabled" value="${record.ORIG_INST_DATE}">
								</div>
							</div>
							
						<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">AMC Invoice Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="amcinvoice1"
										disabled="disabled" value="${record.AMC_INV_NUM}">
								</div>
								<label for="branchId" class="col-lg-3 text-left">AMC Invoice Amount :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="amcinamount1"
										disabled="disabled" value="${record.AMC_INV_AMOUNT}">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Preventive Maintenance Schedule :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="maintainanceschedule1"
										disabled="disabled" value="${record.PRE_MAIN_SCHD}">
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