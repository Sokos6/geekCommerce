<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
    <title>Customers | geekCommerce</title>
    <jsp:include page="_head.jsp"></jsp:include>
  </head>
  <body>
  <jsp:include page="_nav.jsp"></jsp:include>
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Customers</h1>
          <p>All of Our Awesome Customers</p>
        </div>
      </div>
    </section>

    <section class="container">
      <div class="row">
        <c:forEach items="${customers}" var="customer">
          <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
            <div class="thumbnail">
              <div class="caption">
                <h3>${customer.fName}</h3>
                <p>${customer.lName}</p>
                <p>${customer.emailAddress}</p>
                <p>${customer.phoneNumber}</p>
                <p>${customer.customerId}</p>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </section>
  </body>
</html>