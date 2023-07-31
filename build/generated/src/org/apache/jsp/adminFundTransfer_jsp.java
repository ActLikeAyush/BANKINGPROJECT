package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.SimpleDateFormat;

public final class adminFundTransfer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Random rndm;
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            table{\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"skyblue\">\n");
      out.write("         ");
      out.write("\n");
      out.write("        ");
 rndm = new Random(); 
      out.write("\n");
      out.write("        Welcome ");
      out.print(session.getAttribute("login_id"));
      out.write(" <br>\n");
      out.write("        <h1 align=\"center\"> Admin Fund Transfer</h1>\n");
      out.write("        <form action=\"AdminFundTransferDBMS.jsp\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>From Account </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"accno\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     <td>To This Account: </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"refname\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Date to Transaction: </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"dot\" value=\"");
      out.print(java.time.LocalDate.now());
      out.write("\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Transaction ID: </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"trid\" value=\"");
      out.print(rndm.nextInt());
      out.write("\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("<!--                <tr>\n");
      out.write("                    <td>New balance: </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"netbal\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>-->\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Transfer Amount: </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"depamt\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                 <tr>\n");
      out.write("                     <td>\n");
      out.write("                         <input type=\"submit\" name=\"b1\" value=\"Deposit\">\n");
      out.write("                     </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"reset\" name=\"b2\" value=\"Reset\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
