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
<title>Supplier Administration List Page</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	function submitForm(serialNo){
		$("#supplieridinput").val(serialNo);
		document.supplierAdminDetail.submit(); 
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
				<form class="form-horizontal" name="searchsupplieradmin" action="searchsupplieradmin"
					method="POST">
					<fieldset>
						<legend>
							<span> Supplier Administration List Page</span>
							<button type="button" class="btn btn-default pull-right"
								data-toggle="collapse" data-target="#criteria">
								<span class="glyphicon glyphicon-menu-hamburger"
									aria-hidden="true"></span> Collapse Query Criteria
							</button>
						</legend>
						<div id="criteria">
							<div class="form-group">
								<label for="assetNo" class="col-lg-2 control-label">
									Supplier Name: </label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="supplierName"
										name="supplierName" placeholder="Supplier Name" value="${supplierName}">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="reset" class="btn btn-default">Cancel</button>
									<button type="submit" class="btn btn-primary">Search
										Supplier</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				</div>
				<div class="table-responsive">
				<form class="form-horizontal" name="supplierAdminDetail" action="supplierAdminDetail"
					method="GET">
					<fieldset>
					<input id="supplieridinput" type="hidden" name="supplierid" value="123">
				<table class="table table-hover">
					<thead>
						<tr>
						<th>Supplier  Name</th>
						<th>Supplier  Address  Line1</th>
						<th>Supplier  Address  Line2</th>
						<th>Suburb</th>
						<th>Supplier  City</th>
						<th>Supplier  Zip</th>
						<th>Supplier  Country</th>
						<th>Supplier  Contact  FName</th>
						<th>Supplier  Contact  LName</th>
						<th>Supplier  Contact  Phone</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${records}" var="record" varStatus="recordIndex">
							<tr>
								<td id="book_id${recordIndex.index}">
								<a href="supplierAdminDetail?supplierid=${record.supplierid}" onclick="submitForm(${record.supplierid})" style="display:block;"><c:out
										value="${record.sp_Name}" /></a>
								</td>
								<td id="title${booksIndex.index}"><c:out
										value="${record.sp_Addr_L1}" /></td>
								<td><c:out value="${record.sp_Addr_L2}" /></td>
								<td id="branch_id${booksIndex.index}"><c:out
										value="${record.suburb}" /></td>
								<td id="branchName${booksIndex.index}"><c:out
										value="${record.sp_City}" /></td>
								<td><c:out value="${record.sp_Zip}" /></td>
								<td><c:out value="${record.sp_Country}" /></td>
								<td><c:out value="${record.sp_Ct_Fname}" /></td>
								<td><c:out value="${record.sp_Ct_Lname}" /></td>
								<td><c:out value="${record.sp_Ct_Phone}" /></td>
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