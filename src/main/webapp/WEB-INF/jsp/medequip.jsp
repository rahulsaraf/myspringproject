<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ include file="header.html"%>
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
	
	$('#myTabs a[href="#equipdetails"]').tab('show');
	$('#myTabs a[href="#locationdetails"]').tab('show');
	$('#myTabs a[href="#supplierdetails"]').tab('show');
	$('#myTabs a[href="#sparedetails"]').tab('show');
	
	
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
					
					
				<form:form class="form-horizontal" name="submitEquipment"  modelAttribute="medicalEquipmentForm"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
							
								<label for="bookId" class="col-lg-2 text-left">Category :</label>
								<spring:bind path="CATEGORY">
								<div class="col-lg-3">
									<form:input  path="CATEGORY" type="text" class="form-control" id="category1"
										disabled="disabled" value="${record.CATEGORY}"/>
								</div>
								</spring:bind>
								<spring:bind path="SERIAL_NO">
								<label for="branchId" class="col-lg-3 text-left ">Serial Number :</label>
								<div class="col-lg-3">
									<form:input path="SERIAL_NO" type="text" class="form-control" id="serialNo1"
										disabled="disabled" value="${record.SERIAL_NO}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Sub Category :</label>
								<spring:bind path="SUB_CTGRY">
								<div class="col-lg-3">
									<form:input path="SUB_CTGRY"type="text" class="form-control" id="subcategory1"
										disabled="disabled" value="${record.SUB_CTGRY}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Manufacturer Name :</label>
								<spring:bind path="MANUF_NAME">
								<div class="col-lg-3">
									<form:input path="MANUF_NAME" type="text" class="form-control" id="manufacturer1"
										disabled="disabled" value="${record.MANUF_NAME}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Name :</label>
								<spring:bind path="EQP_NAME">
								<div class="col-lg-3">
									<form:input path="EQP_NAME" type="text" class="form-control" id="equipname1"
										disabled="disabled" value="${record.EQP_NAME}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Internal Asset Number :</label>
								<spring:bind path="INT_AST_NO">
								<div class="col-lg-3">
									<form:input path="INT_AST_NO" type="text" class="form-control" id="assetno1"
										disabled="disabled" value="${record.INT_AST_NO}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<spring:bind path="EQP_DESC">
								<div class="col-lg-7">
									<form:input path="EQP_DESC" type="text" class="form-control" id="equipdescription"
										disabled="disabled" name = "equipdescription" value="${record.EQP_DESC}"/>
								</div>
										</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Type :</label>
								<spring:bind path="EQP_TYPE">
								<div class="col-lg-3">
									<form:input path="EQP_TYPE" type="text" class="form-control" id="equiptype1"
										disabled="disabled" value="${record.EQP_TYPE}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Delivery Date :</label>
								<spring:bind path="DEL_DATE">
								<div class="col-lg-3">
									<form:input path="DEL_DATE" type="text" class="form-control" id="deliverydate1"
										disabled="disabled" value="${record.DEL_DATE}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Model Number :</label>
								<spring:bind path="MODEL_NO">
								<div class="col-lg-3">
									<form:input path="MODEL_NO"  type="text" class="form-control" id="modelnumber1"
										disabled="disabled" value="${record.MODEL_NO}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Vendor Name :</label>
								<spring:bind path="VEN_NAME">
								<div class="col-lg-3">
									<form:input path="VEN_NAME" type="text" class="form-control" id="vendorname1"
										disabled="disabled" value="${record.VEN_NAME}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Class :</label>
								<spring:bind path="EQP_CLASS">
								<div class="col-lg-3">
									<form:input path="EQP_CLASS" type="text" class="form-control" id="equipclass1"
										disabled="disabled" value="${record.EQP_CLASS}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Number :</label>
								<spring:bind path="INVOICE_NO">
								<div class="col-lg-3">
									<form:input path="INVOICE_NO" type="text" class="form-control" id="invoicenumber1"
										disabled="disabled" value="${record.INVOICE_NO}"/>
								</div>
								</spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warrenty Type :</label>
								<spring:bind path="WARTY_TYPE">
								<div class="col-lg-3">
									<form:input path="WARTY_TYPE" type="text" class="form-control" id="warrentytype1"
										disabled="disabled" value="${record.WARTY_TYPE}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Date :</label>
								<spring:bind path="INVOICE_DATE">
								<div class="col-lg-3">
									<form:input path="INVOICE_DATE" type="text" class="form-control" id="invoicedate1"
										disabled="disabled" value="${record.INVOICE_DATE}"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warrenty End Date :</label>
								<spring:bind path="WARTY_END_DATE">
								<div class="col-lg-3">
									<form:input path="WARTY_END_DATE" type="text" class="form-control" id="warrentyenddate1"
										disabled="disabled" value="${record.WARTY_END_DATE}"/>
								</div>
								</spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Indent Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="indentnumber1"
										disabled="disabled" value="${record.INDENT_NO}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">LPO Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="lponumber1"
										disabled="disabled" value="${record.LPO_NO}">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Price Paid :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="pricepaid1"
										disabled="disabled" value="${record.PRICE_PAID}">
								</div>
							</div>							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Additional Remarks :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="remarks"
										disabled="disabled" name = "remarks" value="${record.ADD_Remarks}">
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
<div id="locationdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Location Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
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
								<label for="bookId" class="col-lg-3 text-left">Department :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="department1"
										disabled="disabled" value="${record.DEPARTMENT}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Room Number :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="roomnumber1"
										disabled="disabled" value="${record.ROOM_NO}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Actual Location :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="location"
										disabled="disabled" value="${record.ACTUAL_LOC}">
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
<div id="supplierdetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Supplier Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
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
								<label for="bookId" class="col-lg-3 text-left">Supplier Name :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="suppliername1"
										disabled="disabled" value="${record.SUPPLIER_NAME}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Supplier Address Line 1 :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="supplieradd1"
										disabled="disabled" value="${record.SUP_ADD_L1}">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Supplier Address Line 2 :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="supplieradd2" name="supplieradd2"
										disabled="disabled" value="${record.SUP_ADD_L2}">
								</div>
							</div>
							<div class="form-group">
								<label for="title" class="col-lg-3 text-left">Supplier Address Line 3 :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="supplieradd3" name="supplieradd3"
										disabled="disabled" value="${record.SUP_ADD_L2}">
								</div>
							</div>
							<div class="form-group">
								<label for="dueDate" class="col-lg-3 text-left">Supplier Contact Name <span class="text-danger">* </span>:
								</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="suppliercontactname" name="suppliercontactname"
										name="d_dueDate" required value="${record.SUP_ADD_L2}">
								</div>
							</div>
							<div class="form-group">
								<label for="dateOut" class="col-lg-3 text-left">Supplier Contact Phone <span class="text-danger">* </span>:
								</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="suppliercontactph" name="suppliercontactph"
										name="d_dateOut" required value="${record.SUP_CT_PHONE}">
								</div>
							</div>
							<div class="form-group">
								<label for="cardNo" class="col-lg-3 text-left">Alternate Phone <span class="text-danger">* </span>:
								</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="alternatephone" name="alternatephone"
										name="d_cardNo" required value="${record.ALT_PHONE}">
								</div>
							</div>
							<div class="form-group">
								<label for="cardNo" class="col-lg-3 text-left">Email Address <span class="text-danger">* </span>:
								</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="email" name="email"
										name="d_cardNo" required value="${record.EMAIL_ID}">
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
<div id="sparedetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Spare Details</h4>
				<a style="display:inline-block; float:right;" href="medicalequiplistpage">Return to Medical Equipment List</a>
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
								<label for="bookId" class="col-lg-3 text-left">Spares Inventory List :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="sparestx1"
										disabled="disabled" value="${record.SP_INV_LIST}">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Spares Mapping for Current Equipment :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="sparestx2"
										disabled="disabled" value="${record.SP_MFC_EQP}">
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
        <p class="text-muted">Slice n Dice LLC. Designed by Rahul</p>
      </div>
</footer>
</body>
</html>