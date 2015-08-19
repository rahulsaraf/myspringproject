<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Equipment Admin List Page</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	function submitForm(serialNo){
		$("#equipidinput").val(serialNo);
		document.equipmentAdminDetail.submit(); 
		return false;
	}
	
</script>
</head>
<body class="container">
	<div class="container">
		<div id="navigationBar"></div>
	</div>
	<div class="container row">
			<div class="well bs-component">
			<div>
				<form class="form-horizontal" name="searchequipmentadmin" action="searchequipmentadmin"
					method="POST">
					<fieldset>
						<legend>
							<span> Equipment Admin List Page</span>
							<button type="button" class="btn btn-default pull-right"
								data-toggle="collapse" data-target="#criteria">
								<span class="glyphicon glyphicon-menu-hamburger"
									aria-hidden="true"></span> Collapse Query Criteria
							</button>
						</legend>
						<div id="criteria">
							<div class="form-group">
								<label for="assetNo" class="col-lg-2 control-label">
									Equipment Name: </label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="equipName"
										name="equipName" placeholder="Equipment Name" value="${equipName}">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="reset" class="btn btn-default">Cancel</button>
									<button type="submit" class="btn btn-primary">Search
										Equipment</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				</div>
				<div class="table-responsive">
				<form class="form-horizontal" name="equipmentAdminDetail" action="equipmentAdminDetail"
					method="GET">
					<fieldset>
					<input id="equipidinput" type="hidden" name="equipid" value="123">
				<table class="table table-hover">
					<thead>
						<tr>
						<th>Equipment Name</th>
						<th>Equipment Description</th>
						<th>Equipment Delivery Date</th>
						<th>Manufacturer Name</th>
						<th>Vendor Name</th>
							<th>Supplier Name</th>
							<th>Model Number</th>
							<th>Serial Number</th>
							<th>Internal Asset Number</th>
							<th>Equipment Type</th>
							<th>Equipment Class</th>	
							<th>Invoice Date</th>
							<th>Warranty End Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${records}" var="record" varStatus="recordIndex">
							<tr>
								<td id="book_id${recordIndex.index}">
								<a href="equipmentAdminDetail?equipId=${record.eqp_id}" onclick="submitForm(${record.eqp_id})" style="display:block;"><c:out
										value="${record.eqp_Name}" /></a>
								</td>
								<td id="title${booksIndex.index}"><c:out
										value="${record.eqp_Desc}" /></td>
								<td><c:out value="${record.eqp_Del_Date}" /></td>
								<td id="branch_id${booksIndex.index}"><c:out
										value="${record.manf_Name}" /></td>
								<td id="branchName${booksIndex.index}"><c:out
										value="${record.vendor_Name}" /></td>
								<td><c:out value="${record.supplier_Name}" /></td>
								<td><c:out value="${record.model_No}" /></td>
								<td><c:out value="${record.serial_No}" /></td>
								<td><c:out value="${record.int_Asset_no}" /></td>
								<td><c:out value="${record.equip_Type}" /></td>
								<td><c:out value="${record.equip_Class}" /></td>
								<td><c:out value="${record.invoice_Date}" /></td>
								<td><c:out value="${record.wrty_End_Date}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</fieldset>
					</form>
				</div>
			</div>
		</div>
		
	
	
</body>
</html>