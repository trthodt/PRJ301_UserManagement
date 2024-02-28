<%-- Document : admin Created on : Sep 19, 2023, 11:41:37 AM Author : truon --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List" %>
<%@page import="sample.user.UserDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"/>
        <link rel="stylesheet" href="css/container.css">
        <link rel="stylesheet" href="css/admin.css">
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
                color: #333;
                font-family: Arial, sans-serif;
                font-size: 14px;
                text-align: left;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                margin: auto;
                margin-top: 50px;
                margin-bottom: 50px;

            }
            table th {
                background-color: #ff9800;
                color: #fff;
                font-weight: bold;
                padding: 10px;
                text-transform: uppercase;
                letter-spacing: 1px;
                border-top: 1px solid #fff;
                border-bottom: 1px solid #ccc;
            }
            table tr:nth-child(even) td {
                background-color: #f2f2f2;
            }

            table tr:hover td {
                background-color: #ffedcc;
            }
            table td {
                background-color: #fff;
                padding: 10px;
                border-bottom: 1px solid #ccc;
                font-weight: bold;
              }
        </style>
    </head>

    <body>
        <%@ include file="header.jsp" %>
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        <div class="main">
            <div class="container">
                <h2>Welcome: ${sessionScope.LOGIN_USER.fullName}</h2>
                <c:url var="logout" value="MainController">
                    <c:param name="action" value="Logout"></c:param>
                </c:url>
                <form class="search-bar" action="MainController" method="POST">
                    <input type="text" name="search" value="${param.search}" />
                    <input type="submit" name="action" value="Search" />
                </form>
                <c:if test="${requestScope.LIST_USER != null}">
                    <c:if test="${not empty requestScope.LIST_USER}">
                        <div>
                            <table border="1" class="table-info">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>User ID</th>
                                        <th>Full Name</th>
                                        <th>Role ID</th>
                                        <th>Password</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" varStatus="counter"
                                               items="${requestScope.LIST_USER}">
                                    <form action="MainController" method="POST">
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>
                                                <input type="text" name="userID"
                                                       value="${user.userID}" readonly="">
                                            </td>
                                            <td>
                                                <input type="text" name="fullName"
                                                       value="${user.fullName}" required="">
                                            </td>
                                            <td>
                                                <input type="text" name="roleID"
                                                       value="${user.roleID}" required="">
                                            </td>
                                            <td>${user.password}</td>
                                            <td>
                                                <input type="submit" name="action" value="Update" />
                                                <input type="hidden" name="search"
                                                       value="${param.search}" />
                                            </td>
                                            <td>
                                                <c:url var="delete" value="MainController">
                                                    <c:param name="action" value="Delete"></c:param>
                                                    <c:param name="userID" value="${user.userID}">
                                                    </c:param>
                                                    <c:param name="search" value="${param.search}">
                                                    </c:param>
                                                </c:url>
                                                <a href="${delete}">Delete</a>
                                            </td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </c:if>
                </c:if>
            </div>

        </div>
        <%@ include file="footer.html" %>

    </body>

</html>