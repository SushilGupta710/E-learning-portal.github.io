<%-- 
    Document   : deleteuser
    Created on : 21 Aug, 2020, 8:41:27 PM
    Author     : Sushil Gupta
--%>

<%@page import="com.portal.LearnDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session = request.getSession(false);
    if (session.getAttribute("session_name") == null) {
        out.print("<script>alert('please login first');</script>");
        response.sendRedirect("adminlog.jsp");
    } else {

    }
    String name = request.getParameter("uname");
    LearnDAO.delete(name);
    response.sendRedirect("Userpanel.jsp");
%>