<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
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
						<div class="caption">
							<h3>${product.name}</h3>
							<p>${product.description}</p>
							<p>$${product.unitPrice}</p>
							<p>Available ${product.unitsInStock} units in stock</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>