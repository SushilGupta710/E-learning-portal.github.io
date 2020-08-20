<%-- 
    Document   : editprofile.jsp
    Created on : 13 Aug, 2020, 3:54:08 PM
    Author     : Sushil Gupta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Profile</title>
                <style>.nav-img{
                width:6vh;
            }</style>
        <link rel="stylesheet" href="css/editprofilestyle.css">
    </head>
    <body>
        <%
            session = request.getSession(false);

            if (session.getAttribute("session_name") == null) {
                out.print("<script>alert('Please login first')</script>");
                response.sendRedirect("login.jsp");
            } else {
                String name = (String) session.getAttribute("session_name");
//                out.print("Hello " + name + " Welcome to Profile");
            }
        %>
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger ">
            <!-- Logo of our website -->
            <a class="navbar-brand" href="Index.jsp"> <img class="nav-img" src="Logo/elearning.png" alt=""> E-learning</a>

            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="Index.jsp#Home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#">Take Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#About us">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Contact us">Contact us</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto mr-5 mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="profile.jsp">Hello ${session_name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
                    
        <div class="container-fluid mt-5">
            <div class="row justify-content-center">
                <div class="col-12  col-sm-6  col-md-3">

                    <form class="form-container">
                        <h4 class="text-center font-weight-bold">UPDATE PROFILE</h4>
                        <div class="form-group">
                            <label for="full name">FullName</label>
                            <input type="full name" class="form-control" id="full name">
                        </div>
                        <div class="form-group">
                            <label for="Email Id1">Email Id</label> 
                            <input type="email" class="form-control" id="Email" aria-describedby="emailHelp" >
                        </div>
                        <div class="form-group">
                            <label for="mobile no.">Mobile No.</label>
                            <input type="mobileno" class="form-control" id="mobileno.">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block ">UPDATE</button>
                    </form>
                </div>

            </div>

        </div>  
    </body>
</html>
