<%-- 
    Document   : ]profile
    Created on : 13 Aug, 2020, 3:59:40 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>User profile</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="css/profilestyle.css">
  </head>
  <body>  
    <div class="container-fluid mt-5">
        <div class="row justify-content-center">
            <div class="col-12  col-sm-6  col-md-3">
                
                    <form class="form-container">
                        <h4 class="text-center font-weight-bold">USER PROFILE</h4>
                        <div class="form-group">
                          <label for="User Name">UserName</label>
                          <input type="text" class="form-control" id="User Name" disabled>
                        </div>
                        <div class="form-group">
                          <label for="full name">FullName</label>
                          <input type="full name" class="form-control" id="full name" disabled>
                        </div>
                        <div class="form-group">
                          <label for="Email Id1">Email Id</label> 
                          <input type="email" class="form-control" id="Email" aria-describedby="emailHelp" disabled>
                        </div>
                        <div class="form-group">
                          <label for="mobile no.">Mobile No.</label>
                          <input type="mobileno" class="form-control" id="mobileno." disabled>
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Password</label>
                          <input type="password" class="form-control" id="exampleInputPassword1" disabled>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block ">EDIT</button>
                    </form>
            </div>
            
        </div>

    </div>  
   </body>
</html> 