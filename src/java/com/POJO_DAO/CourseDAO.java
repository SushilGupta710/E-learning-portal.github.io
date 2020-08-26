/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.POJO_DAO;

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

    public static int delete(int id) {
        int status = 0;

        try {
            try (Connection con = LearnDAO.getConnection()) {
                PreparedStatement ps = con.prepareStatement("delete from course where cid=?");
                ps.setInt(1, id);

                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    public static int SaveCourse(CoursePOJO cp) throws SQLException {
        Connection c1 = CourseDAO.getConnection();
        PreparedStatement ps = c1.prepareStatement("insert into index_course(i_cname,i_category,i_cdescription,i_cimgname,i_cimgpath) values (?,?,?,?,?)");
        ps.setString(1, cp.getName());
        ps.setString(2, cp.getCategory());
        ps.setString(3, cp.getDescription());
        ps.setString(4, cp.getImagename());
        ps.setString(5, cp.getImagepath());

        int status = ps.executeUpdate();
        return status;

    }

    public static int deleteCourse(int id) {
        int status = 0;

        try {
            try (Connection con = LearnDAO.getConnection()) {
                PreparedStatement ps = con.prepareStatement("delete from index_course where i_cid=?");
                ps.setInt(1, id);

                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    public static int SaveMember(CoursePOJO cp) throws SQLException {
        Connection c1 = CourseDAO.getConnection();
        PreparedStatement ps = c1.prepareStatement("insert into index_member(mname,mskill,mdescription,mimgname,mimgpath) values (?,?,?,?,?)");
        ps.setString(1, cp.getName());
        ps.setString(2, cp.getSkill());
        ps.setString(3, cp.getDescription());
        ps.setString(4, cp.getImagename());
        ps.setString(5, cp.getImagepath());

        int status = ps.executeUpdate();
        return status;

    }

    public static int deleteMember(int id) {
        int status = 0;

        try {
            try (Connection con = CourseDAO.getConnection()) {
                PreparedStatement ps = con.prepareStatement("delete from index_member where mid=?");
                ps.setInt(1, id);

                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    public static int deleteContact(int id) {
        int status = 0;

        try {
            try (Connection con = CourseDAO.getConnection()) {
                PreparedStatement ps = con.prepareStatement("delete from contactus where id=?");
                ps.setInt(1, id);

                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}
