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
<title>Supplier Administration</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#supplieradmindetails"]').tab('show');

	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>
	<div class="container" id="errorMessage">
			<c:choose>
				<c:when test="${result == 0}">
				    <div class="alert alert-danger fade in">
		        	<a href="#" class="close" data-dismiss="alert">&times;</a>
		        	<strong>Error!</strong> Problem occurred while processing your request, Please try again. If problem persists, Contact Support Administrator.
	    			</div>
	    		</c:when>
	    		<c:when test="${result == 1}">
	    			<div class="alert alert-success fade in">
		        	<a href="#" class="close" data-dismiss="alert">&times;</a>
		        	<strong>Success!</strong> supplierAdminForm updated successfully.! 
		        	</div>
	    		</c:when>
	    	</c:choose>
			</div>



	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#supplieradmindetails" id="supplier-tab" role="tab" data-toggle="tab" aria-controls="supplieradmindetails" aria-expanded="true">Supplier Administration Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Supplier Administration Details</h4>
				<a style="display:inline-block; float:right;" href="supplierAdminListPage">Return to Supplier Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="updateSupplierAdmin" action="updateSupplierAdmin"  modelAttribute="supplierAdminForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
							<form:hidden path="supplierid"	    value="${supplierAdminForm.supplierid}"/>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Name <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Name"><div class="col-lg-7">
									<input name="sp_Name" type="text" class="form-control" id="suppname"
										 name = "suppname" value="${supplierAdminForm.sp_Name}" required/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 1 <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Addr_L1"><div class="col-lg-7">
									<input name="sp_Addr_L1" type="text" class="form-control" id="suppaddressline1"
										 name = "suppaddressline1" value="${supplierAdminForm.sp_Addr_L1}" required/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 2 :</label>
								<spring:bind path="sp_Addr_L2"><div class="col-lg-7">
									<input name="sp_Addr_L2" type="text" class="form-control" id="suppaddressline2"
										 name = "suppaddressline2" value="${supplierAdminForm.sp_Addr_L2}"/>
								</div></spring:bind>
							</div>
							
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Suburb :</label>
								<spring:bind path="suburb"><div class="col-lg-7">
									<input name="suburb" type="text" class="form-control" id="suburb"
										 name = "suburb" value="${supplierAdminForm.suburb}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_City"><div class="col-lg-7">
									<input name="sp_City" type="text" class="form-control" id="city"
										 name = "city" value="${supplierAdminForm.sp_City}" required/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Pin/Zip <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Zip"><div class="col-lg-7">
									<input name="sp_Zip" type="text" class="form-control" id="pinzip"
										 name = "pinzip" value="${supplierAdminForm.sp_Zip}" required/>
								</div></spring:bind>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Country <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Country"><div class="col-lg-7">
									<input name="sp_Country" type="text" class="form-control" id="suppliercountry"
										 name = "suppliercountry" value="${supplierAdminForm.sp_Country}" required/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Name <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Ct_Fname"><div class="col-lg-7">
									<input name="sp_Ct_Fname" type="text" class="form-control" id="suppcontactname"
										 name = "suppcontactname" value="${supplierAdminForm.sp_Ct_Fname}" required/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Contact Phone <span class="text-danger">*</span> :</label>
								<spring:bind path="sp_Ct_Phone"><div class="col-lg-7">
									<input name="sp_Ct_Phone" type="text" class="form-control" id="suppcontactphone"
										 name = "suppcontactphone" value="${supplierAdminForm.sp_Ct_Phone}" required/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<spring:bind path="alt_phone"><div class="col-lg-7">
									<input name="alt_phone" type="text" class="form-control" id="alternatephone"
										 name = "alternatephone" value="${supplierAdminForm.alt_phone}" />
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address <span class="text-danger">*</span> :</label>
								<spring:bind path="email_ID"><div class="col-lg-7">
									<input name="email_ID" type="text" class="form-control" id="emailaddress"
										 name = "emailaddress" value="${supplierAdminForm.email_ID}" required/>
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
</div>
<footer class="container footer" style="padding-top: 60px;">
      <div class="container">
        <p class="text-muted">Slice n Dice LLC. Designed by Manasa Malleshappa</p>
      </div>
</footer>
</body>
</html>