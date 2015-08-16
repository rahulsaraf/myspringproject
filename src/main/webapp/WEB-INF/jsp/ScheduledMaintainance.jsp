<!DOCTYPE html>
<html>
<head>


<style type="text/css">
#header-wrapper {
	background: url(/librarysystem/static/fin.jpg) no-repeat right;
	border-top: 5px solid #CC0000;
}

#dateRangeForm .form-control-feedback {
    top: 0;
    right: -15px;
}
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b"%>
<%@ include file="header.html"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<title>Scheduled Maintainance</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#navigationBar').load('header.html');
	});
	
	$('#myTabs a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	});
	
	$('#myTabs a[href="#servicereqdetails"]').tab('show');
	$('#myTabs a[href="#additionaldetails"]').tab('show');
	
	
	$(document).ready(function() {
	    $('#dateRangePicker')
	        .datepicker({
	            format: 'mm/dd/yyyy',
	            startDate: '01/01/2010',
	            endDate: '12/30/2020'
	        })
	        .on('changeDate', function(e) {
	            // Revalidate the date field
	            $('#dateRangeForm').formValidation('revalidateField', 'date');
	        });

	    $('#dateRangeForm').formValidation({
	        framework: 'bootstrap',
	        icon: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            date: {
	                validators: {
	                    notEmpty: {
	                        message: 'The date is required'
	                    },
	                    date: {
	                        format: 'MM/DD/YYYY',
	                        min: '01/01/2010',
	                        max: '12/30/2020',
	                        message: 'The date is not a valid'
	                    }
	                }
	            }
	        }
	    });
	});
	
	
	
	
</script>
</head>
<body>
	<div class="container">
		<div id="navigationBar"></div>




	</div>
	<div class="container">
		<ul id="myTabs" class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#servicereqdetails" id="service-req-tab" role="tab" data-toggle="tab" aria-controls="servicereqdetails" aria-expanded="true">Service Request Details</a></li>
		    <li role="presentation"><a href="#additionaldetails" role="tab" id="additional-tab" data-toggle="tab" aria-controls="additionaldetails">Additional Details</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div id="servicereqdetails" role="tabpanel" class="container tab-pane active">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Service Request Details</h4>
			</div>
			<div class="modal-body">
				<p>Please enter following information in order to check-out this
					book</p>
				<form id="dateRangeForm" class="form-horizontal" name="checkoutbook"
					action="checkoutbook" method="GET">
					<fieldset>
						<legend> </legend>
						<div id="criteria">
						
						
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Internal Asset Number :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="asstno1"
										disabled="disabled" name = "asstno">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">BME Number :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="bmenumber1"
										disabled="disabled" name = "bmeno">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Category :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="category1"
										disabled="disabled" name = "category">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Sub Category :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="subcategory1"
										disabled="disabled" name = "subcategory">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Code :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="equipcode1"
										disabled="disabled" name = "equipcode">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Equipment Description :</label>
								<div class="col-lg-7">
									<input type="text" class="form-control" id="eqipdescription1"
										disabled="disabled" name = "equipdescription">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Warranty Type :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="warrantytype1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="warrantytype" name="warrantytype">
								</div>
								<label for="branchId" class="col-lg-3 text-left">Warranty Expiry Date :</label>
								<div class="form-group">
        						<div class="col-lg-3">
           						 <div class="input-group input-append date" id="dateRangePicker">
                					<input type="text" class="form-control" name="date" />
                			<span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
           						 </div>
        						</div>
    							</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-2 text-left">Workshop :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="workshop1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="workshop" name="workshop">
								</div>
								<label for="branchId" class="col-lg-3 text-left ">Asset Type :</label>
								<div class="col-lg-3">
									<input type="text" class="form-control" id="assettype1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="assettype" name="assettype">
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
<div id="additionaldetails" role="tabpanel" class="container tab-pane">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Location Details</h4>
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
								<label for="bookId" class="col-lg-3 text-left">Fault Date :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="faultdate1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="faultdate" name="faultdate">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Fault Description :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="faultdesc1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="faultdesc" name="faultdesc">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Fault Priority :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="faultpriority1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="faultpriority" name="faultpriority">
								</div>
							</div>
							
							<div class="form-group">
								<label for="branchId" class="col-lg-3 text-left">Additional Description :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="additionaldesc1"
										disabled="disabled"> <input type="hidden"
										class="form-control" id="additionaldesc" name="additionaldesc">
								</div>
							</div>
							
							<div class="form-group">
								<label for="bookId" class="col-lg-3 text-left">Remarks :</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="remarks1"
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
        <p class="text-muted">Slice n Dice LLC. Designed by Rahul</p>
      </div>
</footer>
</body>
</html>