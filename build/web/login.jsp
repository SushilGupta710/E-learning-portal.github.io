<%-- 
    Document   : login.jsp
    Created on : 13 Aug, 2020, 3:58:17 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/loginstyle.css">
        <title>Login Form</title>
    </head>
    <body>
        <div class="d-flex justify-content-center align-items-center login-container">
            <form class="login-form text-center" action="login" method="post">
                <div class="col-md-12">
                    <h4 class="text-center text-danger">${message}</h4>
                    <h1 class="mb-4 font-weight-light text-uppercase">User Login</h1>
                    <!--<form action="login" method="post">-->
                    <div class="form-group">
                        <input type="text" class="form-control rounded-pill form-control-lg" name="username" placeholder="Username">
                    </div>
                    <div class="form-group password">
                        <input type="password" class="form-control rounded-pill form-control-lg" name="password" placeholder="Password">
                        <i class="fas fa-eye visibility"></i>
                    </div>
                    <button type="submit" name="submit"class="btn mt-3 rounded-pill btn-lg btn-custom btn-block">LOG IN</button>
                    <p class="mt-3 font-weight-normal">Don't have an account? <a href="registration.jsp"><strong>Register Now</strong></a></p>
                    <p class="font-weight-normal">Admin login<a href="adminlog.jsp"><strong> Go to Login</strong></a></p>
                </div>
            </form>
        </div>
        <script type="text/javascript">
            const visibleToggle = document.querySelector(".visibility");
            const input = document.querySelector(".password input");
            
            var password = true;
            visibleToggle.addEventListener('click',function(){
                if(password){
                    input.setAttribute('type','text');
                }else{
                    input.setAttribute('type','password');
                }
                password=!password;
            });
        </script>
    </body>

</html>
