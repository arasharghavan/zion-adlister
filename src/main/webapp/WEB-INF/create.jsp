<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="card text-white bg-info" style="margin: 0 auto; max-width: 60rem; border-radius: 1em;">
    <div class="card-header text-center" style="padding: 1em;">
        <h4>Create New Ad</h4>
    </div>
    <div class="card-body" style="padding: 0 8em 2em 8em;">
        <form action="/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/foot.jsp" />
</body>
</html>
