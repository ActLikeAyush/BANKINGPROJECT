package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("     <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  font-family: Arial;\n");
      out.write("  padding: 10px;\n");
      out.write("  background: #f1f1f1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Header/Blog Title */\n");
      out.write(".header {\n");
      out.write("  padding: 30px;\n");
      out.write("  text-align: center;\n");
      out.write("  background: #38bdcd;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header h1 {\n");
      out.write("  font-size: 50px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the top navigation bar */\n");
      out.write(".topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #951f18;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the topnav links */\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  display: block;\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change color on hover */\n");
      out.write(".topnav a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Create two unequal columns that floats next to each other */\n");
      out.write("/* Left column */\n");
      out.write(".leftcolumn {   \n");
      out.write("  float: left;\n");
      out.write("  width: 75%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Right column */\n");
      out.write(".rightcolumn {\n");
      out.write("  float: left;\n");
      out.write("  width: 25%;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("  padding-left: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Fake image */\n");
      out.write(".fakeimg {\n");
      out.write("  background-color: #aaa;\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a card effect for articles */\n");
      out.write(".card {\n");
      out.write("  background-color: white;\n");
      out.write("  padding: 20px;\n");
      out.write("  margin-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".row::after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Footer */\n");
      out.write(".footer {\n");
      out.write("  padding: 20px;\n");
      out.write("  text-align: center;\n");
      out.write("  background: #ddd;\n");
      out.write("  margin-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".img{\n");
      out.write("    width: 105%;\n");
      out.write("    height: 193%;\n");
      out.write("    margin-top: -28%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 800px) {\n");
      out.write("  .leftcolumn, .rightcolumn {   \n");
      out.write("    width: 100%;\n");
      out.write("    padding: 0;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 400px) {\n");
      out.write("  .topnav a {\n");
      out.write("    float: none;\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"header\">\n");
      out.write("  <h1>Welcome To Bank</h1>\n");
      out.write("  \n");
      out.write("\n");
      out.write("  <p>Try Our world class Services</p>\n");
      out.write("  <img src=\"image/img1.png\" style=\" width: 13%;height: 25%;margin-top: -10%;margin-left: -87%;\"alt=\"\"/>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"topnav\">\n");
      out.write("    <a href=\"home.jsp\">Home</a>\n");
      out.write("  <a href=\"#\">Contact us</a>\n");
      out.write("  <a href=\"#\">About</a>\n");
      out.write("  <a href=\"Login.jsp\" style=\"float:right\">Login</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("  <div class=\"leftcolumn\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <h2>Services</h2>\n");
      out.write("      <img src=\"image/img3.png\" alt=\"\"/>\n");
      out.write("      <img src=\"image/img4.png\" alt=\"\"/>\n");
      out.write("      <img src=\"image/img5.png\" alt=\"\"/>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("<!--      <h5>Title description, Dec 7, 2017</h5>\n");
      out.write("      <div class=\"fakeimg\" style=\"height:200px;\">Image</div>\n");
      out.write("      <p>Some text..</p>\n");
      out.write("      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>-->\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <h2>TITLE HEADING</h2>\n");
      out.write("      <h5>Title description, Sep 2, 2017</h5>\n");
      out.write("      <div class=\"fakeimg\" style=\"height:200px;\">Image</div>\n");
      out.write("      <p>Some text..</p>\n");
      out.write("      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"rightcolumn\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <h2>Location</h2>\n");
      out.write("     \n");
      out.write("      <div class=\"fakeimg\" style=\"height:100px;\"><img src=\"image/img2.png\"style=\"width: 137%;\n");
      out.write("    margin-top: -14%;\n");
      out.write("    margin-left: -20%;\" alt=\"\"/></div>\n");
      out.write("      \n");
      out.write("      <p>Address: Global Square, Raigwan, Patan Rd, Jabalpur, Madhya Pradesh 482002</p>\n");
      out.write("       <a href=\"\">Map</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <h3>Popular Post</h3>\n");
      out.write("      <div class=\"fakeimg\"><p>Image</p></div>\n");
      out.write("      <div class=\"fakeimg\"><p>Image</p></div>\n");
      out.write("      <div class=\"fakeimg\"><p>Image</p></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <h3>Follow Me</h3>\n");
      out.write("      <p>Some text..</p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"footer\">\n");
      out.write("  <h2>Footer</h2>\n");
      out.write("</div>");
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
