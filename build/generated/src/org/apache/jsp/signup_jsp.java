package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.dao.DBManager;
import java.util.Random;
import Model.User;
import java.util.Date;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("                <link rel=\"stylesheet\" href=\"ISD CSS.css\">\r\n");
      out.write("        <title>Register</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"isd1.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("  <div class=\"nav\">\r\n");
      out.write("            \r\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"http://i65.tinypic.com/19p84o.png\"></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("              </button>\r\n");
      out.write("         \r\n");
      out.write("        \r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("        <!--HOME,MOVIES,ABOUT-->\r\n");
      out.write("        \r\n");
      out.write("                    <div class=\"container-fluid\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                                <div class=\"float-right\">\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a class=\"nav-link\" href=\"index.jsp\">HOME</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-auto\">\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a class=\"nav-link\" href=\"movies.jsp\">MOVIES</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-auto\">\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a class=\"nav-link\" href=\"about.jsp\">ABOUT</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                <!--LOGIN, SIGNUP-->\r\n");
      out.write("                    <div class=\"col-auto\">\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                <a class=\"nav-link\" href=\"login.jsp\">LOGIN</a>\r\n");
      out.write("                            </li>   \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-auto\">\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" href=\"signup.jsp\">REGISTER</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </div>\r\n");
      out.write("                                        <div class=\"col-auto\">\r\n");
      out.write("                            <li class=\"nav-item\">\r\n");
      out.write("                                    <a class=\"nav-link\" href=\"checkout.jsp\">CHECKOUT</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </div>\r\n");
      out.write("            </ul>          \r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("        </div>        \r\n");
      out.write("    </nav>\r\n");
      out.write("    <body>\r\n");
      out.write("          <!--TOP NAVIGATION BAR-->\r\n");
      out.write("        \r\n");
      out.write("       \r\n");
      out.write("        <center><h2>Register</h2></center>\r\n");
      out.write("            <form action=\"welcome.jsp\" method=\"post\">\r\n");
      out.write("                    <table class=\"signuptable\" style=\"width:50%\">\r\n");
      out.write("                        <caption>* Indicates required.</caption>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Name\" placeholder=\"First name*\"></th>                           \r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Name2\" placeholder=\"Last name*\"></th>                           \r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"email\" name=\"Email\" placeholder=\"Email*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Username\" placeholder=\"Username*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"password\" name=\"Password\" placeholder=\"Password*\"></th>\r\n");
      out.write("                        </tr>  \r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Address\" placeholder=\"Street Address*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"City\" placeholder=\"City*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"State\" placeholder=\"State*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Country\" placeholder=\"Country*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"text\" name=\"Postcode\" placeholder=\"Postcode*\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th class=\"field\" colspan=\"2\"><input type=\"date\" name=\"DOB\" placeholder=\"Date of Birth: dd/mm/yy\"></th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th><input type=\"checkbox\" name=\"tosEmail\" value=\"Yes\"></th>\r\n");
      out.write("                            <th class=\"checktext\">I would like to receive regular emails about newly added movies.</th>          \r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th><input type=\"checkbox\" name=\"tos\" value=\"Agree to TOS\"></th>\r\n");
      out.write("                            <th class=\"checktext\">Agree to TOS</th> \r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>\r\n");
      out.write("                                <input class=\"button\" type=\"submit\" value=\"Register\"> \r\n");
      out.write("                                \r\n");
      out.write("                            </th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("            </form>  \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
