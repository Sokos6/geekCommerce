<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome | geekCommerce</title>
<jsp:include page="_head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="_nav.jsp"></jsp:include>


<!-- End Responsive Image Slider -->
  <section>
    <div class="jumbotron">
      <div class="container">
        <h1> ${greeting} </h1>
        <p> ${tagline} </p>
      </div>
    </div>
  </section>

</body>
</html>