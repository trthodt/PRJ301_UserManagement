<%-- 
    Document   : shopping
    Created on : Oct 6, 2023, 10:48:49 AM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Book Shop</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"/>
        <link rel="stylesheet" href="css/container.css">
        <link rel="stylesheet" href="css/shopping.css">
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        <div class="main">
            <div class="container">
                <h2>Welcome to Book Shop</h2>
                <h5>${requestScope.MESSAGE}</h5>
                <div class="product-container">
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/2/0/2023_05_25_15_07_14_1-390x510.jpg" alt="Weathering With You">
                            <div class="pro-info">
                                <h4>Weathering With You</h4>
                                <input type="text" hidden value="WWY01-Weathering With You-100" name="cmbClothes">
                                <h4 class="cost">100$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/0/7/070323-8.jpg?_gl=1*3591w4*_ga*MzgyNDY5MzQzLjE2OTg2NDk5NjY.*_ga_460L9JMC2G*MTY5ODY1Mjk1MC4yLjEuMTY5ODY1MzE4Ni41NC4wLjA.*_gcl_aw*R0NMLjE2OTg2NTA5NjAuQ2owS0NRandxUDJwQmhETUFSSXNBSlEwQ3pyWEFzS3NoTGFvSXFhaVg3R2hxNzRGRFdsQkFGbXRXenZhejY2dEJJV1AxSlJic243Z3ZqNGFBaHg1RUFMd193Y0I.*_gcl_au*NjY1ODI1MzE1LjE2OTg2NDk5NjY." alt="Mobuseka">
                            <div class="pro-info">
                                <h4>Mobuseka</h4>
                                <input type="text" hidden value="MBSK01-Mobuseka-200" name="cmbClothes">
                                <h4 class="cost">200$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/5/c/5cmsonemoreside---bia1.jpg" alt="5 Centimet Per Second">
                            <div class="pro-info">
                                <h4>5 Centimet Per Second</h4>
                                <input type="text" hidden value="5CMPS-5 Centimet Per Second-90" name="cmbClothes">
                                <h4 class="cost">90$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/9/7/9784041132296.jpg" alt="Suzume no Tojimari">
                            <div class="pro-info">
                                <h4>Suzume no Tojimari</h4>
                                <input type="text" hidden value="SNT01-Suzume no Tojimari-120" name="cmbClothes">
                                <h4 class="cost">120$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/t/h/thanh-guom-diet-quy-tap-1_2.jpg" alt="Demon Slayer">
                            <div class="pro-info">
                                <h4>Demon Slayer - vol 1</h4>
                                <input type="text" hidden value="KNY01-Demon Slayer-50" name="cmbClothes">
                                <h4 class="cost">50$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/h/o/hoi_chung_tuoi_thanh_xuan_9_ban_gioi_han.jpg" alt="Aobuta">
                            <div class="pro-info">
                                <h4>Hoi Chung Tuoi Thanh Xuan</h4>
                                <input type="text" hidden value="ABT01-Hoi Chung Tuoi Thanh Xuan-100" name="cmbClothes">
                                <h4 class="cost">100$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/d/o/doraemon-plus_tap-6_tb-2023.jpg" alt="Doraemon Plus">
                            <div class="pro-info">
                                <h4>Doraemon Plus</h4>
                                <input type="text" hidden value="DRM01-Doraemon Plus-50" name="cmbClothes">
                                <h4 class="cost">50$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/t/h/tham-tu-lung-danh-conan---tap-100---ban-thuong_3.jpg" alt="Detective Conan">
                            <div class="pro-info">
                                <h4>Detective Conan - vol 100</h4>
                                <input type="text" hidden value="DTTCN01-Detective Conan-60" name="cmbClothes">
                                <h4 class="cost">60$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>

                        </form>
                    </div>
                    <div class="product">
                        <form action="MainController" method="POST">
                            <img src="https://cdn0.fahasa.com/media/catalog/product/9/7/9786043561272_1_1.jpg?_gl=1*jc1pj7*_ga*MzgyNDY5MzQzLjE2OTg2NDk5NjY.*_ga_460L9JMC2G*MTY5ODY1Mjk1MC4yLjEuMTY5ODY1NTIzNy41OS4wLjA.*_gcl_aw*R0NMLjE2OTg2NTA5NjAuQ2owS0NRandxUDJwQmhETUFSSXNBSlEwQ3pyWEFzS3NoTGFvSXFhaVg3R2hxNzRGRFdsQkFGbXRXenZhejY2dEJJV1AxSlJic243Z3ZqNGFBaHg1RUFMd193Y0I.*_gcl_au*NjY1ODI1MzE1LjE2OTg2NDk5NjY." alt="Tho Bay Mau">
                            <div class="pro-info">
                                <h4>Tho Bay Mau</h4>
                                <input type="text" hidden value="TBM01-Tho Bay Mau-100" name="cmbClothes">
                                <h4 class="cost">100$</h4>
                                <select name="cmbQuantity">
                                    <option value="1">1 Item</option>
                                    <option value="2">2 Items</option>
                                    <option value="3">3 Items</option>
                                    <option value="4">4 Items</option>
                                    <option value="5">5 Items</option>
                                    <option value="10">10 Items</option>
                                </select>
                                <br>
                                <input type="submit" name="action" value="Add" />
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <%@ include file="footer.html" %>
    </body>
</html>
