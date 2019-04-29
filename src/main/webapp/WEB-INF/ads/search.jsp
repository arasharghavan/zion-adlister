<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: arash
  Date: 2019-04-25
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing The search Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the search ads!</h1>

    <c:forEach var="ad" items="${search}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

    <%--<c:forEach var="cat" items="${search}">--%>
        <%--<div class="col-md-6">--%>
            <%--<h2>${cat.make}</h2>--%>
            <%--<p>${cat.color}</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
</div>

</body>
</html>
