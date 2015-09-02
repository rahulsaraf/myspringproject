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
	
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

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
<title>Create Equipment warrentyForm</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
		$('.date-picker')
        .datepicker({
            format: 'mm/dd/yyyy'
        });
	});
	
	function onLoadClick(){
		var serialVal = $('#serialNo3').val();
		var assetVal = $('#assetno3').val();
		window.location.href="loadEquipmentDetailsForWarrenty?assetNo="+assetVal+"&serialNo="+serialVal;
	}
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>
	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#createwarrantydetails" id="equip-warranty-tab" role="tab" data-toggle="tab" aria-controls="warrantydetails" aria-expanded="true">Equipment Warranty Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="createwarrantydetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Warranty Details</h4>
				<a style="display:inline-block; float:right;" href="warrantyDetailsListPage">Return to Warranty List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="createwarrantydetails" action="createwarrantydetails" modelAttribute="warrentyForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Internal Asset Number :</label>
								<spring:bind path="INT_ASS_NUM"><div class="col-lg-3">
									<input name="INT_ASS_NUM"  type="text" class="form-control" id="assetno3"
										value="${warrentyForm.INT_ASS_NUM}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-2 text-left ">Serial Number :</label>
								<spring:bind path="s_NUM"><div class="col-lg-3">
									<input name="s_NUM"  type="text" class="form-control" id="serialNo3"
										value="${warrentyForm.s_NUM}">
								</div></spring:bind>
								<button type="button" class="btn btn-primary pull-left"
							onclick="onLoadClick();">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Load Equipment
							</button>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Name :</label>
								<spring:bind path="EQP_NAME"><div class="col-lg-7">
									<input name="EQP_NAME"  type="text" class="form-control" id="equipname1"
										value="${warrentyForm.EQP_NAME}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Equipment Description :</label>
								<spring:bind path="EQP_DESC"><div class="col-lg-7">
									<input name="EQP_DESC"  type="text" class="form-control" id="equipdescription"
										value="${warrentyForm.EQP_DESC}">
								</div></spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Manufacturer Name :</label>
								<spring:bind path="MNF_NAME"><div class="col-lg-3">
									<input name="MNF_NAME"  type="text" class="form-control" id="manufname1"
										value="${warrentyForm.MNF_NAME}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Vendor Name :</label>
								<spring:bind path="VENDOR_NAME"><div class="col-lg-3">
									<input name="VENDOR_NAME"  type="text" class="form-control" id="vendorname1"
										value="${warrentyForm.VENDOR_NAME}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warranty Start Date :</label>
								<spring:bind path="WAR_S_DATE"><div class="col-lg-3">
								<div class="input-group">
								 <label for="WAR_S_DATE" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="WAR_S_DATE"  type="text" class="date-picker form-control" id="warrstartdate1"
										value="${warrentyForm.WAR_S_DATE}" >
								</div></div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Warranty End Date :</label>
								<spring:bind path="WAR_E_DATE"><div class="col-lg-3">
									<div class="input-group">
								 <label for="WAR_E_DATE" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="WAR_E_DATE"  type="text" class="date-picker form-control" id="warrenddate1"
										value="${warrentyForm.WAR_E_DATE}">
								</div></div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Warranty Type :</label>
								<spring:bind path="WAR_TYPE"><div class="col-lg-7">
									<input name="WAR_TYPE"  type="text" class="form-control" id="warrantytype1"
										value="${warrentyForm.WAR_TYPE}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Invoice Number :</label>
								<spring:bind path="INV_NUM"><div class="col-lg-7">
									<input name="INV_NUM"  type="text" class="form-control" id="invoicenumber1"
										value="${warrentyForm.INV_NUM}" >
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Invoice Date :</label>
								<spring:bind path="INV_DATE"><div class="col-lg-7">
									<div class="input-group">
								 <label for="INV_DATE" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="INV_DATE"  type="text" class="date-picker form-control" id="invoicedate1"
										value="${warrentyForm.INV_DATE}">
								</div></div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Delivery Date :</label>
								<spring:bind path="DELY_DATE"><div class="col-lg-3">
									<div class="input-group">
								 <label for="DELY_DATE" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="DELY_DATE"  type="text" class="date-picker form-control" id="deliverydate1"
										value="${warrentyForm.DELY_DATE}">
								</div></div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Installation Date :</label>
								<spring:bind path="INSTA_DATE"><div class="col-lg-3">
									<div class="input-group">
								 <label for="INSTA_DATE" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="INSTA_DATE"  type="text" class="date-picker form-control" id="installdate1"
										value="${warrentyForm.INSTA_DATE}"> 
								</div></div></spring:bind>
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