<%-- 
    Document   : navbar
    Created on : 14 Aug, 2020, 10:27:57 AM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>.nav-img{
                width:6vh;
            }</style>
    </head>
    <body>
               <!--navbar-->
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger navbar-fixed">
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
                    <%
                        String username = (String) session.getAttribute("userlogin");
                        String adminname = (String) session.getAttribute("adminlogin");
                        if (username != null || adminname!=null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Quiz/Quiz.jsp">Take Quiz</a>
                    </li>
                    <% }%> 
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#About us">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Index.jsp#Contact us">Contact us</a>
                    </li>          
                </ul>
                <ul class="navbar-nav ml-auto mr-5 mt-2 mt-lg-0">
                    <%
                        if (username == null && adminname == null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registration.jsp">Register</a>
                    </li>
                    <% }else if(username!=null){
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="profile.jsp?uname=${username}">Hello <%=username%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                    <% }else{
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminTask/adminpanel.jsp">Hello <%=adminname%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                    <% }%>
                </ul>
            </div>
        </nav>
        <!--End of navbar-->       
    </body>
</html>
