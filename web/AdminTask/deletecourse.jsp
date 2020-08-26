<%-- 
    Document   : deletecourse
    Created on : 22 Aug, 2020, 10:04:10 PM
    Author     : Sushil Gupta
--%>
<%@page import="com.POJO_DAO.CourseDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Sessions/AdminLoginSession.jsp" %>
<%@include file="../ConnectingToDB.jsp" %>
<%    
    int did = Integer.parseInt(request.getParameter("id"));
    CourseDAO.delete(did);
    out.print("<script>alert('successfully deleted');</script>");
    response.sendRedirect("Coursepanel.jsp");
%>