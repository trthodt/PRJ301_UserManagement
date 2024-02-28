<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Header</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="fonts/themify-icons-font/themify-icons/themify-icons.css">

    </head>

    <body>
        <div class="header">
            <div class="header-name">Book Shop</div>
            <div class="right-header">
                <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID == 'US'}">
                    <div class="viewcart">
                        <a title="View Cart" href="MainController?action=View_Page">
                            <i class="ti-shopping-cart cart-logo">
                                <c:if test="${sessionScope.CART != null}">
                                    <p class="cart-number">${sessionScope.CART.getCart().size()}</p>
                                </c:if>
                            </i>
                        </a>
                    </div>
                </c:if>
                <div class="logoutbtn">
                    <form class="logoutbtn-form" action="MainController" method="POST">
                        <input class="logoutbtn-input" type="submit" name="action" value="Logout" />
                    </form>
                </div>
            </div>

        </div>
    </body>

    </html>