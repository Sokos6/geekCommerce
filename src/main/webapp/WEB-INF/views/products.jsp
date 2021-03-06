<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Products | geekCommerce</title>
<jsp:include page="_head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="_nav.jsp"></jsp:include>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Products</h1>
				<p>All the available products in our store</p>
			</div>
		</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${products}" var="product">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
					<img src="<c:url value="/images/${product.productId}.png"></c:url>" alt="image" style="width:100%" />
						<div class="caption">
							<h3>${product.name}</h3>
							<p>${product.description}</p>
							<p>$${product.unitPrice}</p>
							<p>Available ${product.unitsInStock} units in stock</p>
							<p><a href=" <spring:url value= "/products/product?id=${product.productId}" />"
							class="btn btn-primary">
							<span class="glyphicon-info-sign glyphicon"/></span> Details
							</a>
							<p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>