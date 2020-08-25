<%-- 
    Document   : adminpanel.jsp
    Created on : 16 Aug, 2020, 12:36:10 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../bootstraplinks.jsp" %>
<%@include file="../AfterAdminLoginNav.jsp" %>
<%@include file="../Sessions/AdminLoginSession.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Admin Panel</title>
        <link rel="stylesheet" type="text/css" href="../css/adminpanelstyle.css" />
    </head>
    <body>
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
                                    <h1>Index</h1>
                                </header>
                                <a href="Indexpanel.jsp" class="btn cust-btn">Index Panel</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!-- /wrapper -->
        </div><!-- /container -->
    </body>
</html>