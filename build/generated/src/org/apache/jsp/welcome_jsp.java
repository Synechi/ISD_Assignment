package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Random;
import Model.User;
import Model.dao.DBManager;
import java.sql.*;
import Controller.*;

public final class welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       \n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("                <link rel=\"stylesheet\" href=\"ISD CSS.css\">\n");
      out.write("        <title>Welcome</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"isd1.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("  <div class=\"nav\">\n");
      out.write("            \n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"http://i65.tinypic.com/19p84o.png\"></a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("              </button>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\n");
      out.write("        <!--HOME,MOVIES,ABOUT-->\n");
      out.write("        \n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                                <div class=\"float-right\">\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"index.jsp\">HOME</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-auto\">\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"movies.jsp\">MOVIES</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-auto\">\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"about.jsp\">ABOUT</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                <!--LOGIN, SIGNUP-->\n");
      out.write("                    <div class=\"col-auto\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"account.jsp\">MY ACCOUNT</a>\n");
      out.write("                            </li>   \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-auto\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"checkout.jsp\">CHECKOUT</a>\n");
      out.write("                            </li>\n");
      out.write("                        </div>\n");
      out.write("                                        <div class=\"col-auto\">\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"logout.jsp\">LOGOUT</a>\n");
      out.write("                            </li>\n");
      out.write("                        </div>\n");
      out.write("            </ul>          \n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("        </div>        \n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("       ");
        
        String fName = request.getParameter("Name");
        String lName = request.getParameter("name2");
        String name = fName + " " + lName;
        String email = request.getParameter("Email");
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String address = request.getParameter("Address");
        String city = request.getParameter("City");
        String state = request.getParameter("State");
        String country = request.getParameter("Country");
        String postcode = request.getParameter("Postcode");
        String dob = request.getParameter("DOB");
       // SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
       // Date date = formatter.parse(dob);
       // java.sql.Date sqlDate = new java.sql.Date(date.getTime());      
        
        int key = (new Random()).nextInt(999999);         
                              
        User user = new User(key, name, email, username, password, address, city, state, country, postcode, dob, 1);
        session.setAttribute("user", user);
        DBManager manager = (DBManager)session.getAttribute("manager");
        //manager.addUser(key, name, email, username, password, address, city, state, country, postcode, dob, 1);        
                                 
      out.write("\n");
      out.write("                                 \n");
      out.write(" \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("    <center> <h2>Welcome to the Online Movie Store ");
      out.print(name);
      out.write(" </h2></center>\n");
      out.write("    <center> <h3> Click <a href=\"index.jsp\"> here <a> to continue </h3>\n");
      out.write("    </body>\n");
      out.write("       </html>\n");
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
