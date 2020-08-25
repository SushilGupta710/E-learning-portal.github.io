<%-- 
    Document   : AdminLoginSession
    Created on : 25 Aug, 2020, 1:59:40 PM
    Author     : Sushil Gupta
--%>

<%
    session = request.getSession(false);
    if (session.getAttribute("adminlogin") == null) {
        out.print("<script>alert('Please login first')</script>");
        response.sendRedirect("../adminlog.jsp");
    } else {
        String name = (String) session.getAttribute("adminlogin");
    }
%>
