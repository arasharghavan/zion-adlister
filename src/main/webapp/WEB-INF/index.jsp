<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="card text-white bg-info" style="margin: 0 auto; max-width: 60rem; border-radius: 1em;">
    <div class="card-header text-center" style="padding: 1em;">
        <h4>Now Available</h4>
    </div>
    <div class="card-body" style="padding: 0 10em 2em 10em;">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h5><a href="<c:url value="view" />">${ad.title}</a></h5>
                    <%--<p>${ad.description}</p>--%>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="/WEB-INF/partials/foot.jsp" />

</body>
</html>
