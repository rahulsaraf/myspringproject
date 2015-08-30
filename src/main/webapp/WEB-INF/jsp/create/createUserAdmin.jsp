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
								<label for="bookId" class="col-lg-2 text-left">Organization :</label>
								<spring:bind path="organisation"><div class="col-lg-3">
									<form:input path="organisation" type="text" class="form-control"  value="${record.organisation}"  id="organization" name="organization"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Login ID :</label>
								<spring:bind path="login_ID"><div class="col-lg-3">
									<form:input path="login_ID" type="text" class="form-control"  value="${record.login_ID}"  id="loginid" name="loginid"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Department :</label>
								<spring:bind path="department"><div class="col-lg-3">
									<form:input path="department" type="text" class="form-control"  value="${record.department}"  id="dept" name="dept"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Password :</label>
								<spring:bind path="password"><div class="col-lg-3">
									<form:input path="password" type="text" class="form-control"  value="${record.password}"  id="password" name="password"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Section :</label>
								<spring:bind path="section"><div class="col-lg-3">
									<form:input path="section" type="text" class="form-control"  value="${record.section}"  id="section" name="section"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Confirm Password :</label>
								<spring:bind path="confirm_Password"><div class="col-lg-3">
									<form:input path="confirm_Password" type="text" class="form-control"  value="${record.confirm_Password}" id="confirmpswd" name="confirmpswd1"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Employee ID :</label>
								<spring:bind path="emp_ID"><div class="col-lg-7">
									<form:input path="emp_ID" type="text" class="form-control"  value="${record.emp_ID}" id="employeeid1"
										disabled="disabled" name = "employeeid"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">User Contact Phone :</label>
								<spring:bind path="usr_Ct_Phone"><div class="col-lg-7">
									<form:input path="usr_Ct_Phone" type="text" class="form-control"  value="${record.usr_Ct_Phone}" id="contactphone1"
										disabled="disabled" name = "contactphone"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<spring:bind path="alt_phone"><div class="col-lg-7">
									<form:input path="alt_phone" type="text" class="form-control"  value="${record.alt_phone}" id="alternatephone1"
										disabled="disabled" name = "alternatephone"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<spring:bind path="email_ID"><div class="col-lg-7">
									<form:input path="email_ID" type="text" class="form-control"  value="${record.email_ID}" id="emailadddress1"
										disabled="disabled" name = "emailaddress"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Manager Name :</label>
								<spring:bind path="manager_Name"><div class="col-lg-7">
									<form:input path="manager_Name" type="text" class="form-control"  value="${record.manager_Name}" id="managername1"
										disabled="disabled" name = "managername"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Manager ID :</label>
								<spring:bind path="manager_Id"><div class="col-lg-7">
									<form:input path="manager_Id" type="text" class="form-control"  value="${record.manager_Id}" id="managerid1"
										disabled="disabled" name = "managerid"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">User Access :</label>
								<spring:bind path="user_Access"><div class="col-lg-7">
										<form:select path="user_Access" class="form-control" value="${record.user_Access}" id="user_Access"
										disabled="disabled" name = "user_Access">
									        <option>Admin Access</option>
									        <option>Normal Access</option>
									        <option>Super Admin</option>
								      	</form:select>
								</div></spring:bind>
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