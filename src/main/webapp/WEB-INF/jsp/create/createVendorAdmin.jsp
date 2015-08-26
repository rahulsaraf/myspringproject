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
<title>Create Vendor Record</title>
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
				<h4 style="display:inline-block;" class="modal-title">Create Vendor Details</h4>
				<a style="display:inline-block; float:right;" href="supplierAdminListPage">Return to Vendor Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to create new Vendor</p>
				<form:form class="form-horizontal" name="createVendorAdmin" action="createVendorAdmin"  modelAttribute="vendorAdminForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						
						<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Name :</label>
								<spring:bind path="vendor_Name"><div class="col-lg-7">
									<form:input path="vendor_Name" type="text" class="form-control" id="vendorname"
										disabled="disabled" name = "vendorname" value="${record.vendor_Name}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Description :</label>
								<spring:bind path="vendor_Desc"><div class="col-lg-7">
									<form:input path="vendor_Desc" type="text" class="form-control" id="vendordescription"
										disabled="disabled" name = "vendordescription" value="${record.vendor_Desc}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 1 :</label>
								<spring:bind path="ven_Addr_l1"><div class="col-lg-7">
									<form:input path="ven_Addr_l1" type="text" class="form-control" id="vendoraddress1"
										disabled="disabled" name = "vendoraddressline1" value="${record.ven_Addr_l1}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Address Line 2 :</label>
								<spring:bind path="ven_Addr_l2"><div class="col-lg-7">
									<form:input path="ven_Addr_l2" type="text" class="form-control" id="vendoraddress2"
										disabled="disabled" name = "vendoraddressline2" value="${record.ven_Addr_l2}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">City :</label>
								<spring:bind path="ven_Addr_l3"><div class="col-lg-7">
									<form:input path="ven_Addr_l3" type="text" class="form-control" id="city1"
										disabled="disabled" name = "city" value="${record.ven_Addr_l3}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Country :</label>
								<spring:bind path="ven_Country"><div class="col-lg-7">
									<form:input path="ven_Country" type="text" class="form-control" id="vendorcountry1"
										disabled="disabled" name = "vendorcountry" value="${record.ven_Country}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Contact Name :</label>
								<spring:bind path="ven_Ct_Name"><div class="col-lg-7">
									<form:input path="ven_Ct_Name" type="text" class="form-control" id="vendorcontact1"
										disabled="disabled" name = "vendorcontactname" value="${record.ven_Ct_Name}"/>
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Vendor Contact Phone :</label>
								<spring:bind path="ven_Ct_Phone"><div class="col-lg-7">
									<form:input path="ven_Ct_Phone" type="text" class="form-control" id="vendorcontactphone1"
										disabled="disabled" name = "vendorcontactphone" value="${record.ven_Ct_Phone}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Alternate Phone :</label>
								<spring:bind path="alt_Phone"><div class="col-lg-7">
									<form:input path="alt_Phone" type="text" class="form-control" id="alternatephone1"
										disabled="disabled" name = "alternatephone" value="${record.alt_Phone}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Email Address :</label>
								<spring:bind path="email_ID"><div class="col-lg-7">
									<form:input path="email_ID" type="text" class="form-control" id="emailaddress1"
										disabled="disabled" name = "vendoremail" value="${record.email_ID}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Is Vendor Supplier Also? :</label>
								<spring:bind path="is_Ven_Supp"><div class="col-lg-7">
									<form:input path="is_Ven_Supp" type="text" class="form-control"  id="isvendorsupplier" name="isvendorsupplier" value="${record.is_Ven_Supp}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Is Vendor Manufacturer Also? :</label>
								<spring:bind path="is_Ven_Manuf"><div class="col-lg-7">
									<form:input path="is_Ven_Manuf" type="text" class="form-control"  id="isvendormanufacturer" name="isvendormanufacturer" value="${record.is_Ven_Manuf}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Is Vendor Preferred? :</label>
								<spring:bind path="is_Ven_Preffd"><div class="col-lg-7">
									<form:input path="is_Ven_Preffd" type="text" class="form-control" id="isvendorpreferred"
										disabled="disabled" value="${record.is_Ven_Preffd}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Does Vendor Supply Spares? :</label>
								<spring:bind path="DVS_Spares"><div class="col-lg-7">
									<form:input path="DVS_Spares" type="text" class="form-control" name="doesvendorspares" value="${record.DVS_Spares}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Additional Remarks :</label>
								<spring:bind path="add_Re"><div class="col-lg-7">
									<form:input path="add_Re" type="text" class="form-control" id="remarks" name="remarks" value="${record.add_Re}"/>
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