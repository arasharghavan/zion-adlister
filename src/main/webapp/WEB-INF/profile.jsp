<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container text-center">
        <h3>Welcome, ${sessionScope.user.username}!</h3>
    </div>

    <div class="card text-white bg-info" style="margin: 0 auto; max-width: 60rem; border-radius: 1em;">
        <div class="card-header text-center" style="padding: 1em;">
            <h4>Edit Ads</h4>
        </div>
        <div class="card-body border" style="padding: 0 10em 2em 10em;">
            <c:forEach var="ad" items="${userlist}">
                <div class="col-md-6">
                    <h4>${ad.title}</h4>
                    <p>${ad.description}</p>
                    <form method="post" action="/delete">
                        <button name="button1" class="deletebtn" type= submit value= ${ad.id}>delete</button>
                    </form>
                </div>
            </c:forEach>
        </div>
    </div>

    <jsp:include page="/WEB-INF/partials/foot.jsp" />

</body>
</html>
