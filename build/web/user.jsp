<%-- Document : user Created on : Sep 19, 2023, 11:41:44 AM Author : truon --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"/>
        <link rel="stylesheet" href="css/container.css">
        <link rel="stylesheet" href="css/user.css">
    </head>

    <body>
        <%@ include file="header.jsp" %>
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        <div class="main">
            <div class="container">
                <h2>User's Information: </h2>
                <p>
                    User ID: ${sessionScope.LOGIN_USER.userID}<br>
                    Full Name: ${sessionScope.LOGIN_USER.fullName}<br>
                    Role ID: ${sessionScope.LOGIN_USER.roleID}<br>
                    Password: *** <br>
                </p>
                <br>
                <div class="shop-link">
                    Go to <a href="MainController?action=Shopping_Page">Shopping</a>
                </div>
            </div>
        </div>
        <%@ include file="footer.html" %>
    </body>
</html>