<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ include file="../header.html"%>
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
<title>Create Equipment Record</title>
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
				<h4 style="display:inline-block;" class="modal-title">Create Supplier</h4>
				<a style="display:inline-block; float:right;" href="supplierAdminListPage">Return to Supplier Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order create a new Supplier</p>
				<form:form class="form-horizontal" name="createSupplierAdmin" action="createSupplierAdmin"  modelAttribute="supplierAdminForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Name :</label>
								<spring:bind path="sp_Name"><div class="col-lg-7">
									<form:input path="sp_Name" type="text" class="form-control" id="suppname"
										disabled="disabled" name = "suppname" value="${record.sp_Name}"/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 1 :</label>
								<spring:bind path="sp_Addr_L1"><div class="col-lg-7">
									<form:input path="sp_Addr_L1" type="text" class="form-control" id="suppaddressline1"
										disabled="disabled" name = "suppaddressline1" value="${record.sp_Addr_L1}"/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 2 :</label>
								<spring:bind path="sp_Addr_L2"><div class="col-lg-7">
									<form:input path="sp_Addr_L2" type="text" class="form-control" id="suppaddressline2"
										disabled="disabled" name = "suppaddressline2" value="${record.sp_Addr_L2}"/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Suburb :</label>
								<spring:bind path="suburb"><div class="col-lg-7">
									<form:input path="suburb" type="text" class="form-control" id="suburb"
										disabled="disabled" name = "suburb" value="${record.suburb}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City :</label>
								<spring:bind path="sp_City"><div class="col-lg-7">
									<form:input path="sp_City" type="text" class="form-control" id="city"
										disabled="disabled" name = "city" value="${record.sp_City}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Pin/Zip :</label>
								<spring:bind path="sp_Zip"><div class="col-lg-7">
									<form:input path="sp_Zip" type="text" class="form-control" id="pinzip"
										disabled="disabled" name = "pinzip" value="${record.sp_Zip}"/>
								</div></spring:bind>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Country :</label>
								<spring:bind path="sp_Country"><div class="col-lg-7">
									<form:input path="sp_Country" type="text" class="form-control" id="suppliercountry"
										disabled="disabled" name = "suppliercountry" value="${record.sp_Country}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Name :</label>
								<spring:bind path="sp_Ct_Fname"><div class="col-lg-7">
									<form:input path="sp_Ct_Fname" type="text" class="form-control" id="suppcontactname"
										disabled="disabled" name = "suppcontactname" value="${record.sp_Ct_Fname}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Phone :</label>
								<spring:bind path="sp_Ct_Phone"><div class="col-lg-7">
									<form:input path="sp_Ct_Phone" type="text" class="form-control" id="suppcontactphone"
										disabled="disabled" name = "suppcontactphone" value="${record.sp_Ct_Phone}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<spring:bind path="alt_phone"><div class="col-lg-7">
									<form:input path="alt_phone" type="text" class="form-control" id="alternatephone"
										disabled="disabled" name = "alternatephone" value="${record.alt_phone}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<spring:bind path="email_ID"><div class="col-lg-7">
									<form:input path="email_ID" type="text" class="form-control" id="emailaddress"
										disabled="disabled" name = "emailaddress" value="${record.email_ID}"/>
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