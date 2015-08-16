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
<title>Medical Equipment List Page</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
</script>
</head>
<body class="container">
	<div class="container">
		<div id="navigationBar"></div>
	</div>
	<div class="container row">
			<div class="well bs-component">
				<form class="form-horizontal" name="searchequipments" action="searchequipments"
					method="POST">
					<fieldset>
						<legend>
							<span> Medical Equipment List Page</span>
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
										Equipment</button>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Serial Number</th>
							<th>Internal Asset Number</th>
							<th>Equipment Name</th>
							<th>Model Number</th>
							<th>Vendor Name</th>
							<th>Supplier Name</th>
							<th>Room Number</th>
							<th>Actual Location</th>
							<th>Indent Number</th>
							<th>Invoice Number</th>
							<th>Invoice Date</th>
							<th>LPO Number</th>
							<th>Manufacturer Name</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${books}" var="book" varStatus="booksIndex">
							<tr>
								<td id="book_id${booksIndex.index}"><c:out
										value="${book.book_id}" /></td>
								<td id="title${booksIndex.index}"><c:out
										value="${book.bookTitle}" /></td>
								<td><c:out value="${book.authorName}" /></td>
								<td id="branch_id${booksIndex.index}"><c:out
										value="${book.branch_id}" /></td>
								<td id="branchName${booksIndex.index}"><c:out
										value="${book.branchName}" /></td>
								<td><c:out value="${book.noOfCopies}" /></td>
								<td><c:out value="${book.noOfAvailableCopies}" /></td>
								<c:choose>
									<c:when test="${book.noOfAvailableCopies <= 0}">
										<td><button type="button" class="btn btn-danger btn-xs"
												onclick="alertme()">
												<span class="glyphicon glyphicon-ban-circle"
													aria-hidden="true"></span>
											</button></td>
									</c:when>
									<c:otherwise>
										<td><button id="checkbutton" type="button"
												class="btn btn-success btn-xs" data-toggle="modal"
												data-target="#checkout" value="${booksIndex.index}"
												onclick="alertme(${booksIndex.index})">
												<span class="glyphicon glyphicon-shopping-cart"
													aria-hidden="true"></span>
											</button></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		</div>
		
	
	
</body>
</html>