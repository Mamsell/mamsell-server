<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Enter Record</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"
		rel="stylesheet"></link>
	<link
		href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"
		rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css"
		href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

	<script type="text/javascript"
		src="<c:url value='/static/js/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/static/js/moment-with-locales.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/static/js/bootstrap-datetimepicker.min.js'/>"></script>
		
</head>
<body>
	<div class="container">
		<ul class="nav nav-pills">
			<li role="presentation" class="active"><a href="#">Home</a></li>
			<li role="presentation"><a href="<c:url value="/records/newRecord" />">Records</a></li>
			<li role="presentation"><a href="#">Reports</a></li>
			<li role="presentation"><a href="#">Settings</a></li>
			<li role="presentation"><a href="<c:url value="/logout" />">Logout</a></li>
		</ul>

		<div class="jumbotron" style="max-width: 400">
			<h2>Enter a new record</h2>
			<p></p>

			<div class="input-group">
				<span class="input-group-addon" id="amount">€</span>
				
				<input type="text" class="form-control"
					placeholder="Amount of your expense"
					aria-describedby="amount"> 
			</div>
			
			<p></p>
			
			<div class="input-group">
				<span class="input-group-addon" id="item">Item</span>
				
				<input type="text" class="form-control"
					placeholder="Describe your expense" aria-describedby="item">
			</div>

			<p></p>

			<div>
      				
        		<select class="form-control" >
        			<option selected>Choose Category</option>
        			<c:forEach items="${categories}" var="category">
          				<option class="form-control">${category}</option>
          			</c:forEach>
        		</select>
			</div>
			
			<p></p>
			
			<div class='input-group date' id='datetimepicker'>
				<span
					class="input-group-addon" id="basic-addon1"> <span
					class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
				</span>
				
				<input type="text" class="form-control" value=""
					aria-describedby="basic-addon2"> 
			</div>
			<script type="text/javascript">
				$(function() {
					$('#datetimepicker').datetimepicker({
						defaultDate : Date.now(),
						format : 'DD.MM.YYYY'
					});
				});
			</script>

			<p></p>

			<p>
				<a class="btn btn-primary btn-lg" href="#" role="button">Save</a>
			</p>
		</div>

	</div>
</body>
</html>