package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class validation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            form label {\n");
      out.write("                display: inline-block;\n");
      out.write("                width: 100px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            form div {\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .error {\n");
      out.write("                color: red;\n");
      out.write("                margin-left: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            label.error {\n");
      out.write("                display: inline;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2>Example 1:</h2>\n");
      out.write("        <form id=\"\" method=\"post\" action=\"\">\n");
      out.write("            <div>\n");
      out.write("                <label for=\"first_name\">First Name:</label>\n");
      out.write("                <input type=\"text\" id=\"first_name\" name=\"first_name\"></input>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <label for=\"last_name\">Last Name:</label>\n");
      out.write("                <input type=\"text\" id=\"last_name\" name=\"last_name\"></input>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <label for=\"email\">Email:</label>\n");
      out.write("                <input type=\"email\" id=\"email\" name=\"email\"></input>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <label for=\"password\">Password:</label>\n");
      out.write("                <input type=\"password\" id=\"password\" name=\"password\"></input>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <input type=\"submit\" value=\"Submit\" />\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("\n");
      out.write("                $('#first_form').submit(function (e) {\n");
      out.write("                    e.preventDefault();\n");
      out.write("                    var first_name = $('#first_name').val();\n");
      out.write("                    var last_name = $('#last_name').val();\n");
      out.write("                    var email = $('#email').val();\n");
      out.write("                    var password = $('#password').val();\n");
      out.write("\n");
      out.write("                    $(\".error\").remove();\n");
      out.write("\n");
      out.write("                    if (first_name.length < 1) {\n");
      out.write("                        $('#first_name').after('<span class=\"error\">This field is required</span>');\n");
      out.write("                    }\n");
      out.write("                    if (last_name.length < 1) {\n");
      out.write("                        $('#last_name').after('<span class=\"error\">This field is required</span>');\n");
      out.write("                    }\n");
      out.write("                    if (email.length < 1) {\n");
      out.write("                        $('#email').after('<span class=\"error\">This field is required</span>');\n");
      out.write("                    } else {\n");
      out.write("                        var regEx = /^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$/;\n");
      out.write("                        var validEmail = regEx.test(email);\n");
      out.write("                        if (!validEmail) {\n");
      out.write("                            $('#email').after('<span class=\"error\">Enter a valid email</span>');\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                    if (password.length < 8) {\n");
      out.write("                        $('#password').after('<span class=\"error\">Password must be at least 8 characters long</span>');\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
