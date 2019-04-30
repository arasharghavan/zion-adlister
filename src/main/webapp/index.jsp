<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container text-center">
        <h1>Welcome to Drive My Car!</h1>
    </div>
    <div class="card text-white bg-info" style="margin: 0 auto; max-width: 60rem; border-radius: 1em; height: 30rem;">
        <div class="card-header text-center" style="padding: 1em;">
            <h4>Please log in or register to view the current ads</h4>
        </div>
        <div class="card-body text-center" style="padding: 3em 0 2em 0;">
            <button type="button" class="btn btn-primary btn-lg m-1">Log In</button>
            <button type="button" class="btn btn-secondary btn-lg">Register</button>
        </div>
    </div>
<jsp:include page="/WEB-INF/partials/foot.jsp" />
</body>
</html>