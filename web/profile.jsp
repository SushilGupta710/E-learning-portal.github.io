<%-- 
    Document   : userprofile
    Created on : 21 Aug, 2020, 11:53:50 AM
    Author     : Sushil Gupta
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%@include file="AfterUserLoginNav.jsp" %>
<%@include file="ConnectingToDB.jsp" %>
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
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-header text-center bg-danger text-white">
                            <h1>My profile</h1>
                        </div>
                        <%
                            statement = conn.createStatement();
                            String uname = (String) session.getAttribute("userlogin");
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