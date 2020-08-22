/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sushil Gupta
 */
public class LearnDAO {

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

    public static int Save(LearnPOJO lp) throws SQLException {
        Connection c1 = LearnDAO.getConnection();
        PreparedStatement ps = c1.prepareStatement("insert into registration(rname,runame,remail,rcontact,rpassword,rcpassword) values (?,?,?,?,?,?)");
        ps.setString(1, lp.getName());
        ps.setString(2, lp.getUsername());
        ps.setString(3, lp.getEmail());
        ps.setString(4, lp.getContact());
        ps.setString(5, lp.getPassword());
        ps.setString(6, lp.getCpassword());

        int status = ps.executeUpdate();
        return status;
    }
    
//        for contact us 
    public static int Contactus(LearnPOJO lp) throws SQLException{
        Connection c2 = LearnDAO.getConnection();
        PreparedStatement ps=c2.prepareStatement("insert into contactus(fname,email,message) values(?,?,?)");
        ps.setString(1, lp.getName());
        ps.setString(2,lp.getEmail());
        ps.setString(3, lp.getMessage());
        
        int status = ps.executeUpdate();
        return status;
    }
    
//    for login
        public static LearnPOJO loginUser(String uname,String pass)throws SQLException{
        LearnPOJO lp = new LearnPOJO();
        try{
            Connection c2=LearnDAO.getConnection();
            PreparedStatement ps=c2.prepareStatement("select * from registration where runame=? and rpassword=?");
            ps.setString(1, uname);
            ps.setString(2, pass);
            
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                lp.setUsername(rs.getString(1));
                lp.setCpassword(rs.getString(2));
                lp.setName(rs.getString(3));
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lp;
    }
        

    public static int delete(String uname) {
        int status = 0;

        try {
            try (Connection con = LearnDAO.getConnection()) {
                PreparedStatement ps = con.prepareStatement("delete from registration where runame=?");
                ps.setString(1, uname);

                status = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
//
//    public static Emp_POJO getEmpById(int id) throws SQLException {
//        Emp_POJO e = new Emp_POJO();
//        try (Connection con = Emp_DAO.getConnection()) {
//            PreparedStatement ps = con.prepareStatement("select * from employee where e_id=?");
//
//            ps.setInt(1, id);
//
//            ResultSet rs = ps.executeQuery();
//
//            if (rs.next()) {
//                e.setId(rs.getInt(1));
//                e.setName(rs.getString(2));
//                e.setAge(rs.getString(3));
//            }
//        }
//
//        return e;
//
//    }
//
//    public static List<Emp_POJO> getAllEmp() {
//        ArrayList<Emp_POJO> list;
//        list = new ArrayList<>();
//
//        try {
//            try (Connection con = Emp_DAO.getConnection()) {
//                PreparedStatement ps = con.prepareStatement("select * from employee");
//
//                ResultSet rs = ps.executeQuery();
//                while (rs.next()) {
//                    Emp_POJO e = new Emp_POJO();
//                    e.setId(rs.getInt(1));
//                    e.setName(rs.getString(2));
//                    e.setAge(rs.getString(3));
//
//                    list.add(e);
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return list;
//
//    }
//
//    public static List<Emp_POJO> getEmployeesByCount(int limit, int offset) {
//        List<Emp_POJO> list = new ArrayList<>();
//
//        try {
//            try (Connection con = Emp_DAO.getConnection()) {
//                PreparedStatement ps = con.prepareStatement("select * from employee limit ?, ?");
//                ps.setInt(1, offset);
//                ps.setInt(2, limit);
//
//                ResultSet rs = ps.executeQuery();
//                while (rs.next()) {
//                    Emp_POJO e = new Emp_POJO();
//                    e.setId(rs.getInt(1));
//                    e.setName(rs.getString(2));
//                    e.setAge(rs.getString(3));
//                    list.add(e);
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return list;
//    }
}
