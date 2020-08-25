<%-- 
    Document   : deletecourse
    Created on : 22 Aug, 2020, 10:04:10 PM
    Author     : Sushil Gupta
--%>


<%@page import="com.portal.CourseDAO"%>
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
    }
    
    int did = Integer.parseInt(request.getParameter("id"));
    CourseDAO.delete(did);
    out.print("<script>alert('successfully deleted');</script>");
    response.sendRedirect("Coursepanel.jsp");
%>