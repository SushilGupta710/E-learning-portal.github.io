<%-- 
    Document   : Userpanel
    Created on : 21 Aug, 2020, 7:12:50 PM
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
        <title>User panel</title>
        <script type="text/javascript">
            $(document).ready(function () {
                var table = $('#myTable').DataTable({
                    responsive: true,
                    paging: false
                });

                new $.fn.dataTable.FixedHeader(table);
            });
            $(document).ready(function () {
                var table = $('#myTable1').DataTable({
                    responsive: true,
                    paging: false
                });

                new $.fn.dataTable.FixedHeader(table);
            });
        </script>
        <link rel="stylesheet" href="../css/Universal.css">
    </head>
    <body>
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-md-7 ">
                    <div class="card">
                        <div class="card-header text-center bg-secondary text-white">
                            <h2>List of users</h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive-xl">
                                <table class="display" id="myTable" >
                                    <thead class="table-success">
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
                                        <%  statement = conn.createStatement();
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
                    </div>
                </div>
                <div class="col-md-5 ">
                    <div class="card">
                        <div class="card-header text-center bg-secondary text-white">
                            <h2>Message</h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive-xl">
                                <table class="display" id="myTable1" >
                                    <thead class="table-success">
                                        <tr>
                                            <th scope='col'>Id</th>
                                            <th scope='col'>Full name</th>
                                            <th scope='col'>Email</th>
                                            <th scope='col'>Message</th>
                                            <th class='text-center' scope='col'>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  statement = conn.createStatement();
                                            String data1 = "select * from contactus";
                                            rs = statement.executeQuery(data1);
                                            while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%=rs.getInt("id")%></td>
                                            <td><%=rs.getString("fname")%></td>
                                            <td><%=rs.getString("email")%></td>
                                            <td><%=rs.getString("message")%></td>
                                            <td class='text-center'><a href='deletecontact.jsp?id=<%=rs.getString("id")%>' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                </html>
