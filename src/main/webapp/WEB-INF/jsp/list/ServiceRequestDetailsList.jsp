<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Medical Equipment List Page</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	function submitForm(serialNo){
		$("#serialinputid").val(serialNo);
		document.servicedetail.submit(); 
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
				<form class="form-horizontal" name="searchservicedetails" action="searchservicedetails"
					method="POST">
					<fieldset>
						<legend>
							<span> Service Details List Page</span>
							<button type="button" class="btn btn-default pull-right"
								data-toggle="collapse" data-target="#criteria">
								<span class="glyphicon glyphicon-menu-hamburger"
									aria-hidden="true"></span> Collapse Query Criteria
							</button>
						</legend>
						<div id="criteria">
							<div class="form-group">
								<label for="assetNo" class="col-lg-2 control-label">
									Internal Asset Number: </label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="assetNo"
										name="assetNo" placeholder="Internal Asset Number" value="${assetNo}">
								</div>
							</div>
							<div class="form-group">
								<label for="serialNo" class="col-lg-2 control-label">Serial Number:</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="serialNo" name="serialNo"
										placeholder="Serial Number" value="${serialNo}">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="reset" class="btn btn-default">Cancel</button>
									<button type="submit" class="btn btn-primary">Search
										Service Details</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				</div>
				<div class="table-responsive">
				<form class="form-horizontal" name="servicedetail" action="servicedetail"
					method="GET">
					<fieldset>
					<input id="serialinputid" type="hidden" name="serialNo" value="123">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Serial Number</th>
							<th>Internal Asset Number</th>
							<th>Service Type</th>
							<th>Service Description</th>
							<th>Defect Code</th>
							<th>Defect Description</th>
							<th>Item Code</th>
							<th>Item Description</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${records}" var="record" varStatus="recordIndex">
							<tr>
								<td id="book_id${recordIndex.index}">
								<a href="servicedetail?serialNo=${record.SERIAL_NO}" onclick="submitForm(${record.SERIAL_NO})" style="display:block;"><c:out
										value="${record.SERIAL_NO}" /></a>
								</td>
								<td id="title${booksIndex.index}"><c:out
										value="${record.INT_AST_NO}" /></td>
								<td><c:out value="${record.SERV_TYPE}" /></td>
								<td id="branch_id${booksIndex.index}"><c:out
										value="${record.SERV_DESC}" /></td>
								<td id="branchName${booksIndex.index}"><c:out
										value="${record.DEFECT_CODE}" /></td>
								<td><c:out value="${record.DEFECT_DESC}" /></td>
								<td><c:out value="${record.ITEM_CODE}" /></td>
								<td><c:out value="${record.ITEM_DESC}" /></td>
								
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