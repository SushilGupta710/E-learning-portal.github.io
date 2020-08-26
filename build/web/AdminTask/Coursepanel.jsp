<%-- 
    Document   : Coursepanel
    Created on : 21 Aug, 2020, 10:29:49 PM
    Author     : Sushil Gupta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../bootstraplinks.jsp" %>
<%@include file="../AfterAdminLoginNav.jsp" %>
<%@include file="../Sessions/AdminLoginSession.jsp" %>
<%@include file="../ConnectingToDB.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course panel</title>
        <script type="text/javascript">
            $(document).ready(function () {
                var table = $('#myTable').DataTable({
                    responsive: true,
                    paging:false
                });

                new $.fn.dataTable.FixedHeader(table);
            });
        </script>
        <link rel="stylesheet" href="../css/Universal.css">
    </head>
    <body>
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-md-10 mx-auto">
                    <div class="card">
                        <div class="card-header text-center bg-secondary">
                            <h2>Add Courses</h2>
                        </div>
                        <div class="card-body">
                            <form action="../addcourse" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Category:</label>
                                            <select class="form-control" name="coursecat" required>
                                                <option value="">Select a Course</option>
                                                <option value="html/css">Html and CSS</option>
                                                <option value="javaScript">JavaScript</option>
                                                <option value="programming">Programming</option>
                                                <option value="server">Server-Side</option>
                                                <option value="dsalgo">D.S & Algorithm</option>
                                                <option value="ai">Artifical intelligence</option>
                                                <option value="project">Learn with Projects</option>
                                                <option value="interview">Prepare for interview</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Url:</label>
                                            <input class="form-control" type="text" name="courseurl" required="true">
                                        </div>
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Author:</label>
                                            <input class="form-control" type="text" name="courseauth" required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="font-weight-bold">Course Description:</label>
                                            <textarea class="form-control" rows="3" name="coursedesc" required="true"></textarea>
                                        </div>
                                        <label class="font-weight-bold">Course Images:</label>
                                        <div class="form-group">
                                            <input type="file" name="courseimg" required="true">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <button class="btn btn-success btn-block">Add</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <a href="adminpanel.jsp"><< Back to admin panel</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-header bg-secondary text-center">
                            <h2>List of Courses</h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive-xl">
                                <table id="myTable" class="display">
                                    <thead class="table-success">
                                        <tr>
                                            <th scope='col'>Cid</th>
                                            <th scope='col'>Course name</th>
                                            <th scope='col'>Course author</th>
                                            <th scope='col'>Course description</th>
                                            <th scope='col'>Course url</th>
                                            <th scope='col'>Image name</th>
                                            <th class='text-center' scope='col'>Update</th>
                                            <th class='text-center' scope='col'>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                            statement = conn.createStatement();
                                            //                                        String uname = (String) session.getAttribute("session_name");
                                            String data = "select * from course";
                                            rs = statement.executeQuery(data);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%=rs.getInt("cid")%></td>
                                            <td><%=rs.getString("cname")%></td>
                                            <td><%=rs.getString("cauthor")%></td>
                                            <td><%=rs.getString("cdescription")%></td>
                                            <td><%=rs.getString("curl")%></td>
                                            <td><%=rs.getString("cimgname")%></td>
                                            <td class='text-center'><a href='updatecourse.jsp?id=<%=rs.getString("cid")%>' title='Edit'><i class='fa fa-edit'></i></a></td>
                                            <td class='text-center'><a href='deletecourse.jsp?id=<%=rs.getString("cid")%>' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
