<%-- 
    Document   : UserLoginSession
    Created on : 25 Aug, 2020, 1:59:28 PM
    Author     : Sushil Gupta
--%>

<%
    session = request.getSession(false);

    if (session.getAttribute("userlogin") == null) {
        out.print("<script>alert('Please login first')</script>");
        response.sendRedirect("login.jsp");
    } else {
        String name = (String) session.getAttribute("userlogin");
    }
%>