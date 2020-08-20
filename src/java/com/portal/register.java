/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sushil Gupta
 */
public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        System.out.println("hello");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String Name = request.getParameter("name");
        String Username = request.getParameter("username");
        String Email = request.getParameter("email");
        String Contact = request.getParameter("contact");
        String Password = request.getParameter("password");
        String Cpassword = request.getParameter("cpassword");

        LearnPOJO lpo = new LearnPOJO();
        lpo.setName(Name);
        lpo.setUsername(Username);
        lpo.setEmail(Email);
        lpo.setContact(Contact);
        lpo.setPassword(Password);
        lpo.setCpassword(Cpassword);

        try {
            int status = LearnDAO.Save(lpo);
            System.out.print(status);
//            means id humesha 1 se start hota hai to hum lo greater then zero likhenge
            if (status > 0) {
//                out.print("<div class='alert alert-success'> Record updated sucessfully </div>");
//                request.getRequestDispatcher("login.jsp").include(request, response);
                response.sendRedirect("login.jsp");
            } else {
                 out.print("<div class='alert alert-error'> Record not updated </div>");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
