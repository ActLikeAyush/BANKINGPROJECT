package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("          <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <style>\n");
      out.write("      .jumbotron{\n");
      out.write("          text-align: center;\n");
      out.write("                    background-color: powderblue;\n");
      out.write("\n");
      out.write("      }\n");
      out.write("      .container{\n");
      out.write("          text-align: center;\n");
      out.write("      }\n");
      out.write("      a{\n");
      out.write("          \n");
      out.write("    padding: 50px 20px;\n");
      out.write("    /*border-color: red;*/      \n");
      out.write("  background-color:#3287f4;\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 16px;\n");
      out.write("  margin: 4px 2px;\n");
      out.write("  cursor: pointer;\n");
      out.write("      }\n");
      out.write("      .buu1{\n");
      out.write("          display: flex;\n");
      out.write("      }\n");
      out.write("  </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <div class=\"jumbotron\">\n");
      out.write("        <h1>WelCome to Admin ");
      out.print(session.getAttribute("login_id"));
      out.write(" Login</h1>\n");
      out.write("        <h2>Account Holder Name : ");
      out.print(session.getAttribute("login_name"));
      out.write("</h2>\n");
      out.write("        <div class=\"buu1\">\n");
      out.write("        <form action=\"LogOut.jsp\" method=\"post\">\n");
      out.write("            <input class=\"btn btn-primary\" type=\"submit\" value=\"LogOut\" name=\"b1\">\n");
      out.write("       </form>\n");
      out.write("        \n");
      out.write("        <form action=\"AdminHome.jsp\" method=\"post\">\n");
      out.write("           <input class=\"btn btn-primary\" type=\"submit\" value=\"Home\" name=\"b1\">\n");
      out.write("       </form>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("        <h2>Select any option </h2>\n");
      out.write("         </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <h3>\n");
      out.write("            <a href=\"NewAccount.jsp\">New<br>Account</a>\n");
      out.write("            <!--<a href=\"CancelStatement.jsp\">Customer<br>Statement</a>-->\n");
      out.write("            <a href=\"ViewCustomer.jsp\">View<br>Customer</a>\n");
      out.write("            <a href=\"DeleteCustomer.jsp\">Delete<br>Customer</a>\n");
      out.write("            <a href=\"UpdateCustomer.jsp\">Update<br>Customer</a>\n");
      out.write("            <a href=\"ViewStatement.jsp\">View<br>Statement</a><br>\n");
      out.write("            <a href=\"resetPasword.jsp\">Customer<br>reset Password</a>\n");
      out.write("            <a href=\"ChangePasword.jsp\">Customer<br>Change Password</a>\n");
      out.write("            <a href=\"ChangePasword.jsp\">Admin<br>change Password</a><br>\n");
      out.write("            <a href=\"UpdateStatement.jsp\">Update<br>Statement</a>\n");
      out.write("            <a href=\"CancelStatement.jsp\">Cancel<br>Statement</a>\n");
      out.write("            <a href=\"adminFundTransfer.jsp\">Fund<br>Transfer</a>\n");
      out.write("            <a href=\"CashDeposite.jsp\">Cash<br>Deposit</a>\n");
      out.write("            <a href=\"CashWithdraw.jsp\">Cash<br>Withdraw</a>\n");
      out.write("            <a href=\"Logout.jsp\">LogOut<br>.</a>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </h3>\n");
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
