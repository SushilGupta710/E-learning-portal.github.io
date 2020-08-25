<%-- 
    Document   : contactusData
    Created on : 20 Aug, 2020, 11:45:56 PM
    Author     : Sushil Gupta
--%>
<%@page import="com.POJO_DAO.LearnDAO"%>
<%@page import="com.POJO_DAO.LearnPOJO"%>
<%@include file="bootstraplinks.jsp" %>
<%
    String name = request.getParameter("fname");
    String email = request.getParameter("email");
    String mesg = request.getParameter("mesg");

    LearnPOJO lp = new LearnPOJO();
    lp.setName(name);
    lp.setEmail(email);
    lp.setMessage(mesg);

    int status = LearnDAO.Contactus(lp);
    System.out.print(status);
    if (status > 0) {
         response.sendRedirect("Index.jsp");
    } else {
        System.out.print(status);
    }
%>
