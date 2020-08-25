<%-- 
    Document   : ConnectingToDB
    Created on : 25 Aug, 2020, 2:07:04 PM
    Author     : Sushil Gupta
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
    String host = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
    Statement statement = null;
    ResultSet rs = null;
    PreparedStatement preset = null;
    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(host, "root", "root");
%>
