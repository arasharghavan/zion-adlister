<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
    <%--<a class="navbar-brand" href="#">--%>
        <%--&lt;%&ndash;<img src="car.png" class="d-inline-block align-top" alt="Drive My Car!">&ndash;%&gt;--%>
        <%--Drive My Car!</a>--%>
    <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>

    <%--<div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
        <%--<ul class="navbar-nav mr-auto">--%>
            <%--<li class="nav-item active">--%>
                <%--<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Link</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item dropdown">--%>
                <%--<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--Dropdown--%>
                <%--</a>--%>
                <%--<div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                    <%--<a class="dropdown-item" href="#">Action</a>--%>
                    <%--<a class="dropdown-item" href="#">Another action</a>--%>
                    <%--<div class="dropdown-divider"></div>--%>
                    <%--<a class="dropdown-item" href="#">Something else here</a>--%>
                <%--</div>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
            <%--</li>--%>
        <%--</ul>--%>
        <%--<form class="form-inline my-2 my-lg-0">--%>
            <%--<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
            <%--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
        <%--</form>--%>
    <%--</div>--%>
<%--</nav>--%>




<nav class="navbar">
    <div class="container-fluid bg-danger">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <%--<img src="car.png" alt="Drive My Car!" />--%>
            <a class="navbar-brand" href="ads">Drive My Car!</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <form method="get" action="search">
                    <input class="form-control mr-sm-2  mt-1" name="search" type="search" placeholder="Search" aria-label="Search">
                </li>
            <li>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

                </form>
            </li>
            <c:if test="${sessionScope.user == null}">
                <li><a href="login">Login</a></li>
                <li><a href="register">Register</a></li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <li><a href="logout">Logout</a></li>
                <li><a href="updateprofile">Update Profile</a></li>
                <li><a href="create">Create</a></li>
                <%--<li>Update Ad</li>--%>
                <%--<li><a href="ads/updateadds">Update Ad</a></li>--%>
                <li><a href="profile">Delete</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse --><!-- /.container-fluid -->
</nav>
