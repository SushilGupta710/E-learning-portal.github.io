<%-- 
    Document   : deleteuser
    Created on : 21 Aug, 2020, 8:41:27 PM
    Author     : Sushil Gupta
--%>

<%@page import="com.POJO_DAO.LearnDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Sessions/AdminLoginSession.jsp" %>
<%@include file="../ConnectingToDB.jsp" %>
<%
    String name = request.getParameter("uname");
    LearnDAO.delete(name);
    response.sendRedirect("Userpanel.jsp");
%>