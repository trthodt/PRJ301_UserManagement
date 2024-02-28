<%-- Document : viewcart Created on : Oct 6, 2023, 10:58:48 AM Author : truon --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Cart" %>
<%@page import="sample.shopping.Clothes" %>
<%@page import="java.util.Map" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>
        <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"/>
        <link rel="stylesheet" href="css/container.css">
        <link rel="stylesheet" href="css/viewcart.css">
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
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        <div class="main">
            <div class="container">
                <c:if test="${sessionScope.CART == null}">
                    <h2>There are no products in the cart</h2>
                </c:if>
                <c:if test="${sessionScope.CART != null}">
                    <h2>Your selected clothes</h2>
                    <div>
                        <table class="pro-table-info" border="1">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Edit</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="total" scope="request" value="${0}" />
                                <c:forEach var="cloth" varStatus="counter"
                                           items="${sessionScope.CART.getCart().values()}">
                                <form action="MainController" method="POST">
                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <input type="text" name="id"
                                                   value="${cloth.getId()}" readonly="" />
                                        </td>
                                        <td>${cloth.getName()}</td>
                                        <td>${cloth.getPrice()}</td>
                                        <td>
                                            <input type="number" name="quantity"
                                                   value="${cloth.getQuantity()}" min="1"
                                                   required="" />
                                        </td>
                                        <td>${cloth.getPrice()*cloth.getQuantity()}</td>
                                        <td>
                                            <input type="submit" name="action" value="Edit" />
                                        </td>
                                        <td>
                                            <input type="submit" name="action" value="Remove" />
                                        </td>
                                    </tr>
                                </form>
                                <c:set var="total" scope="request"
                                       value="${total+cloth.getPrice()*cloth.getQuantity()}" />
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3 class="total-cost">Total: ${total} $</h3>
                        <form action="MainController" method="POST">
                            <input type="submit" name="action" value="Checkout" />
                        </form>
                        <h2>${requestScope.QUANTITYMESSAGE}</h2>
                    </div>
                </c:if>
                <h2>${requestScope.CHECKOUT_MESSAGE}</h2>
                <br><a href="shopping.jsp">Add More</a>
            </div>
        </div>
        <%@ include file="footer.html" %>
    </body>
</html>