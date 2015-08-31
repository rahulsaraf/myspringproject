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
#equipadmindetails .form-control-feedback {
    top: 0;
    right: -15px;
}
</style>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Equipment Administration</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#navigationBar').load('header.html');
	$('.date-picker').datepicker({
        format: 'mm/dd/yyyy'
    });
});	
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	$('#myTabs a[href="#equipadmindetails"]').tab('show');
	$('#myTabs a[href="#eqipadditionaldetails"]').tab('show');
</script>
</head>
<body id="body">
	<div class="container">
		<div id="navigationBar"></div>
	</div>
	
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
	        	<strong>Success!</strong> Record updated successfully.! 
	        	</div>
    		</c:when>
    		<c:when test="${result == 2}">
			    <div class="alert alert-danger fade in">
	        	<a href="#" class="close" data-dismiss="alert">&times;</a>
	        	<strong>Error!</strong> please enter different serial no and asset number, Problem occurred while processing your request, Please try again. If problem persists, Contact Support Administrator.
    			</div>
    		</c:when>
    		<c:when test="${result == 3}">
			    <div class="alert alert-danger fade in">
	        	<a href="#" class="close" data-dismiss="alert">&times;</a>
	        	<strong>Error!</strong> Please enter unique equipment name, Problem occurred while processing your request, Please try again. If problem persists, Contact Support Administrator.
    			</div>
    		</c:when>
    	</c:choose>
		</div>
	
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#equipadmindetails" id="equip-admin-tab" role="tab" data-toggle="tab" aria-controls="equipadmindetails" aria-expanded="true">Equipment Admin Details</a></li>
		    <li role="presentation"><a href="#eqipadditionaldetails" role="tab" id="equip-additional-tab" data-toggle="tab" aria-controls="eqipadditionaldetails">Equipment Additional Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="equipadmindetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Equipment Administration Details</h4>
				<a style="display:inline-block; float:right;" href="equipAdminListPage">Return to Equipment Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter following information about Equipment Administration</p>
				<form:form class="form-horizontal" name="updateEquipmentDetails" action="updateEquipmentDetails"  modelAttribute="equipmentAdminForm" onsubmit="return validateForm()" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						<form:hidden path="eqp_id"	    value="${equipmentAdminForm.eqp_id}"/>
						<form:hidden path="ST_Comp"    value="${equipmentAdminForm.ST_Comp}"/>
						<form:hidden path="doc_rcvd"    value="${equipmentAdminForm.doc_rcvd}"/>
						<form:hidden path="equip_Manuals"    value="${equipmentAdminForm.equip_Manuals}"/>
						<form:hidden path="service_Manuals"    value="${equipmentAdminForm.service_Manuals}"/>
						<form:hidden path="OTE_Needed"    value="${equipmentAdminForm.OTE_Needed}"/>
						<form:hidden path="calib_Certi"    value="${equipmentAdminForm.calib_Certi}"/>
						<form:hidden path="accessories"    value="${equipmentAdminForm.accessories}"/>
						<form:hidden path="trng_Done"    value="${equipmentAdminForm.trng_Done}"/>
						<form:hidden path="dept_Trnd"    value="${equipmentAdminForm.dept_Trnd}"/>
						<form:hidden path="spares_List"    value="${equipmentAdminForm.spares_List}"/>
						<form:hidden path="add_Re"    value="${equipmentAdminForm.add_Re}"/>

							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Name <span class="text-danger">*</span> :</label>
								<spring:bind path="eqp_Name"><div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${equipmentAdminForm.eqp_Name}"  id="eqp_Name" name="eqp_Name" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Delivery Date <span class="text-danger">*</span> :</label>
								<spring:bind path="eqp_Del_Date"><div class="col-lg-3">
								<div class="input-group">
								 <label for="deliverydate" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="eqp_Del_Date" type="text" class="date-picker form-control"
										 value="${equipmentAdminForm.eqp_Del_Date}"  id="eqp_Del_Date" name="eqp_Del_Date" required/>
								</div>
								</div>
								</spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<spring:bind path="eqp_Desc"><div class="col-lg-7">
									<input name="eqp_Desc" type="text" class="form-control" value="${equipmentAdminForm.eqp_Desc}"  id="equipdescription2"
										disabled="disabled" name = "equipdescription"/>
								</div>
								</spring:bind>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Manufacturer Name <span class="text-danger">*</span> :</label>
								<spring:bind path="manf_Name"><div class="col-lg-3">
									<input name="manf_Name" type="text" 
										class="form-control" value="${equipmentAdminForm.manf_Name}"  id="manf_Name" name="manf_Name" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Vendor Name <span class="text-danger">*</span> :</label>
								<spring:bind path="vendor_Name"><div class="col-lg-3">
									<form:select path="vendor_Name" type="text" 
										class="form-control" selected="${equipmentAdminForm.vendor_Name}"  id="vendor_Name" name="vendor_Name">
										
										<c:if test="${not empty equipmentAdminForm.vendor_Name}">
										<option>${equipmentAdminForm.vendor_Name}</option>
										</c:if>
										<c:forEach items="${vendorAdminList}" var="vendor" varStatus="recordIndex">
											<option>${vendor.vendorid} : ${vendor.vendor_Name}</option>
										</c:forEach>
									</form:select>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Model Number <span class="text-danger">*</span> :</label>
								<spring:bind path="model_No"><div class="col-lg-3">
									<input name="model_No" type="text" 
										class="form-control" value="${equipmentAdminForm.model_No}"  id="model_No" name="model_No" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Supplier Name <span class="text-danger">*</span> :</label>
								<spring:bind path="supplier_Name"><div class="col-lg-3">
									<form:select path="supplier_Name" type="text" 
										class="form-control" selected="${equipmentAdminForm.supplier_Name}"  id="supplier_Name" name="supplier_Name">
										
										<c:if test="${not empty equipmentAdminForm.supplier_Name}">
										<option>${equipmentAdminForm.supplier_Name}</option>
										</c:if>
										<legend></legend>
										<c:forEach items="${supplierAdminList}" var="supplier" varStatus="recordIndex">
											<option>${supplier.supplierid} : ${supplier.sp_Name}</option>
										</c:forEach>
										</form:select>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Serial Number <span class="text-danger">*</span> :</label>
								<spring:bind path="serial_No"><div class="col-lg-3">
									<input name="serial_No" type="text" class="form-control" value="${equipmentAdminForm.serial_No}"  id="serial_No" name="serial_No" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Internal Asset Number <span class="text-danger">*</span> :</label>
								<spring:bind path="int_Asset_no"><div class="col-lg-3">
									<input name="int_Asset_no" type="text" class="form-control" value="${equipmentAdminForm.int_Asset_no}"   id="int_Asset_no" name="int_Asset_no" required/>
								</div></spring:bind>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Type <span class="text-danger">*</span> :</label>
								<spring:bind path="equip_Type"><div class="col-lg-3">
									<input name="equip_Type" type="text" 
										class="form-control" value="${equipmentAdminForm.equip_Type}"  id="equip_Type" name="equip_Type" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Number <span class="text-danger">*</span> :</label>
								<spring:bind path="invoice_No"><div class="col-lg-3">
									<input name="invoice_No" type="text" 
										class="form-control" value="${equipmentAdminForm.invoice_No}"  id="invoice_No" name="invoice_No" required/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Class <span class="text-danger">*</span> :</label>
								<spring:bind path="equip_Class"><div class="col-lg-3">
									<input name="equip_Class" type="text" 
										class="form-control" value="${equipmentAdminForm.equip_Class}"  id="equipclass" name="equipclass" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Invoice Date <span class="text-danger">*</span> :</label>
								<spring:bind path="invoice_Date"><div class="col-lg-3">
								<div class="input-group">
								 <label for="invoicedate" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="invoice_Date" class="date-picker form-control" type="text" value="${equipmentAdminForm.invoice_Date}"   id="invoice_Date" name="invoice_Date" required/>
								</div></div></spring:bind>
								
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Category <span class="text-danger">*</span> :</label>
								<spring:bind path="category"><div class="col-lg-3">
									<input name="category" type="text" class="form-control" value="${equipmentAdminForm.category}"   id="category" name="category" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left ">Warrenty Type <span class="text-danger">*</span> :</label>
								<spring:bind path="wrty_Type"><div class="col-lg-3">
									<input name="wrty_Type" type="text" 
										class="form-control" value="${equipmentAdminForm.wrty_Type}"  id="wrty_Type" name="wrty_Type" required/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Sub Category <span class="text-danger">*</span> :</label>
								<spring:bind path="sub_Ctgry"><div class="col-lg-3">
									<input name="sub_Ctgry" type="text" 
										class="form-control" value="${equipmentAdminForm.sub_Ctgry}"  id="sub_Ctgry" name="sub_Ctgry" required/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Warranty End Date <span class="text-danger">*</span> :</label>
								<spring:bind path="wrty_End_Date"><div class="col-lg-3">
								<div class="input-group">
								<label for="warrantyenddate" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span></label>
									<input name="wrty_End_Date" type="text" 
										value="${equipmentAdminForm.wrty_End_Date}" class="date-picker form-control" id="wrty_End_Date" name="wrty_End_Date" required/>
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
<div id="eqipadditionaldetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 style="display:inline-block;" class="modal-title">Additional Information</h4>
				<a style="display:inline-block; float:right;" href="equipAdminListPage">Return to Equipment Administration List</a>
			</div>
			<div class="modal-body">
				<p>Please enter the additional infotmation about the equipments</p>
				<form:form class="form-horizontal" name="updateEquipmentDetails"
					action="updateEquipmentDetails" modelAttribute="equipmentAdminForm" method="POST">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						<form:hidden path="eqp_id"	    value="${equipmentAdminForm.eqp_id}"/>
						<form:hidden path="eqp_Name"    value="${equipmentAdminForm.eqp_Name}"/>
						<form:hidden path="eqp_Desc"    value="${equipmentAdminForm.eqp_Desc}"/>
						<form:hidden path="eqp_Del_Date"    value="${equipmentAdminForm.eqp_Del_Date}"/>
						<form:hidden path="manf_Name"    value="${equipmentAdminForm.manf_Name}"/>
						<form:hidden path="vendor_Name"    value="${equipmentAdminForm.vendor_Name}"/>
						<form:hidden path="supplier_Name"    value="${equipmentAdminForm.supplier_Name}"/>
						<form:hidden path="model_No"    value="${equipmentAdminForm.model_No}"/>
						<form:hidden path="serial_No"    value="${equipmentAdminForm.serial_No}"/>
						<form:hidden path="int_Asset_no"    value="${equipmentAdminForm.int_Asset_no}"/>
						<form:hidden path="equip_Type"    value="${equipmentAdminForm.equip_Type}"/>
						<form:hidden path="invoice_No"    value="${equipmentAdminForm.invoice_No}"/>
						<form:hidden path="equip_Class"    value="${equipmentAdminForm.equip_Class}"/>
						<form:hidden path="invoice_Date"    value="${equipmentAdminForm.invoice_Date}"/>
						<form:hidden path="category"    value="${equipmentAdminForm.category}"/>
						<form:hidden path="wrty_Type"    value="${equipmentAdminForm.wrty_Type}"/>
						<form:hidden path="sub_Ctgry"    value="${equipmentAdminForm.sub_Ctgry}"/>
						<form:hidden path="wrty_End_Date"    value="${equipmentAdminForm.wrty_End_Date}"/>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Safety Test Complete :</label>
								<spring:bind path="ST_Comp"><div class="col-lg-3">
									<input name="ST_Comp" type="text"
										class="form-control" value="${equipmentAdminForm.ST_Comp}"  id="safetytest" name="safetytest"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Caliberation Certificate :</label>
								<spring:bind path="calib_Certi"><div class="col-lg-3">
									<input name="calib_Certi" type="text" 
										class="form-control" value="${equipmentAdminForm.calib_Certi}"  id="caliberationcertificate" name="caliberationcertificate"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Documents Received :</label>
								<spring:bind path="doc_rcvd"><div class="col-lg-3">
									<input name="doc_rcvd" type="text" 
										class="form-control" value="${equipmentAdminForm.doc_rcvd}"  id="docreceived" name="docreceived"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Accessories :</label>
								<spring:bind path="accessories"><div class="col-lg-3">
									<input name="accessories" type="text" 
										class="form-control" value="${equipmentAdminForm.accessories}"  id="accessories" name="accessories"/>
								</div></spring:bind>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Manuals :</label>
								<spring:bind path="equip_Manuals"><div class="col-lg-3">
									<input name="equip_Manuals" type="text" 
										class="form-control" value="${equipmentAdminForm.equip_Manuals}"  id="equipmanual" name="equipmanual"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Training Done :</label>
								<spring:bind path="trng_Done"><div class="col-lg-3">
									<input name="trng_Done" type="text" 
										class="form-control" value="${equipmentAdminForm.trng_Done}"  id="trainingdone" name="trainingdone"/>
								</div></spring:bind>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Service Manuals :</label>
								<spring:bind path="service_Manuals"><div class="col-lg-3">
									<input name="service_Manuals" type="text" 
										class="form-control" value="${equipmentAdminForm.service_Manuals}"  id="servicemanual" name="servicemanual"/>
								</div></spring:bind>
								<label for="branchId" class="col-lg-3 text-left">Dept Trained :</label>
								<spring:bind path="dept_Trnd"><div class="col-lg-3">
									<input name="dept_Trnd" type="text" 
										class="form-control" value="${equipmentAdminForm.dept_Trnd}"  id="depttrained" name="depttrained"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Other Test Equip Needed :</label>
								<spring:bind path="OTE_Needed"><div class="col-lg-8">
									<input name="OTE_Needed" type="text" 
										class="form-control" value="${equipmentAdminForm.OTE_Needed}"  id="othertest" name="othertest"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Spares List :</label>
								<spring:bind path="spares_List"><div class="col-lg-8">
									<input name="spares_List" type="text" 
										class="form-control" value="${equipmentAdminForm.spares_List}"  id="sparelist" name="sparelist"/>
								</div></spring:bind>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Additional Remarks :</label>
								<spring:bind path="add_Re"><div class="col-lg-8">
									<input name="add_Re" type="text" class="form-control" value="${equipmentAdminForm.add_Re}"  id="remarks"
										disabled="disabled"/>
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