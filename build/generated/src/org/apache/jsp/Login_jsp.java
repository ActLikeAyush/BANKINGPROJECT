package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("          <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <style>\n");
      out.write("      .jumbotron{\n");
      out.write("          text-align: center;\n");
      out.write("          background-color: powderblue;\n");
      out.write("      }\n");
      out.write("      .container{\n");
      out.write("          text-align: center;\n");
      out.write("      }\n");
      out.write("      #con{\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("      .form{\n");
      out.write("          width: 40%;\n");
      out.write("        \n");
      out.write("          margin-left: 30%;\n");
      out.write("          text-align: center;\n");
      out.write("      }\n");
      out.write("  </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("            <h1>Welcome to bank.....</h1>\n");
      out.write("            <p>Enter your id and password for login</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form\">\n");
      out.write("        <form action=\"Check.jsp\" method=\"post\">\n");
      out.write("         \n");
      out.write("               \n");
      out.write("            <h1>Select Role</h1>\n");
      out.write("                            <select class=\"form-control\" id=\"sel1\" name=\"role\"> \n");
      out.write("                            <option value=\"Select\">Select</option>\n");
      out.write("                            <option value=\"admin\">Admin</option>\n");
      out.write("                            <option value=\"customer\">Coustomer</option>\n");
      out.write("                        </select>\n");
      out.write("                     \n");
      out.write("            <br>\n");
      out.write("                \n");
      out.write("                    LogIn ID:\n");
      out.write("             \n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"Login\">\n");
      out.write("                        <br>\n");
      out.write("                  Password:\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"Loginpassword\">\n");
      out.write("                        <br>\n");
      out.write("                        <input  class=\"btn btn-success\" type=\"submit\" value=\"LogIn\" name=\"b1\">\n");
      out.write("                  \n");
      out.write("                        <input class=\"btn btn-warning\" type=\"reset\" value=\"Reset\" name=\"b2\">\n");
      out.write("                        <br><br>\n");
      out.write("                        \n");
      out.write("                    \n");
      out.write("                 \n");
      out.write("                        <a class=\"btn btn-primary\" href=\"ForgetPassword.jsp\">Forget Password</a>\n");
      out.write("                   \n");
      out.write("        </form>\n");
      out.write("           \n");
      out.write("        </div>      \n");
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
