<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product Not Found | geekCommerce</title>
<jsp:include page="_head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="_nav.jsp"></jsp:include>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1 class="alert alert-danger"> ${invalidProductId}</h1>
			</div>
		</div>
	</section>

	<section>
		<div class="container">
			<p>${url}</p>
			<p>${exception}</p>
		</div>

		<div class="container">
			<p>
				<a href="<spring:url value="/products" />" class="btn btn-primary">
					<span class="glyphicon-hand-left glyphicon"></span> products
				</a>
			</p>
		</div>
		
	</section>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>
