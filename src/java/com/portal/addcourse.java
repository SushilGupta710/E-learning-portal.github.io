/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portal;

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

//optional step 
@WebServlet(name = "ServletFileUpload", urlPatterns = {"/ServletFileUpload"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB

public class addcourse extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        step 1 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

//        step 2 value fetch kerke lao 
        String category = request.getParameter("coursecat");
        String url = request.getParameter("courseurl");
        String author = request.getParameter("courseauth");
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
        String savePath = "D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\" + File.separator + filename;
        File fileSaveDir = new File(savePath);

//        step 5 using output stream
        FileOutputStream fos = new FileOutputStream(savePath);
        fos.write(data);

        CoursePOJO cpo = new CoursePOJO();
        cpo.setName(category);
        cpo.setUrl(url);
        cpo.setAuthor(author);
        cpo.setDescription(desc);
        cpo.setImagename(filename);
        cpo.setImagepath(savePath);

        try {
            int status = CourseDAO.Save(cpo);
            System.out.print(status);
            if (status > 0) {
                response.sendRedirect("adminpanel.jsp");
            } else {
                out.print("<div class='alert alert-error'> Record not updated </div>");
            }
        } catch (SQLException ex) {
            System.out.print(ex.getMessage());
        }
    }

  @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

