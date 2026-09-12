package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class setCookie_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Set Username Cookie</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <h2>Enter Your Name</h2>\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("    <form action=\"setCookie.jsp\" method=\"POST\">\n");
      out.write("        <label for=\"username\">User Name:</label>\n");
      out.write("        <input type=\"text\" id=\"username\" name=\"username\" required>\n");
      out.write("        <input type=\"submit\" value=\"Save Name\">\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    ");

        // Retrieve the form data
        String name = request.getParameter("username");

        // Check if the form was submitted
        if (name != null && !name.trim().isEmpty()) {
            // Create a new Cookie
            Cookie userCookie = new Cookie("username", name);
            
            // Set cookie expiry time (e.g., 24 hours = 86400 seconds)
            userCookie.setMaxAge(60 * 60 * 24);
            
            // Add cookie to the response header
            response.addCookie(userCookie);
    
      out.write("\n");
      out.write("            <p style=\"color: green;\">Cookie saved successfully for <strong>");
      out.print( name );
      out.write("</strong>!</p>\n");
      out.write("            <p><a href=\"getCookie.jsp\">Click here to view your stored cookie</a></p>\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
