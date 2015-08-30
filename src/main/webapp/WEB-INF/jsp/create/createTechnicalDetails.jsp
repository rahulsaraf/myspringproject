<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ include file="../header.jsp"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<style type="text/css">
/**
 * Override feedback icon position
 * See http://formvalidation.io/examples/adjusting-feedback-icon-position/
 */
#createEquipAdmin .form-control-feedback {
    top: 0;
    right: -15px;
}
</style>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Create User Record</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
		$('.date-picker')
        .datepicker({
            format: 'mm/dd/yyyy'
        });
	});	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>
	</div>

	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Create User Details</h4>
				<a style="display:inline-block; float:right;" href="supplierAdminListPage">Return to User Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to create new User</p>
				<form:form class="form-horizontal" name="createUserAdmin" action="createUserAdmin"  modelAttribute="userAdminForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">User First Name :</label>
								<spring:bind path="f_Name"><div class="col-lg-3">
									<form:input path="f_Name" type="text" class="form-control"  value="${record.f_Name}"  id="firstname" name="firstname"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">User Last Name :</label>
								<spring:bind path="l_Name"><div class="col-lg-3">
									<form:input path="l_Name" type="text" class="form-control"  value="${record.l_Name}"  id="lastname" name="lastname"/>
								</div></spring:bind>
							</div>
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
				</form:form>
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