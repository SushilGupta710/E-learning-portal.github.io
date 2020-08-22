/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Sushil Gupta
 */
public class CourseDAO {

    public static Connection getConnection() throws SQLException {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false", "root", "root");
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
        return con;

    }

    public static int Save(CoursePOJO cp) throws SQLException {
        Connection c1 = CourseDAO.getConnection();
        PreparedStatement ps = c1.prepareStatement("insert into course(cname,cauthor,cdescription,curl,cimgname,cimgpath) values (?,?,?,?,?,?)");
        ps.setString(1, cp.getName());
        ps.setString(2, cp.getAuthor());
        ps.setString(3, cp.getDescription());
        ps.setString(4, cp.getUrl());
        ps.setString(5, cp.getImagename());
        ps.setString(6, cp.getImagepath());

        int status = ps.executeUpdate();
        return status;

    }
}
