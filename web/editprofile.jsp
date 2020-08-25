<%-- 
    Document   : editprofile.jsp
    Created on : 13 Aug, 2020, 3:54:08 PM
    Author     : Sushil Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="bootstraplinks.jsp" %>
<%@include file="AfterUserLoginNav.jsp" %>
<%@include file="ConnectingToDB.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Profile</title>
        <link rel="stylesheet" href="css/editprofilestyle.css">
    </head>
    <body>

        <div class="container-fluid mt-2">
            <div class="row">
                <div class="col-md-4 mx-auto form-container ">
                    <form method="post" action="">
                        <%
                            statement = conn.createStatement();
                            String uname = (String) session.getAttribute("userlogin");
                            String data = "select * from registration where runame='" + uname + "'";
                            rs = statement.executeQuery(data);
                            while (rs.next()) {
                        %>
                        <div class="row bg-danger ">
                            <div class="col ">
                                <header class="text-center p-2"><h2 class="text-white">Update Profile</h2></header>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col">
                                <div class="form-group">
                                    <label class="font-weight-bold">Full name</label>
                                    <input type="text" class="form-control"  name="ufname" required="true" value='<%=rs.getString("rname")%>'>
                                </div> 
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label class="font-weight-bold">Email Id</label> 
                                    <input type="email" class="form-control" id="Email" name="uemail" required="true" value='<%=rs.getString("remail")%>'>
                                </div>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label class="font-weight-bold">Mobile No.</label>
                                    <input type="number" class="form-control" name="ucontact" required="true" value='<%=rs.getString("rcontact")%>'>
                                </div>  
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group password">
                                    <label class="font-weight-bold">Password</label>
                                    <input type="password" class="form-control" name="upassword" required="true" value='<%=rs.getString("rpassword")%>'>
                                    <i class='fas fa-eye visibility'></i>
                                </div>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group password1">
                                    <label class="font-weight-bold">Conform Password</label>
                                    <input type="password" class="form-control"  name="ucpassword" required="true" value='<%=rs.getString("rcpassword")%>'>
                                    <i class='fas fa-eye visibility1'></i>
                                </div>  
                            </div>
                        </div>
                        <div class="row justify-content-center ">
                            <div class="col">
                                <button type="submit" class="btn btn-danger btn-block">UPDATE</button>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </form>
                </div>
            </div>
        </div>  
        <script type="text/javascript">
            const visiblityToggle = document.querySelector(".visibility");
            const input = document.querySelector(".password input");

            var password = true;

            visiblityToggle.addEventListener('click', function ()
            {
                if (password) {
                    input.setAttribute('type', 'text');
                } else {
                    input.setAttribute('type', 'password');
                }
                password = !password;
            });

        </script>
        <script type="text/javascript">
            const visiblityToggle1 = document.querySelector(".visibility1");
            const input1 = document.querySelector(".password1 input");

            var password = true;

            visiblityToggle1.addEventListener('click', function ()
            {
                if (password) {
                    input1.setAttribute('type', 'text');
                } else {
                    input1.setAttribute('type', 'password');
                }
                password = !password;
            });

        </script>
    </body>
</html>
<%
    String Name = request.getParameter("ufname");
    String Email = request.getParameter("uemail");
    String Contact = request.getParameter("ucontact");
    String Password = request.getParameter("upassword");
    String Cpassword = request.getParameter("ucpassword");

    if (Name != null && Email != null && Contact != null && Password != null && Cpassword != null) {
        if (Cpassword.equals(Password)) {
            String query = "update registration set rname=?,remail=?,rcontact=?,rpassword=?,rcpassword=? where runame='" + uname + "'";
            preset = conn.prepareStatement(query);
            preset.setString(1, Name);
            preset.setString(2, Email);
            preset.setString(3, Contact);
            preset.setString(4, Password);
            preset.setString(5, Cpassword);
            preset.executeUpdate();
            response.sendRedirect("profile.jsp");
        } else {
            out.print("<script>alert('password does not matched');</script>");
        }
    }
%>