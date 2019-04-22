<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="partials/bootstrap.jsp" %>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<h1>The current count is ${count}.</h1>

<h2 class="text-danger">Hello ${name}!</h2>

<%-- this is a JSP comment, you will *not* see this in the html --%>

</body>
</html>