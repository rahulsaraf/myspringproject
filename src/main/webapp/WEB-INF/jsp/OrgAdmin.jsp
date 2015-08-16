<!DOCTYPE html>
<html>
<head>
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
<title>Organization Administration</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#orgdetails"]').tab('show');

	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#orgdetails" id="org-tab" role="tab" data-toggle="tab" aria-controls="orgdetails" aria-expanded="true">Organization Administration Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Organization Admin Details</h4>
			</div>
			<div class="modal-body">
				<p>Please enter following organization Admin Details
					</p>
				<form class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">



							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Organization Name :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="orgname"
										disabled="disabled" name = "orgname">
								</div>
							</div>
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Organization Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="orgcode"
										disabled="disabled" name = "orgcode">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Department :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="department"
										disabled="disabled" name = "department">
								</div>
							</div>
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Department Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="deptcode"
										disabled="disabled" name = "deptcode">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Section :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="section"
										disabled="disabled" name = "section">
								</div>
							</div>
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Section Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="sectioncode"
										disabled="disabled" name = "sectioncode">
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