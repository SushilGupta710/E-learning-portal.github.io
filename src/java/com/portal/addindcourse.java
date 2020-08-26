/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

import com.POJO_DAO.CourseDAO;
import com.POJO_DAO.CoursePOJO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Sushil Gupta
 */
@WebServlet(name = "ServletFileUpload", urlPatterns = {"/ServletFileUpload"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB

public class addindcourse extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         //        step 1 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

//        step 2 value fetch kerke lao 
        String category = request.getParameter("coursecat");
        String name = request.getParameter("coursename");
        String desc = request.getParameter("coursedesc");

//        for file hum ho Part use kerna pade ga 
        Part filepart = request.getPart("courseimg");
//        ismain hum ko file ka naam mile ga 
        String filename = filepart.getSubmittedFileName();
//        step 3 use InputStream
        InputStream is = filepart.getInputStream();
        byte[] data = new byte[is.available()];
        is.read(data);

//        step 4 file ko folder main save kerna
        String savePath = "D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\" + File.separator + filename;
        File fileSaveDir = new File(savePath);

//        step 5 using output stream
        FileOutputStream fos = new FileOutputStream(savePath);
        fos.write(data);

        CoursePOJO cpo = new CoursePOJO();
        cpo.setName(name);
        cpo.setCategory(category);
        cpo.setDescription(desc);
        cpo.setImagename(filename);
        cpo.setImagepath(savePath);

        try {
            int status = CourseDAO.SaveCourse(cpo);
            System.out.print(status);
            if (status > 0) {
                response.sendRedirect("AdminTask/Indexpanel.jsp");
                out.print("<script>alert('record inserted successfully');</script>");
            } else {
                out.print("<script>alert('record not inserted');</script>");
            }
        } catch (SQLException ex) {
            System.out.print(ex.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
