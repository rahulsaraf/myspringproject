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
	
	$('#myTabs a[href="#gatepassissuedetails"]').tab('show');
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#gatepassissuedetails" id="gate-pass-tab" role="tab" data-toggle="tab" aria-controls="gatepassissuedetails" aria-expanded="true">Gate Pass Issue Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="gatepassdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Gate Pass Issue Details</h4>
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
								<label for="branchId" class="col-lg-2 text-left">Engineer Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="engineername1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="engineername" name="engineername">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Company Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="companyname1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="companyname" name="companyname">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-2 text-left">Time_IN :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="timein1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="timein" name="timein">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Time_OUT :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="timeout1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="timeout" name="timeout">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="equipdescription"
										disabled="disabled" name = "equipdescription">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="date1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="gpdate" name="gpdate">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Approver Name :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="approvername1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="approvername" name="approvername">
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