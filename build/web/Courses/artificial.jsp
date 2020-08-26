<%-- 
    Document   : artificial
    Created on : 26 Aug, 2020, 7:42:57 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../bootstraplinks.jsp" %>
<%@include file="../ConnectingToDB.jsp" %>
<%@include file="../Sessions/UserLoginSession.jsp" %>
<%@include file="coursenavbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artificial Inteligence</title>
        <link rel="stylesheet" href="../css/Universal.css">
    </head>
    <body>
        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-lg-3">
                    <h1 class="my-4">Courses</h1>
                    <div class="list-group">
                        <a href="html-css.jsp" class="list-group-item">Html and Css</a>
                        <a href="javascript.jsp" class="list-group-item">JavaScript</a>
                        <a href="programming.jsp" class="list-group-item">Programming</a>
                        <a href="ds-algo.jsp" class="list-group-item">Ds And Algorithm</a>
                        <a href="artificial.jsp" class="list-group-item">Artificial Intelligence</a>
                        <a href="serverside.jsp" class="list-group-item">Server Side</a>
                        <a href="projects.jsp" class="list-group-item">Learn with projects</a>
                        <a href="interview.jsp" class="list-group-item">Prepare for interview</a>
                    </div>
                </div>
                <!-- /.col-lg-3 -->

                <div class="col-lg-9 mt-5">
                    <div class="row">
                        <%  statement = conn.createStatement();
                            String data = "select * from course where cname='ai'";
                            rs = statement.executeQuery(data);
                            while (rs.next()) {
                        %>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href='viewcourse.jsp?id=<%=rs.getInt("cid")%>'><img class="card-img-top" src="../UploadedFile/<%=rs.getString("cimgname")%>" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title text-center">
                                        <a href='viewcourse.jsp?id=<%=rs.getInt("cid")%>'><%=rs.getString("cname")%></a>
                                    </h4>

                                    <p class="card-text"><b>Description :- </b><%=rs.getString("cdescription")%></p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.col-lg-9 -->         
            </div>
            <!-- /.row -->
            <!-- Pagination -->
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
            <!-- end of Pagination -->
        </div>
        <!-- /.container -->

    </body>
</html>
