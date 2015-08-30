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
<title>Technical Details List Page</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	function submitForm(serialNo){
		$("#useridinput").val(serialNo);
		document.userAdminDetail.submit(); 
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
				<form class="form-horizontal" name="searchTechnicalDetails" action="searchTechnicalDetails"
					method="POST">
					<fieldset>
						<legend>
							<span> Technical Details List Page</span>
								<button type="button" class="btn btn-primary pull-right"
							onclick="window.location.href='createTechnicalDetailsPage'">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								Enter New Technician Details
							</button>
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
										User</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				</div>
				<div class="table-responsive">
				<form class="form-horizontal" name="userAdminDetail" action="userAdminDetail"
					method="GET">
					<fieldset>
					<input id="useridinput" type="hidden" name="userid" value="123">
				<table class="table table-hover">
					<thead>
						<tr>
					<th>Internal Asset Number</th>
					<th>Serial Number</th>
					<th>Engineer Name</th>
					<th>Company Name</th>
					<th>Manager Name</th>
					<th>Suburb</th>
					<th>City</th>
					<th>Zip</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${records}" var="record" varStatus="recordIndex">
							<tr>
								<td id="book_id${recordIndex.index}">
								<a href="userAdminDetail?userid=${record.login_ID}" onclick="submitForm(${record.login_ID})" style="display:block;">
								<c:out		value="${record.login_ID}" /></a>
								</td>
								<td id="title${booksIndex.index}"><c:out
										value="${record.f_Name}" /></td>
								<td><c:out value="${record.l_Name}" /></td>
								<td id="branch_id${booksIndex.index}"><c:out
										value="${record.emp_ID}" /></td>
								<td id="branchName${booksIndex.index}"><c:out
										value="${record.password}" /></td>
								<td><c:out value="${record.confirm_Password}" /></td>
								<td><c:out value="${record.user_Access}" /></td>
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