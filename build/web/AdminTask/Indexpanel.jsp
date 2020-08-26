<%-- 
    Document   : Indexpanel
    Created on : 26 Aug, 2020, 2:07:44 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../bootstraplinks.jsp" %>
<%@include file="../AfterAdminLoginNav.jsp" %>
<%--<%@include file="../Sessions/AdminLoginSession.jsp" %>--%>
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
        <script type="text/javascript">
            $(document).ready(function () {
                var table = $('#myTable1').DataTable({
                    paging:false
                });

                new $.fn.dataTable.FixedHeader(table);
            });
        </script>
        <link rel="stylesheet" href="../css/Universal.css">
    </head>
    <body>
        <div class="container-fluid mt-2">
            <div class="row">
                <div class="col-md-6 text-center">
                    <button type="button" class="btn btn-warning " data-toggle="modal" data-target="#exampleModalCenter">
                        Add Member
                    </button>
                </div>
                <div class="col-md-6 text-center">
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalCenter1">
                        Add Course in Index
                    </button>
                </div>
            </div>
        </div>

        <!-- Modal 1-->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add member</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="../addmember" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="font-weight-bold">Skill Set:</label>
                                <select class="form-control" name="memberskill" required>
                                    <option value="">Select a Category</option>
                                    <option value="web">Web Development</option>
                                    <option value="programmer">Programmer</option>
                                    <option value="server">Backend</option>
                                    <option value="dsalgo">D.S & Algorithm</option>
                                    <option value="artifical">Artifical intelligence</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Member Name:</label>
                                <input type="text" class="form-control" name="membername" required="true">
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Member Description:</label>
                                <textarea class="form-control" rows="3" name="memberdesc" required="true"></textarea>
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Member Images:</label>
                                <input type="file" name="memberimg" required="true">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--modal-2-->
        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add a Course</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="../addindcourse" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="font-weight-bold">Course Category:</label>
                                <select class="form-control" name="coursecat" required>
                                    <option value="">Select a Skill</option>
                                    <option value="web">Web Development</option>
                                    <option value="programming">Programming</option>
                                    <option value="server">Backend</option>
                                    <option value="dsalgo">D.S & Algorithm</option>
                                    <option value="ai">Artifical intelligence</option>
                                    <option value="project">Learn with Projects</option>
                                    <option value="interview">Prepare for interview</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Course Name:</label>
                                <input type="text" class="form-control" name="coursename" required="true">
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Course Description:</label>
                                <textarea class="form-control" rows="3" name="coursedesc" required="true"></textarea>
                            </div>

                            <div class="form-group">
                                <label class="font-weight-bold">Course Images:</label>
                                <input type="file" name="courseimg" required="true">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-secondary text-center text-white">
                            <h2>List of Members</h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive-xl">
                                <table id="myTable" class="display">
                                    <thead class="table-success">
                                        <tr>
                                            <th scope='col'>Mid</th>
                                            <th scope='col'>Member name</th>
                                            <th scope='col'>Member skill</th>
                                            <th scope='col'>Member description</th>
                                            <th scope='col'>Image name</th>
                                            <!--<th class='text-center' scope='col'>Update</th>-->
                                            <th class='text-center' scope='col'>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                            statement = conn.createStatement();
                                            String data = "select * from index_member";
                                            rs = statement.executeQuery(data);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%=rs.getInt("mid")%></td>
                                            <td><%=rs.getString("mname")%></td>
                                            <td><%=rs.getString("mskill")%></td>
                                            <td><%=rs.getString("mdescription")%></td>
                                            <td><%=rs.getString("mimgname")%></td>
                                            <!--<td class='text-center'><a href='updatecourse?id=<%=rs.getString("mid")%>' title='Edit'><i class='fa fa-edit'></i></a></td>-->
                                            <td class='text-center'><a href='deletemember.jsp?id=<%=rs.getString("mid")%>' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-secondary text-center text-white">
                            <h2>List of Courses in Index Page </h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive-xl">
                                <table id="myTable1" class="display">
                                    <thead class="table-success">
                                        <tr>
                                            <th scope='col'>Cid</th>
                                            <th scope='col'>Course name</th>
                                            <th scope='col'>Course category</th>
                                            <th scope='col'>Course description</th>
                                            <th scope='col'>Image name</th>
                                            <!--<th class='text-center' scope='col'>Update</th>-->
                                            <th class='text-center' scope='col'>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            statement = conn.createStatement();
                                            String data2 = "select * from index_course";
                                            rs = statement.executeQuery(data2);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%=rs.getInt("i_cid")%></td>
                                            <td><%=rs.getString("i_cname")%></td>
                                            <td><%=rs.getString("i_category")%></td>
                                            <td><%=rs.getString("i_cdescription")%></td>
                                            <td><%=rs.getString("i_cimgname")%></td>
                                            <!--<td class='text-center'><a href='updatecourse?id=<%=rs.getString("i_cid")%>' title='Edit'><i class='fa fa-edit'></i></a></td>-->
                                            <td class='text-center'><a href='deleteindexcourse.jsp?id=<%=rs.getString("i_cid")%>' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>
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
