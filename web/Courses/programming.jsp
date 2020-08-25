
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("session_name") == null) {
        out.print("<script>alert('Please login first')</script>");
        response.sendRedirect("../login.jsp");
    }
%>
<%@include file="../bootstraplinks.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programming</title>
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
               <!--nav bar-->
        <nav class="navbar navbar-expand-sm navbar-dark bg-danger ">
            <!-- Logo of our website -->
            <a class="navbar-brand" href="Index.jsp"> <img class="nav-img" src="../Logo/elearning.png" alt=""> E-learning</a>

            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="../Index.jsp#Home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#Courses">Courses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#">Take Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#About us">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Index.jsp#Contact us">Contact us</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto mr-5 mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="../profile.jsp">Hello ${session_name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--end of navbar-->

                <!---->
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col mx-auto">
                    <div class="card">
                        <%
                            String host = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
                            Statement statement = null;
                            ResultSet rs = null;
                            PreparedStatement preset = null;
                            Connection conn = null;
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            conn = DriverManager.getConnection(host, "root", "root");
                        %>
                        <div class="card-body">
                            <div class="row">
                                <%
                                    statement = conn.createStatement();
                                    String query = "select * from course where cname='programming'";
                                    rs = statement.executeQuery(query);
                                    while (rs.next()) {
                                %>
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-title mr-auto ml-auto">
                                            <a href='viewcourse.jsp?id=<%=rs.getInt("cid")%>'><img src="../UploadedFile/<%=rs.getString("cimgname")%>" class="img-fluid" height="200px" width="400px" alt=""></a>
                                        </div>
                                        <div class="card-body">
                                            <p><b>Description :- </b><%=rs.getString("cdescription")%></p>
                                        </div>
                                        <div class="card-footer">
                                            <h5>Author :- <%=rs.getString("cauthor")%></h5>
                                        </div>
                                    </div>
                                </div>
                                <% }%>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--end of html and css--> 
        
    </body>
</html>
