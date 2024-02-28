<%-- 
    Document   : create
    Created on : Sep 29, 2023, 11:31:14 AM
    Author     : truon
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Book Shop - Sign in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
                    <form action="MainController" method="POST" class="login100-form validate-form flex-sb flex-w" >
                        <span class="login100-form-title p-b-53">
                            Create new account
                        </span>

                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                User ID
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Username is required">
                            <input class="input100" type="text" name="userID" required="" >
                            <span class="focus-input100"></span>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.userIDError}</div>
                        

                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                Full Name
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Full name is required">
                            <input class="input100" type="text" name="fullName" required="" >
                            <span class="focus-input100"></span>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.fullNameError}</div>
                        

                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                Role ID
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Username is required">
                            <input class="input100" type="text" name="roleID" value="US" readonly="">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.roleIDError}</div>
                        

                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                Password
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Password is required">
                            <input class="input100" type="password" name="password" required="">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.passwordError}</div>
                        

                        <div class="p-t-31 p-b-9">
                            <span class="txt1">
                                Confirm
                            </span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Confirm is required">
                            <input class="input100" type="password" name="confirm" required="">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.confirmError}</div>
                        

                        <div class="container-login100-form-btn m-t-17">
                            <button class="login100-form-btn" name="action" value="Create">
                                Sign in
                            </button>
                        </div>
                        <div class="w-full">${requestScope.USER_ERROR.error}</div>
                        

                        <div class="w-full text-center p-t-55">
                            <span class="txt2">
                                Have an account?
                            </span>

                            <a href="login.html" class="txt2 bo1">
                                Login now
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>