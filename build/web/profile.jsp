<%-- 
    Document   : userprofile
    Created on : 21 Aug, 2020, 11:53:50 AM
    Author     : Sushil Gupta
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="bootstraplinks.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <style>.nav-img{
                width:6vh;
            }</style>
        <link rel="stylesheet" href="css/profilestyle.css">
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

        <!--nav bar-->
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
        <!--end of navbar-->
        
        <%
            String host = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
            Statement statement = null;
            ResultSet rs = null;
            PreparedStatement preset = null;
            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(host, "root", "root");
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header text-center bg-danger text-white">
                            <h1>My profile</h1>
                        </div>
                        <%
                            statement = conn.createStatement();
                            String uname = (String) session.getAttribute("session_name");
                            String data = "select * from registration where runame='" + uname + "'";
                            rs = statement.executeQuery(data);
                            while (rs.next()) {
                        %>
                        <div class="card-body">
                            <div class="row mt-3">
                                <div class="col-md-5"><h4>User name:-</h4></div>
                                <div class="col-md-7"><h5><%=rs.getString("runame")%></h5></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-5"><h4>Full name:-</h4></div>
                                <div class="col-md-7"><h5><%=rs.getString("rname")%></h5></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-4"><h4>Email:-</h4></div>
                                <div class="col-md-8"><h5><%=rs.getString("remail")%></h5></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-5"><h4>Contact:-</h4></div>
                                <div class="col-md-7"><h5><%=rs.getString("rcontact")%></h5></div>
                            </div>
                            <div class="row mt-3 justify-content-center">
                                <div class="col-md-6">
                                    <a href="editprofile.jsp?uname=<%=rs.getString("runame")%>" class="btn btn-danger btn-block">EDIT</a>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>