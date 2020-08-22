<%-- 
    Document   : Coursepanel
    Created on : 21 Aug, 2020, 10:29:49 PM
    Author     : Sushil Gupta
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("session_name") == null) {
        out.print("<script>alert('Please login first');</script>");
        response.sendRedirect("adminlog.jsp");
    } else {
//                String name = (String) session.getAttribute("session_name");
//                out.print("Hello " + name + " Welcome to Profile");

    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course panel</title>
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
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-danger text-center text-white">
                            <h2>Courses</h2>
                        </div>
                        <div class="card-body">
                            <form action="addcourse" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Category:</label>
                                            <select class="form-control" name="coursecat" required="true">
                                                <option selected disabled>Select a Course</option>
                                                <option value="html/css">Html and CSS</option>
                                                <option value="js">JavaScript</option>
                                                <option value="prog">Programming</option>
                                                <option value="server">Server-Side</option>
                                                <option value="dsalgo">DS& Algorithm</option>
                                                <option value="ai">Artifical Inteligence</option>
                                                <option value="lwp">Learn with Projects</option>
                                                <option value="preint">Prepare for interview</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Url:</label>
                                            <input class="form-control" type="text" name="courseurl" required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Author:</label>
                                            <input class="form-control" type="text" name="courseauth" required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Description:</label>
                                            <textarea class="form-control" rows="3" name="coursedesc" required="true"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label class="font-weight-bold">Course Images:</label>
                                        <div class="form-group">
                                            <input type="file" name="courseimg" required="true">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col">
                                            <button class="btn btn-success btn-block">Add</button>
                                        </div>
                                        <div class="col">
                                            <button class="btn btn-info btn-block">Update</button>
                                        </div>
                                        <div class="col">
                                            <button class="btn btn-danger btn-block">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <a href="adminpanel.jsp"><< Back to admin panel</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-danger text-center text-white">
                            <h2>List of Courses</h2>
                        </div>
                        <div class="card-body"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
