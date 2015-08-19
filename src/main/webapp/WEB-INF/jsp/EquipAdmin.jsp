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
<title>Equipment Administration</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#equipadmindetails"]').tab('show');
	$('#myTabs a[href="#eqipadditionaldetails"]').tab('show');
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




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
				<h4 class="modal-title">Equipment Admin Details</h4>
			</div>
			<div class="modal-body">
				<p>Please enter following information about Equipment Admin</p>
				<form class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">

							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Name :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.eqp_Name}"  id="equipname" name="equipname" >
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Delivery Date :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.eqp_Del_Date}"  id="deliverydate" name="deliverydate">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" value="${record.eqp_Desc}"  id="equipdescription2"
										disabled="disabled" name = "equipdescription">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Manufacturer Name :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.manf_Name}"  id="manufacturer" name="manufacturer">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Vendor Name :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.vendor_Name}"  id="vendorname" name="vendorname">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Model Number :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.model_No}"  id="modelnumber" name="modelnumber">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Supplier Name :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.supplier_Name}"  id="suppliername" name="suppliername">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Serial Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" value="${record.serial_No}"  id="serialNo" name="serialNo">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Internal Asset Number :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" value="${record.int_Asset_no}"   id="assetno" name="assetno">
								</div>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Type :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.equip_Type}"  id="equiptype" name="equiptype">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Invoice Number :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.invoice_No}"  id="invoicenumber" name="invoicenumber">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Class :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.equip_Class}"  id="equipclass" name="equipclass">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Invoice Date :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" value="${record.invoice_Date}"   id="invoicedate" name="invoicedate">
								</div>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Category :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" value="${record.category}"   id="category" name="category">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Warrenty Type :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.wrty_Type}"  id="warrentytype" name="warrentytype">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Sub Category :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.sub_Ctgry}"  id="subcategory" name="subcategory">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Warranty End Date :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.wrty_End_Date}"  id="warrantyenddate" name="warrantyenddate">
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
<div id="eqipadditionaldetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Additional Information</h4>
			</div>
			<div class="modal-body">
				<p>Please enter the additional infotmation about the equipments</p>
				<form class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Safety Test Complete :</label>
								<div class="col-lg-3">
									<input type="text"
										class="form-control" value="${record.ST_Comp}"  id="safetytest" name="safetytest">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Caliberation Certificate :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.calib_Certi}"  id="caliberationcertificate" name="caliberationcertificate">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Documents Received :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.doc_rcvd}"  id="docreceived" name="docreceived">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Accessories :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.accessories}"  id="accessories" name="accessories">
								</div>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Equipment Manuals :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.equip_Manuals}"  id="equipmanual" name="equipmanual">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Training Done :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.trng_Done}"  id="trainingdone" name="trainingdone">
								</div>
							</div>
								<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Service Manuals :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.service_Manuals}"  id="servicemanual" name="servicemanual">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Dept Trained :</label>
								<div class="col-lg-3">
									<input type="text" 
										class="form-control" value="${record.dept_Trnd}"  id="depttrained" name="depttrained">
								</div>
							</div>
							
							

							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Other Test Equip Needed :</label>
								<div class="col-lg-8">
									<input type="text" 
										class="form-control" value="${record.OTE_Needed}"  id="othertest" name="othertest">
								</div>
							</div>
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Spares List :</label>
								<div class="col-lg-8">
									<input type="text" 
										class="form-control" value="${record.spares_List}"  id="sparelist" name="sparelist">
								</div>
							</div>
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Additional Remarks :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" value="${record.add_Re}"  id="remarks"
										disabled="disabled">
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