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
	
	$('#myTabs a[href="#servicereqdetails"]').tab('show');
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#servicereqdetails" id="service-req-tab" role="tab" data-toggle="tab" aria-controls="servicereqdetails" aria-expanded="true">Service Request Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="servicereqdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Service Request</h4>
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
								<label for="bookId" class="col-lg-3 text-left">Service Type :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="servicetype1"
										disabled="disabled" name = "servicetype">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Service Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="servicedescr1"
										disabled="disabled" name = "servicedescription">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Defect Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="defectcode1"
										disabled="disabled" name = "defectcode">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Defect Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="defectdescr1"
										disabled="disabled" name = "defectdescription">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Item Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="itemcode1"
										disabled="disabled" name = "itemcode">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Item Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="itemdescription1"
										disabled="disabled" name = "itemdescription">
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