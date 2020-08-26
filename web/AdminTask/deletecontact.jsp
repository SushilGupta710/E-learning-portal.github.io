<%-- 
    Document   : deletecontact
    Created on : 26 Aug, 2020, 9:41:38 PM
    Author     : Sushil Gupta
--%>

<%@page import="com.POJO_DAO.CourseDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Sessions/AdminLoginSession.jsp" %>
<%@include file="../ConnectingToDB.jsp" %>
<%    
    int did = Integer.parseInt(request.getParameter("id"));
    CourseDAO.deleteContact(did);
    out.print("<script>alert('successfully deleted');</script>");
    response.sendRedirect("Userpanel.jsp");
%>