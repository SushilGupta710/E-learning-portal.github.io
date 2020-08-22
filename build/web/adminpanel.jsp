<%-- 
    Document   : adminpanel.jsp
    Created on : 16 Aug, 2020, 12:36:10 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%--<%@include file="navbar.jsp" %>--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Admin Panel</title>
        <style>.nav-img{
                width:6vh;
            }</style>
        <link rel="stylesheet" type="text/css" href="./css/adminpanelstyle.css" />
    </head>
    <body>
        <%
            session = request.getSession(false);
            if (session.getAttribute("session_name") == null) {
                out.print("<script>alert('Please login first')</script>");
                response.sendRedirect("adminlog.jsp");
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
                        <a class="nav-link" href="#">Hello ${session_name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <header class="text-center text-white mt-2">
                <h1>Admin Dashboard </h1>
            </header>
            <div class="wrapper">
                <ul class="stage clearfix">

                    <li class="scene">
                        <div class="movie" onclick="return true">
                            <div class="poster"></div>
                            <div class="info">
                                <header class="text-center">
                                    <h1>Users</h1>
                                </header>

                                <a href="Userpanel.jsp" class="btn cust-btn">Users Panel</a>
                            </div>
                        </div>
                    </li>

                    <li class="scene">
                        <div class="movie" onclick="return true">
                            <div class="poster"></div>
                            <div class="info">
                                <header class="text-center">
                                    <h1>Courses</h1>
                                </header>
                                <a href="Coursepanel.jsp" class="btn cust-btn">Courses Panel</a>
                            </div>
                        </div>
                    </li>

                    <li class="scene">
                        <div class="movie" onclick="return true">
                            <div class="poster"></div>
                            <div class="info">
                                <header class="text-center">
                                    <h1>Quiz</h1>
                                </header>
                                <a href="Quizpanel.jsp" class="btn cust-btn">Quiz Panel</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!-- /wrapper -->
        </div><!-- /container -->
    </body>
</html>