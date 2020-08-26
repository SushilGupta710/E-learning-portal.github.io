package org.apache.jsp.AdminTask;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSet;
import java.sql.Statement;

public final class Coursepanel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/AdminTask/../bootstraplinks.jsp");
    _jspx_dependants.add("/AdminTask/../AfterAdminLoginNav.jsp");
    _jspx_dependants.add("/AdminTask/../Sessions/AdminLoginSession.jsp");
    _jspx_dependants.add("/AdminTask/../ConnectingToDB.jsp");
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!--data table css cdn-->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css\">\n");
      out.write("  \n");
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
      out.write("<script src='https://kit.fontawesome.com/a076d05399.js'></script>\n");
      out.write("\n");
      out.write("<!--Datatable Script CDN-->\n");
      out.write("<script type=\"text/javascript\" charset=\"utf8\" src=\"https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js\"></script>\n");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>.nav-img{\n");
      out.write("                width:6vh;\n");
      out.write("            }</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-sm navbar-dark bg-danger \">\n");
      out.write("            <!-- Logo of our website -->\n");
      out.write("            <a class=\"navbar-brand\" href=\"../Index.jsp\"> <img class=\"nav-img\" src=\"../Logo/elearning.png\" alt=\"\"> E-learning</a>\n");
      out.write("\n");
      out.write("            <button class=\"navbar-toggler d-lg-none\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapsibleNavId\" aria-controls=\"collapsibleNavId\"\n");
      out.write("                    aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"collapsibleNavId\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto mt-2 mt-lg-0\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Index.jsp#Home\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Index.jsp#About us\">About us</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"../Index.jsp#Contact us\">Contact us</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <ul class=\"navbar-nav ml-auto mr-5 mt-2 mt-lg-0\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"adminpanel.jsp\">Hello ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${adminlogin}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"logout\">Logout</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');

    session = request.getSession(false);
    if (session.getAttribute("adminlogin") == null) {
        out.print("<script>alert('Please login first')</script>");
        response.sendRedirect("../adminlog.jsp");
    } else {
        String name = (String) session.getAttribute("adminlogin");
    }

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String host = "jdbc:mysql://localhost:3306/elearning?autoReconnect=true&useSSL=false";
    Statement statement = null;
    ResultSet rs = null;
    PreparedStatement preset = null;
    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(host, "root", "root");

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Course panel</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#myTable').DataTable();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/Universal.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid mt-3\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header bg-danger text-center text-white\">\n");
      out.write("                            <h2>Courses</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form action=\"addcourse\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Category:</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"coursecat\" required>\n");
      out.write("                                                <option value=\"\">Select a Course</option>\n");
      out.write("                                                <option value=\"html/css\">Html and CSS</option>\n");
      out.write("                                                <option value=\"javaScript\">JavaScript</option>\n");
      out.write("                                                <option value=\"programming\">Programming</option>\n");
      out.write("                                                <option value=\"server\">Server-Side</option>\n");
      out.write("                                                <option value=\"dsalgo\">D.S & Algorithm</option>\n");
      out.write("                                                <option value=\"ai\">Artifical intelligence</option>\n");
      out.write("                                                <option value=\"project\">Learn with Projects</option>\n");
      out.write("                                                <option value=\"interview\">Prepare for interview</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Url:</label>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" name=\"courseurl\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Author:</label>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" name=\"courseauth\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label class=\"font-weight-bold\">Course Description:</label>\n");
      out.write("                                            <textarea class=\"form-control\" rows=\"3\" name=\"coursedesc\" required=\"true\"></textarea>\n");
      out.write("                                        </div>\n");
      out.write("                                        <label class=\"font-weight-bold\">Course Images:</label>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"file\" name=\"courseimg\" required=\"true\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-4\">\n");
      out.write("                                                <button class=\"btn btn-success btn-block\">Add</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col text-center\">\n");
      out.write("                            <a href=\"adminpanel.jsp\"><< Back to admin panel</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header bg-danger text-center text-white\">\n");
      out.write("                            <h2>List of Courses</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <div class=\"table-responsive-xl\">\n");
      out.write("                                <table id=\"myTable\" class=\"display\">\n");
      out.write("                                    <thead class=\"table-danger\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th scope='col'>Cid</th>\n");
      out.write("                                            <th scope='col'>Course name</th>\n");
      out.write("                                            <th scope='col'>Course author</th>\n");
      out.write("                                            <th scope='col'>Course description</th>\n");
      out.write("                                            <th scope='col'>Course url</th>\n");
      out.write("                                            <th scope='col'>Image name</th>\n");
      out.write("                                            <th class='text-center' scope='col'>Update</th>\n");
      out.write("                                            <th class='text-center' scope='col'>Delete</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        ");
                                            statement = conn.createStatement();
                                            //                                        String uname = (String) session.getAttribute("session_name");
                                            String data = "select * from course";
                                            rs = statement.executeQuery(data);
                                            while (rs.next()) {
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>");
      out.print(rs.getInt("cid"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("cname"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("cauthor"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("cdescription"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("curl"));
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("cimgname"));
      out.write("</td>\n");
      out.write("                                            <td class='text-center'><a href='updatecourse.jsp?id=");
      out.print(rs.getString("cid"));
      out.write("' title='Edit'><i class='fa fa-edit'></i></a></td>\n");
      out.write("                                            <td class='text-center'><a href='deletecourse.jsp?id=");
      out.print(rs.getString("cid"));
      out.write("' title='Delete'><i class='fa fa-trash text-danger'></i></a></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");
 }
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
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
