<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome page</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
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

		<div class="jumbotron">
			<h2>
				Welcome, <strong>${user}</strong>!
			</h2>
			<p>
				Welcome to Mamsell, your personal budget monitoring tool!<br>
				Determine different budgets for different categories in order to
				spend less or just keep track of where your money actually ends up.
			</p>
			<p>
				<a class="btn btn-primary btn-lg" href="#" role="button">Learn
					more</a>
			</p>
		</div>

	</div>

</body>
</html>