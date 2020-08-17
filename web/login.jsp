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
        <form class="login-form text-center" action="#" >
            <div class="col-md-12">
                <h1 class="mb-4 font-weight-light text-uppercase">User Login</h1>
                <form action="">
                <div class="form-group">
                    <input type="text" class="form-control rounded-pill form-control-lg" placeholder="Username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control rounded-pill form-control-lg" placeholder="Password">
                </div>
                <button type="submit" class="btn mt-3 rounded-pill btn-lg btn-custom btn-block">LOG IN</button>
                <p class="mt-3 font-weight-normal">Don't have an account? <a href="registration.jsp"><strong>Register Now</strong></a></p>
            </div>
        </form>
    </div>
</body>

</html>
