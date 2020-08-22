<%-- 
    Document   : Userpanel
    Created on : 21 Aug, 2020, 7:12:50 PM
    Author     : Sushil Gupta
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%
    session = request.getSession(false);
    if (session.getAttribute("session_name") == null) {
        out.print("<script>alert('Please login first')</script>");
        response.sendRedirect("adminlog.jsp");
    } else {
        String name = (String) session.getAttribute("session_name");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User panel</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900');
            .nav-img{
                width:6vh;   
            }
            *{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <%
            String host = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
            Statement statement = null;
            ResultSet rs = null;
            PreparedStatement preset = null;
            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(host, "root", "root");
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
                        <a class="nav-link" href="adminpanel.jsp">Hello ${session_name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--end of navbar-->

        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <div class="card">
                        <div class="card-header text-center bg-danger text-white">
                            <h2>List of users</h2>
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope='col'>Id</th>
                                        <th scope='col'>Username</th>
                                        <th scope='col'>Full name</th>
                                        <th scope='col'>Email</th>
                                        <th scope='col'>Contact</th>
                                        <th class='text-center' scope='col'>Update</th>
                                        <th class='text-center' scope='col'>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        statement = conn.createStatement();
                                        String uname = (String) session.getAttribute("session_name");
                                        String data = "select * from registration";
                                        rs = statement.executeQuery(data);
                                        while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getInt("id")%></td>
                                        <td><%=rs.getString("runame")%></td>
                                        <td><%=rs.getString("rname")%></td>
                                        <td><%=rs.getString("remail")%></td>
                                        <td><%=rs.getString("rcontact")%></td>
                                        <td class='text-center'><a href='updateuser.jsp?uname=<%=rs.getString("runame")%>' title='Edit'><i class='fa fa-edit'></i></a></td>
                                        <td class='text-center'><a href='deleteuser.jsp?uname=<%=rs.getString("runame")%>' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-right">
                            <a href="adminpanel.jsp"><< Back to admin panel </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
