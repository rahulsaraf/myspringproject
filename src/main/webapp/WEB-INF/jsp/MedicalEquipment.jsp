<!DOCTYPE>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<style type="text/css">
/**
 * Override feedback icon position
 * See http://formvalidation.io/examples/adjusting-feedback-icon-position/
 */
#updateMedEquipmentDetails .form-control-feedback {
    top: 0;
    right: -15px;
}
</style>
<title>Medical Equipment</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('.date-picker')
        .datepicker({
            format: 'mm/dd/yyyy'
        });
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#equipdetails"]').tab('show');
	$('#myTabs a[href="#locationdetails"]').tab('show');
	$('#myTabs a[href="#supplierdetails"]').tab('show');
	$('#myTabs a[href="#sparedetails"]').tab('show');
	$('#myTabs a[href="#additionaldetails"]').tab('show');
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>
	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#equipdetails" id="equip-tab" role="tab" data-toggle="tab" aria-controls="equipdetails" aria-expanded="true">Equipment Details</a></li>
		    <li role="presentation"><a href="#locationdetails" role="tab" id="location-tab" data-toggle="tab" aria-controls="locationdetails">Location</a></li>
		    <li role="presentation"><a href="#supplierdetails" role="tab" id="supplier-tab" data-toggle="tab" aria-controls="supplierdetails">Supplier</a></li>
		    <li role="presentation"><a href="#sparedetails" role="tab" id="spare-tab" data-toggle="tab" aria-controls="sparedetails">Spares</a></li>
		    <li role="presentation"><a href="#additionaldetails" role="tab" id="additional-tab" data-toggle="tab" aria-controls="additionaldetails">Additional Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Equipment Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="updateMedEquipmentDetails" action="updateMedEquipmentDetails"  modelAttribute="medEquipmentForm" onsubmit="return validateForm()" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
