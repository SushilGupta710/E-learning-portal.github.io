package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public final class Coursepanel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/bootstraplinks.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    session = request.getSession(false);
    if (session.getAttribute("session_name") == null) {
        out.print("<script>alert('Please login first');</script>");
        response.sendRedirect("adminlog.jsp");
    } else {
//                String name = (String) session.getAttribute("session_name");
//                out.print("Hello " + name + " Welcome to Profile");

    }

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!--bootstrap css CDN(Content Delivery Network) Link-->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" integrity=\"sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("<!--bootstrap js CDN(Content Delivery Network) Link-->\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\" integrity=\"sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<!--sweet alert-2-->\n");
      out.write("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("\n");
      out.write("<!--font awesome5 js link-->\n");
      out.write("<script src='https://kit.fontawesome.com/a076d05399.js'></script>");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Course panel</title>\n");
      out.write("        <style>\n");
      out.write("            @import url('https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900');\n");
      out.write("            .nav-img{\n");
      out.write("                width:6vh;   \n");
      out.write("            }\n");
      out.write("            *{\n");
      out.write("                font-family: 'Poppins', sans-serif;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid mt-3\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header bg-danger text-center text-white\">\n");
      out.write("                            <h2>Courses</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form action=\"addcourse\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Category:</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"coursecat\" required=\"true\">\n");
      out.write("                                                <option selected disabled>Select a Course</option>\n");
      out.write("                                                <option value=\"html/css\">Html and CSS</option>\n");
      out.write("                                                <option value=\"js\">JavaScript</option>\n");
      out.write("                                                <option value=\"prog\">Programming</option>\n");
      out.write("                                                <option value=\"server\">Server-Side</option>\n");
      out.write("                                                <option value=\"dsalgo\">DS& Algorithm</option>\n");
      out.write("                                                <option value=\"ai\">Artifical Inteligence</option>\n");
      out.write("                                                <option value=\"lwp\">Learn with Projects</option>\n");
      out.write("                                                <option value=\"preint\">Prepare for interview</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Url:</label>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" name=\"courseurl\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Author:</label>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" name=\"courseauth\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Description:</label>\n");
      out.write("                                            <textarea class=\"form-control\" rows=\"3\" name=\"coursedesc\" required=\"true\"></textarea>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col\">\n");
      out.write("                                        <label class=\"font-weight-bold\">Course Images:</label>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"file\" name=\"courseimg\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"card-footer\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <button class=\"btn btn-success btn-block\">Add</button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <button class=\"btn btn-info btn-block\">Update</button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                            <button class=\"btn btn-danger btn-block\">Delete</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <a href=\"adminpanel.jsp\"><< Back to admin panel</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header bg-danger text-center text-white\">\n");
      out.write("                            <h2>List of Courses</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
