<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>

<!DOCTYPE html>
<html lang="de" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html">
<h:head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>${title}</title>

	<!-- Bootstrap -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
		rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</h:head>

<h:body>
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<jsp:invoke fragment="header" />
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-3 col-md-3">
				LEFT<br />
				<h:inputText value="#{helloBean.name}">
				</h:inputText></div>
			<div class="col-xs-15 col-md-9"><jsp:doBody /></div>
		</div>

	</div>

	<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<jsp:invoke fragment="footer" />
		</div>
	</nav>






	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</h:body>
</html>