<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<style type="text/css">
#header-wrapper {
	/* background: url(/healthcarev1/static/fin.jpg) no-repeat right;
	border-top: 5px solid #CC0000; */
	background-color:transparent;
}
body {
background: url(/healthcarev1/static/Home_page.jpg) center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}
.navbar-inner {
   background-color:transparent;
}

#navigation{
font-color:white;
}

</style>
<script type="text/javascript">

$(document).ready(function() {
	
	if(('${userAccess}' == 'Normal Access')){
		$('#admin').hide();
	}
	
});	

$('#login').click( function(){
    $(this).toggleClass('glyphicon-log-in').toggleClass('glyphicon-log-out');
});


	
	
</script>

<div id="header-wrapper" class="container" >
	<h1 class="container"><font color="white">Physical Equipment Management System</font></h1>
</div>
<div class="navbar" id="navigation">
<nav class="container navbar navbar-inverse navbar-transparent">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header navbar-transparent">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home">Home: ${username}  </a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="medicalequiplistpage">Medical Equipment</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle active"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Equipment Service Records<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="warrantyDetailsListPage">Warranty Details</a></li>
						<li><a href="anuualcontractdetailslistpage">Annual Contract Details</a></li>
						<li><a href="scheduledmaintenancelistpage">Scheduled Maintenance</a></li>
						<li><a href="servicerequestlistpage">Service Request Details</a></li>
						<li><a href="TechnicalDetails">Technician details</a></li>
						<li><a href="WorkOrder">Work Order</a></li>
						<li><a href="#">Gate Pass Issue</a></li>
					</ul></li>
				<li><a href="#">Procurement</a></li>
				<li><a href="#">Reports</a></li>
				<c:choose>
				<c:when test="${useraccess != 'Normal Access'}">
				<li id= "admin" class="dropdown"><a href="#" class="dropdown-toggle active"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Administration<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="equipAdminListPage">Equipment Administration</a></li>
						<li><a href="supplierAdminListPage">Supplier Administration</a></li>
						<li><a href="vendorAdminListPage">Vendor Administration</a></li>
						<li><a href="OrgAdmin">Organization Administration</a></li>
						<li><a href="userAdminListPage">User Administration</a></li>
					</ul>
				</li>
				</c:when>
				</c:choose>
				</ul>
				
			<ul class="nav navbar-nav navbar-right">
		        <li><a id="login" href="login"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
     		</ul>	
			
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
</div>
<!--       <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
 -->