<%-- 
    Document   : ]profile
    Created on : 13 Aug, 2020, 3:59:40 PM
    Author     : Sushil Gupta
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>

<%
    String uname = (String) session.getAttribute("session_name");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
    String database = "registration";
    String userid = "root";
    String password = "root";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
        statement = connection.createStatement();
        String sql = "select * from registration where runame="+uname;
        resultSet = statement.executeQuery(sql);
        while (resultSet.next()) {
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>User profile</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
                    <h4 class="text-center font-weight-bold">USER PROFILE</h4>
                    <div class="form-group">
                        <label for="User Name">UserName</label>
                        <input type="text" class="form-control" id="User Name" disabled value="<%=resultSet.getString("runame")%>">
                    </div>
                    <div class="form-group">
                        <label for="full name">Full name</label>
                        <input type="full name" class="form-control" id="full name" disabled value="<%=resultSet.getString("rname")%>">
                    </div>
                    <div class="form-group">
                        <label for="Email Id1">Email Id</label> 
                        <input type="email" class="form-control" id="Email" disabled value="<%=resultSet.getString("remail")%>">
                    </div>
                    <div class="form-group">
                        <label for="mobile no.">Mobile No.</label>
                        <input type="mobileno" class="form-control" id="mobileno." disabled value="<%=resultSet.getString("rcontact")%>">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" disabled value="<%=resultSet.getString("rpassword")%>">
                    </div>
                    <a href="editprofile.jsp" class="btn btn-primary btn-block">EDIT</a>
                    <%
                            }
                            connection.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </div>
        </div>  
    </body>
</html> 