<form:hidden path="DEPARTMENT"    value="${medEquipmentForm.DEPARTMENT}"/>
<form:hidden path="equip_record_id"    value="${medEquipmentForm.equip_record_id}"/>
							<form:hidden path="ROOM_NO"    value="${medEquipmentForm.ROOM_NO}"/>
							<form:hidden path="ACTUAL_LOC"    value="${medEquipmentForm.ACTUAL_LOC}"/>
							<form:hidden path="SUPPLIER_NAME"    value="${medEquipmentForm.SUPPLIER_NAME}"/>
							<form:hidden path="SUP_ADD_L1"    value="${medEquipmentForm.SUP_ADD_L1}"/>
							<form:hidden path="SUP_ADD_L2"    value="${medEquipmentForm.SUP_ADD_L2}"/>
							<form:hidden path="SUP_ADD_L3"    value="${medEquipmentForm.SUP_ADD_L3}"/>
							<form:hidden path="sp_Ct_Name"    value="${medEquipmentForm.sp_Ct_Name}"/>
							<form:hidden path="sp_Ct_Lname"    value="${medEquipmentForm.sp_Ct_Lname}"/>
							<form:hidden path="SUP_CT_PHONE"    value="${medEquipmentForm.SUP_CT_PHONE}"/>
							<form:hidden path="ALT_PHONE"    value="${medEquipmentForm.ALT_PHONE}"/>
							<form:hidden path="EMAIL_ID"    value="${medEquipmentForm.EMAIL_ID}"/>
							<form:hidden path="SP_INV_LIST"    value="${medEquipmentForm.SP_INV_LIST}"/>
							<form:hidden path="SP_MFC_EQP"    value="${medEquipmentForm.SP_MFC_EQP}"/>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Category :</label>
								<spring:bind path="CATEGORY"><div class="col-lg-3">
									<input name="CATEGORY" type="text" class="form-control" id="category1"
										 value="${medEquipmentForm.CATEGORY}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Serial Number :</label>
								<spring:bind path="SERIAL_NO"><div class="col-lg-3">
									<input name="SERIAL_NO" type="text" class="form-control" id="serialNo1"
										 value="${medEquipmentForm.SERIAL_NO}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Sub Category :</label>
								<spring:bind path="SUB_CTGRY"><div class="col-lg-3">
									<input name="SUB_CTGRY" type="text" class="form-control" id="subcategory1"
										 value="${medEquipmentForm.SUB_CTGRY}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Manufacturer Name :</label>
								<spring:bind path="MANUF_NAME"><div class="col-lg-3">
									<input name="MANUF_NAME" type="text" class="form-control" id="manufacturer1"
										 value="${medEquipmentForm.MANUF_NAME}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Name :</label>
								<spring:bind path="EQP_NAME"><div class="col-lg-3">
									<input name="EQP_NAME" type="text" class="form-control" id="equipname1"
										 value="${medEquipmentForm.EQP_NAME}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Internal Asset Number :</label>
								<spring:bind path="INT_AST_NO"><div class="col-lg-3">
									<input name="INT_AST_NO" type="text" class="form-control" id="assetno1"
										 value="${medEquipmentForm.INT_AST_NO}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<spring:bind path="EQP_DESC"><div class="col-lg-7">
									<input name="EQP_DESC" type="text" class="form-control" id="equipdescription"
										 name = "EQP_DESC" value="${medEquipmentForm.EQP_DESC}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Type :</label>
								<spring:bind path="EQP_TYPE"><div class="col-lg-3">
									<input name="EQP_TYPE" type="text" class="form-control" id="equiptype1"
										 value="${medEquipmentForm.EQP_TYPE}">
								</div></spring:bind>
								 <label for="branchId" class="col-lg-3 text-left ">Delivery Date :</label>
								<spring:bind path="DEL_DATE"><div class="col-lg-3">
								 <div class="input-group">
								<label for="deliverydate1" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="DEL_DATE" type="text" class="date-picker form-control" id="deliverydate1"
										 value="${medEquipmentForm.DEL_DATE}">
								</div></div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Model Number :</label>
								<spring:bind path="MODEL_NO"><div class="col-lg-3">
									<input name="MODEL_NO" type="text" class="form-control" id="modelnumber1"
										 value="${medEquipmentForm.MODEL_NO}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Vendor Name :</label>
								<spring:bind path="VEN_NAME"><div class="col-lg-3">
									<input name="VEN_NAME" type="text" class="form-control" id="vendorname1"
										 value="${medEquipmentForm.VEN_NAME}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Class :</label>
								<spring:bind path="EQP_CLASS"><div class="col-lg-3">
									<input name="EQP_CLASS" type="text" class="form-control" id="equipclass1"
										 value="${medEquipmentForm.EQP_CLASS}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Number :</label>
								<spring:bind path="INVOICE_NO"><div class="col-lg-3">
									<input name="INVOICE_NO" type="text" class="form-control" id="invoicenumber1"
										 value="${medEquipmentForm.INVOICE_NO}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warrenty Type :</label>
								<spring:bind path="WARTY_TYPE"><div class="col-lg-3">
									<input name="WARTY_TYPE" type="text" class="form-control" id="warrentytype1"
										 value="${medEquipmentForm.WARTY_TYPE}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Date :</label>
								<spring:bind path="INVOICE_DATE"><div class="col-lg-3">
								 <div class="input-group">
								<label for="invoicedate1" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="INVOICE_DATE" type="text" class="date-picker form-control" id="invoicedate1"
										 value="${medEquipmentForm.INVOICE_DATE}">
								</div></div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warrenty End Date :</label>
								<spring:bind path="WARTY_END_DATE"><div class="col-lg-3">
								 <div class="input-group">
								 <label for="warrentyenddate1" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="WARTY_END_DATE" type="text" class="date-picker form-control" id="warrentyenddate1"
										 value="${medEquipmentForm.WARTY_END_DATE}">
								</div>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Indent Number :</label>
								<spring:bind path="INDENT_NO"><div class="col-lg-3">
									<input name="INDENT_NO" type="text" class="form-control" id="indentnumber1"
										 value="${medEquipmentForm.INDENT_NO}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">LPO Number :</label>
								<spring:bind path="LPO_NO"><div class="col-lg-3">
									<input name="LPO_NO" type="text" class="form-control" id="lponumber1"
										 value="${medEquipmentForm.LPO_NO}">
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Price Paid :</label>
								<spring:bind path="PRICE_PAID"><div class="col-lg-3">
									<input name="PRICE_PAID" type="text" class="form-control" id="pricepaid1"
										 value="${medEquipmentForm.PRICE_PAID}">
								</div></spring:bind>
							</div>							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Additional Remarks :</label>
								<spring:bind path="ADD_Remarks"><div class="col-lg-7">
									<input name="ADD_Remarks" type="text" class="form-control" id="remarks"
										 name = "remarks" value="${medEquipmentForm.ADD_Remarks}">
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
<div id="locationdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Location Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="updateMedEquipmentDetails" action="updateMedEquipmentDetails"  modelAttribute="medEquipmentForm" onsubmit="return validateForm()" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						<form:hidden path="CATEGORY"    value="${medEquipmentForm.CATEGORY}"/>
						<form:hidden path="SUB_CTGRY"    value="${medEquipmentForm.SUB_CTGRY}"/>
							<form:hidden path="SERIAL_NO"    value="${medEquipmentForm.SERIAL_NO}"/>
							<form:hidden path="MANUF_NAME"    value="${medEquipmentForm.MANUF_NAME}"/>
							<form:hidden path="EQP_NAME"    value="${medEquipmentForm.EQP_NAME}"/>
							<form:hidden path="EQP_DESC"    value="${medEquipmentForm.EQP_DESC}"/>
							<form:hidden path="INT_AST_NO"    value="${medEquipmentForm.INT_AST_NO}"/>
							<form:hidden path="EQP_TYPE"    value="${medEquipmentForm.EQP_TYPE}"/>
							<form:hidden path="DEL_DATE"    value="${medEquipmentForm.DEL_DATE}"/>
							<form:hidden path="MODEL_NO"    value="${medEquipmentForm.MODEL_NO}"/>
							<form:hidden path="VEN_NAME"    value="${medEquipmentForm.VEN_NAME}"/>
							<form:hidden path="EQP_CLASS"    value="${medEquipmentForm.EQP_CLASS}"/>
							<form:hidden path="INVOICE_NO"    value="${medEquipmentForm.INVOICE_NO}"/>
							<form:hidden path="INVOICE_DATE"    value="${medEquipmentForm.INVOICE_DATE}"/>
							<form:hidden path="WARTY_TYPE"    value="${medEquipmentForm.WARTY_TYPE}"/>
							<form:hidden path="WARTY_END_DATE"    value="${medEquipmentForm.WARTY_END_DATE}"/>
							<form:hidden path="INDENT_NO"    value="${medEquipmentForm.INDENT_NO}"/>
							<form:hidden path="LPO_NO"    value="${medEquipmentForm.LPO_NO}"/>
							<form:hidden path="PRICE_PAID"    value="${medEquipmentForm.PRICE_PAID}"/>
							<form:hidden path="ADD_Remarks"    value="${medEquipmentForm.ADD_Remarks}"/>
							<form:hidden path="SUPPLIER_NAME"    value="${medEquipmentForm.SUPPLIER_NAME}"/>
							<form:hidden path="SUP_ADD_L1"    value="${medEquipmentForm.SUP_ADD_L1}"/>
							<form:hidden path="SUP_ADD_L2"    value="${medEquipmentForm.SUP_ADD_L2}"/>
							<form:hidden path="SUP_ADD_L3"    value="${medEquipmentForm.SUP_ADD_L3}"/>
							<form:hidden path="sp_Ct_Name"    value="${medEquipmentForm.sp_Ct_Name}"/>
							<form:hidden path="sp_Ct_Lname"    value="${medEquipmentForm.sp_Ct_Lname}"/>
							<form:hidden path="SUP_CT_PHONE"    value="${medEquipmentForm.SUP_CT_PHONE}"/>
							<form:hidden path="ALT_PHONE"    value="${medEquipmentForm.ALT_PHONE}"/>
							<form:hidden path="EMAIL_ID"    value="${medEquipmentForm.EMAIL_ID}"/>
							<form:hidden path="SP_INV_LIST"    value="${medEquipmentForm.SP_INV_LIST}"/>
							<form:hidden path="SP_MFC_EQP"    value="${medEquipmentForm.SP_MFC_EQP}"/>
							<form:hidden path="equip_record_id"    value="${medEquipmentForm.equip_record_id}"/>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Department :</label>
								<spring:bind path="DEPARTMENT"><div class="col-lg-8">
									<input name="DEPARTMENT" type="text" class="form-control" id="department1"
										 value="${medEquipmentForm.DEPARTMENT}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Room Number :</label>
								<spring:bind path="ROOM_NO"><div class="col-lg-8">
									<input name=ROOM_NO type="text" class="form-control" id="roomnumber1"
										 value="${medEquipmentForm.ROOM_NO}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Actual Location :</label>
								<spring:bind path="ACTUAL_LOC"><div class="col-lg-8">
									<input name="ACTUAL_LOC" type="text" class="form-control" id="location"
										 value="${medEquipmentForm.ACTUAL_LOC}">
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
<div id="supplierdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Supplier Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="updateMedEquipmentDetails" action="updateMedEquipmentDetails"  modelAttribute="medEquipmentForm" onsubmit="return validateForm()" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Name :</label>
								<spring:bind path="SUPPLIER_NAME"><div class="col-lg-8">
									<input name="SUPPLIER_NAME" type="text" class="form-control" id="suppliername1"
										 value="${medEquipmentForm.SUPPLIER_NAME}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Supplier Address Line 1 :</label>
								<spring:bind path="SUP_ADD_L1"><div class="col-lg-8">
									<input name="SUP_ADD_L1" type="text" class="form-control" id="supplieradd1"
										 value="${medEquipmentForm.SUP_ADD_L1}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 2 :</label>
								<spring:bind path="SUP_ADD_L2"><div class="col-lg-8">
									<input name="SUP_ADD_L2" type="text" class="form-control" id="supplieradd2" name="supplieradd2"
										 value="${medEquipmentForm.SUP_ADD_L2}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="title" class="col-lg-3 text-left">Supplier Address Line 3 :</label>
								<spring:bind path="SUP_ADD_L3"><div class="col-lg-8">
									<input name="SUP_ADD_L3" type="text" class="form-control" id="supplieradd3" name="supplieradd3"
										 value="${medEquipmentForm.SUP_ADD_L3}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="dueDate" class="col-lg-3 text-left">Supplier Contact Name <span class="text-danger">* </span>:
								</label>
								<spring:bind path="sp_Ct_Name"><div class="col-lg-8">
									<input name="sp_Ct_Name" type="text" class="form-control" id="suppliercontactname" name="suppliercontactname"
										name="sp_Ct_Name" required value="${medEquipmentForm.sp_Ct_Name}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="dateOut" class="col-lg-3 text-left">Supplier Contact Phone <span class="text-danger">* </span>:
								</label>
								<spring:bind path="SUP_CT_PHONE"><div class="col-lg-8">
									<input name="SUP_CT_PHONE" type="text" class="form-control" id="suppliercontactph" name="suppliercontactph"
										name="d_dateOut" required value="${medEquipmentForm.SUP_CT_PHONE}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="cardNo" class="col-lg-3 text-left">Alternate Phone <span class="text-danger">* </span>:
								</label>
								<spring:bind path="ALT_PHONE"><div class="col-lg-8">
									<input name="ALT_PHONE" type="text" class="form-control" id="alternatephone" name="alternatephone"
										name="d_cardNo" required value="${medEquipmentForm.ALT_PHONE}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="cardNo" class="col-lg-3 text-left">Email Address <span class="text-danger">* </span>:
								</label>
								<spring:bind path="EMAIL_ID"><div class="col-lg-8">
									<input name="EMAIL_ID" type="text" class="form-control" id="email" name="email"
										name="d_cardNo" required value="${medEquipmentForm.EMAIL_ID}">
								</div></spring:bind>
							</div>
							<form:hidden path="equip_record_id"    value="${medEquipmentForm.equip_record_id}"/>
							<form:hidden path="CATEGORY"    value="${medEquipmentForm.CATEGORY}"/>
							<form:hidden path="SUB_CTGRY"    value="${medEquipmentForm.SUB_CTGRY}"/>
							<form:hidden path="SERIAL_NO"    value="${medEquipmentForm.SERIAL_NO}"/>
							<form:hidden path="MANUF_NAME"    value="${medEquipmentForm.MANUF_NAME}"/>
							<form:hidden path="EQP_NAME"    value="${medEquipmentForm.EQP_NAME}"/>
							<form:hidden path="EQP_DESC"    value="${medEquipmentForm.EQP_DESC}"/>
							<form:hidden path="INT_AST_NO"    value="${medEquipmentForm.INT_AST_NO}"/>
							<form:hidden path="EQP_TYPE"    value="${medEquipmentForm.EQP_TYPE}"/>
							<form:hidden path="DEL_DATE"    value="${medEquipmentForm.DEL_DATE}"/>
							<form:hidden path="MODEL_NO"    value="${medEquipmentForm.MODEL_NO}"/>
							<form:hidden path="VEN_NAME"    value="${medEquipmentForm.VEN_NAME}"/>
							<form:hidden path="EQP_CLASS"    value="${medEquipmentForm.EQP_CLASS}"/>
							<form:hidden path="INVOICE_NO"    value="${medEquipmentForm.INVOICE_NO}"/>
							<form:hidden path="INVOICE_DATE"    value="${medEquipmentForm.INVOICE_DATE}"/>
							<form:hidden path="WARTY_TYPE"    value="${medEquipmentForm.WARTY_TYPE}"/>
							<form:hidden path="WARTY_END_DATE"    value="${medEquipmentForm.WARTY_END_DATE}"/>
							<form:hidden path="INDENT_NO"    value="${medEquipmentForm.INDENT_NO}"/>
							<form:hidden path="LPO_NO"    value="${medEquipmentForm.LPO_NO}"/>
							<form:hidden path="PRICE_PAID"    value="${medEquipmentForm.PRICE_PAID}"/>
							<form:hidden path="ADD_Remarks"    value="${medEquipmentForm.ADD_Remarks}"/>
							<form:hidden path="DEPARTMENT"    value="${medEquipmentForm.DEPARTMENT}"/>
							<form:hidden path="ROOM_NO"    value="${medEquipmentForm.ROOM_NO}"/>
							<form:hidden path="ACTUAL_LOC"    value="${medEquipmentForm.ACTUAL_LOC}"/>
							<form:hidden path="SP_INV_LIST"    value="${medEquipmentForm.SP_INV_LIST}"/>
							<form:hidden path="SP_MFC_EQP"    value="${medEquipmentForm.SP_MFC_EQP}"/>
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
<div id="sparedetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Spare Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form:form class="form-horizontal" name="updateMedEquipmentDetails" action="updateMedEquipmentDetails"  modelAttribute="medEquipmentForm" onsubmit="return validateForm()" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Spares Inventory List :</label>
								<spring:bind path="SP_INV_LIST"><div class="col-lg-8">
									<input name="SP_INV_LIST" type="text" class="form-control" id="sparestx1"
										 value="${medEquipmentForm.SP_INV_LIST}">
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Spares Mapping for Current Equipment :</label>
								<spring:bind path="SP_MFC_EQP"><div class="col-lg-8">
									<input name="SP_MFC_EQP" type="text" class="form-control" id="sparestx2"
										 value="${medEquipmentForm.SP_MFC_EQP}">
								</div></spring:bind>
							</div>
							<form:hidden path="CATEGORY"    value="${medEquipmentForm.CATEGORY}"/>
							<form:hidden path="SUB_CTGRY"    value="${medEquipmentForm.SUB_CTGRY}"/>
							<form:hidden path="SERIAL_NO"    value="${medEquipmentForm.SERIAL_NO}"/>
							<form:hidden path="MANUF_NAME"    value="${medEquipmentForm.MANUF_NAME}"/>
							<form:hidden path="EQP_NAME"    value="${medEquipmentForm.EQP_NAME}"/>
							<form:hidden path="EQP_DESC"    value="${medEquipmentForm.EQP_DESC}"/>
							<form:hidden path="INT_AST_NO"    value="${medEquipmentForm.INT_AST_NO}"/>
							<form:hidden path="EQP_TYPE"    value="${medEquipmentForm.EQP_TYPE}"/>
							<form:hidden path="DEL_DATE"    value="${medEquipmentForm.DEL_DATE}"/>
							<form:hidden path="MODEL_NO"    value="${medEquipmentForm.MODEL_NO}"/>
							<form:hidden path="VEN_NAME"    value="${medEquipmentForm.VEN_NAME}"/>
							<form:hidden path="EQP_CLASS"    value="${medEquipmentForm.EQP_CLASS}"/>
							<form:hidden path="INVOICE_NO"    value="${medEquipmentForm.INVOICE_NO}"/>
							<form:hidden path="INVOICE_DATE"    value="${medEquipmentForm.INVOICE_DATE}"/>
							<form:hidden path="WARTY_TYPE"    value="${medEquipmentForm.WARTY_TYPE}"/>
							<form:hidden path="WARTY_END_DATE"    value="${medEquipmentForm.WARTY_END_DATE}"/>
							<form:hidden path="INDENT_NO"    value="${medEquipmentForm.INDENT_NO}"/>
							<form:hidden path="LPO_NO"    value="${medEquipmentForm.LPO_NO}"/>
							<form:hidden path="PRICE_PAID"    value="${medEquipmentForm.PRICE_PAID}"/>
							<form:hidden path="ADD_Remarks"    value="${medEquipmentForm.ADD_Remarks}"/>
							<form:hidden path="DEPARTMENT"    value="${medEquipmentForm.DEPARTMENT}"/>
							<form:hidden path="ROOM_NO"    value="${medEquipmentForm.ROOM_NO}"/>
							<form:hidden path="ACTUAL_LOC"    value="${medEquipmentForm.ACTUAL_LOC}"/>
							<form:hidden path="SUPPLIER_NAME"    value="${medEquipmentForm.SUPPLIER_NAME}"/>
							<form:hidden path="SUP_ADD_L1"    value="${medEquipmentForm.SUP_ADD_L1}"/>
							<form:hidden path="SUP_ADD_L2"    value="${medEquipmentForm.SUP_ADD_L2}"/>
							<form:hidden path="SUP_ADD_L3"    value="${medEquipmentForm.SUP_ADD_L3}"/>
							<form:hidden path="sp_Ct_Name"    value="${medEquipmentForm.sp_Ct_Name}"/>
							<form:hidden path="sp_Ct_Lname"    value="${medEquipmentForm.sp_Ct_Lname}"/>
							<form:hidden path="SUP_CT_PHONE"    value="${medEquipmentForm.SUP_CT_PHONE}"/>
							<form:hidden path="ALT_PHONE"    value="${medEquipmentForm.ALT_PHONE}"/>
							<form:hidden path="EMAIL_ID"    value="${medEquipmentForm.EMAIL_ID}"/>
							<form:hidden path="equip_record_id"    value="${medEquipmentForm.equip_record_id}"/>
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
	
	<div id="additionaldetails" role="tabpanel" class="container tab-pane">
	<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Additional Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
					
					<form:form class="form-horizontal">
					<legend> </legend>
					
					<fieldset>
						<div id="criteria">
						
					<div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='searchwarrantydetails?assetNo=&serialNo=${medEquipmentForm.SERIAL_NO}'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Warranty Details
		</button>
		</div></div><div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='AnnualContractDetails'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Annual Contract Details
		</button></div></div><div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='ScheduledMaintainance'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Scheduled Maintenance
		</button></div></div><div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='ServiceRequest'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Service Request Details
		</button></div></div><div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='TechnicalDetails'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Technician Details
		</button></div></div><div class="form-group"><div class="col-lg-8">					
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='createEquipAdminPage'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Work Order
		</button></div></div><div class="form-group"><div class="col-lg-8">
		<button type="button" class="btn btn-primary "
							onclick="window.location.href='createEquipAdminPage'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Navigate to Gate Pass Issue
		</button></div></div></div>
		</fieldset>
		</form:form>
		</div></div>
				
	</div>
</div>
<footer class="container footer" style="padding-top: 60px;">
      <div class="container">
        <p class="text-muted">Slice n Dice LLC. Designed by Rahul</p>
      </div>
</footer>
</body>
</html>