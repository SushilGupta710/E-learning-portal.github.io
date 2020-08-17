<%-- 
    Document   : adminlog.jsp
    Created on : 13 Aug, 2020, 3:51:56 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Admin Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                        <form action="" method="">
                            <div class="row">
                                <div class="col">
                                    <h3 class="display-5 text-center text-white">ADMIN</h3>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="uname" class="text-white">Username</label>
                                <input class="form-control" type="text" name="uname">
                              </div>
                               <div class="form-group">
                                <label for="pass" class="text-white">Password</label>
                                <input class="form-control" type="password" name="pass">
                              </div>
                            <button type="submit" class="btn btn-block bg-danger rounded">Login</button>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
