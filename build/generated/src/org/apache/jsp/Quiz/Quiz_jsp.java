package org.apache.jsp.Quiz;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Quiz_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Play Quiz</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"css/quiz.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"home-box custom-box\">\n");
      out.write("            <h3>Instructions</h3>\n");
      out.write("            <p>Total number of questions: <span class=\"total-question\">5</span></p>\n");
      out.write("            <button type=\"button\" class=\"btn\" onclick=\"startQuiz()\">Start Quiz</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"quiz-box custom-box hide\">\n");
      out.write("            <div class=\"question-number\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"question-text\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"option-container\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"next-question-btn\">\n");
      out.write("                <button type=\"button\" class=\"btn\" onclick=\"next()\">Next</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"answers-indicator\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"result-box custom-box hide\">\n");
      out.write("            <h1>Quiz Result</h1>\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Total Questions</td>\n");
      out.write("                    <td><span class=\"total-question\"></span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Attempt</td>\n");
      out.write("                    <td><span class=\"total-attempt\"></span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Correct</td>\n");
      out.write("                    <td><span class=\"total-correct\"></span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Wrong</td>\n");
      out.write("                    <td><span class=\"total-wrong\"></span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Percentage</td>\n");
      out.write("                    <td><span class=\"percentage\"></span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Your Total Score</td>\n");
      out.write("                    <td><span class=\"total-score\"></span></td>\n");
      out.write("                </tr>   \n");
      out.write("            </table>\n");
      out.write("            <button type=\"button\" class=\"btn\" onclick=\"tryAgainQuiz()\">Try Again</button>\n");
      out.write("            <button type=\"button\" class=\"btn\" onclick=\"goToHome()\">Go To Home</button>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/app.js\"></script>\n");
      out.write("        <script src=\"js/question.js\"></script>\n");
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
