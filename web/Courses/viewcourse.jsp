<%-- 
    Document   : viewcourse
    Created on : 23 Aug, 2020, 11:41:38 AM
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
        <title>View Course</title>
        <link rel="stylesheet" href="../css/Universal.css">
    </head>
    <body>
        <div class="container-fluid mt-5">
            <%
                statement = conn.createStatement();
                int sid = Integer.parseInt(request.getParameter("id"));
                String data = "select * from course where cid = '"+sid+"'";
                rs = statement.executeQuery(data);
                while (rs.next()) {
            %>
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h2><%=rs.getString("cname")%></h2>
                    <p><%=rs.getString("cdescription")%></p>              
                    <div class="embed-responsive embed-responsive-21by9">
                        <iframe class="embed-responsive-item"  src="<%=rs.getString("curl")%>" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </body>
</html>
