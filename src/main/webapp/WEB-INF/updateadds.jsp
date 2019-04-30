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
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="card text-white bg-info" style="margin: 0 auto; max-width: 60rem; border-radius: 1em;">
    <div class="card-header text-center" style="padding: 1em;">
        <h4>Update Ads</h4>
    </div>
    <div class="card-body" style="padding: 0 10em 2em 10em;">
        <form action="/ads/updateadds" method="POST">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <input id="description" name="description" class="form-control" type="text" value="${ad.description}">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value=" ">
        </form>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/foot.jsp" />
</body>
</html>
