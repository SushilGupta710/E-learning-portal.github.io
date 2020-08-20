/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sushil Gupta
 */
public class adminlogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username = request.getParameter("uname");
            String password = request.getParameter("pass");
            Connection con = null;
            try {
                if (username != null) {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false", "root", "root");
                    String Query = "select * from adminreg where adminuname=? and adminpass=?";
                    PreparedStatement ps = con.prepareStatement(Query);
                    ps.setString(1, username);
                    ps.setString(2, password);
                    ResultSet rs = ps.executeQuery();
                    if (rs.next()) {
                        response.sendRedirect("adminpanel.jsp");
                        out.print("Welcome," + username);
                        HttpSession session = request.getSession();
                        session.setAttribute("session_name", username);
                    } else {
                        request.setAttribute("message", "invalid credientials");
                        request.getRequestDispatcher("adminlog.jsp").include(request, response);
                    }
                }
            } catch (Exception ex) {
                out.print("Exception:" + ex.getMessage());
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
