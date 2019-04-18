<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the albums!</h1>

    <c:forEach var="album" items="${albums}">
        <div class="col-md-6">
            <h2>${album.artist}</h2>
            <p>${album.name}</p>
            <p>${album.sales}</p>
            <p>${album.genre}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
