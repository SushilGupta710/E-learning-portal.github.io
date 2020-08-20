<%-- 
    Document   : adminlog.jsp
    Created on : 13 Aug, 2020, 3:51:56 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="bootstraplinks.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Admin Login</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- CSS -->
        <link rel="stylesheet" href="/css/adminlogstyle.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-5 m-auto">
                    <div class="card mt-5 bg-dark ">  
                        <div class="card-title text-center mt-5">
                            <img src="Logo/3.png" width="150px" height="150px"class="rounded-circle" >
                        </div>
                        <div class="card-body">
                            <form action="adminlogin" method="post">
                                <h4 class="text-center text-danger">${message}</h4>
                                <div class="row">
                                    <div class="col">
                                        <h3 class="display-5 text-center text-white">ADMIN</h3>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label class="text-white">Username</label>
                                    <input class="form-control" type="text" name="uname">
                                </div>
                                <div class="form-group">
                                    <label class="text-white">Password</label>
                                    <input class="form-control" type="password" name="pass">
                                </div>
                                <button type="submit" class="btn btn-block bg-danger rounded">Login</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
