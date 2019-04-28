<%--
  Created by IntelliJ IDEA.
  User: arash
  Date: 2019-04-25
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing The update ads" />
    </jsp:include>
</head>
<body>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<div class="container">
    <h1>update ads</h1>
    <form action="/ads/updateadds" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input id="description" name="description" class="form-control" type="text" value="${ad.description}">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Update">
    </form>
</div>
</body>
</html>
