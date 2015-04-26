package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ForgotPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Forgot Password</title>\n");
      out.write("        <link href=\"../backend/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <style>\n");
      out.write("            .con{\n");
      out.write("                top: 80px;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("               // background-image: url(\"paper.gif\");\n");
      out.write("                background-color: #141414;\n");
      out.write("            }\n");
      out.write("          \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <br>\n");
      out.write("<div class=\"container con\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4 col-md-offset-4\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                    <div class=\"panel-body \">\n");
      out.write("                        <div class=\"text-center \">\n");
      out.write("                            <img src=\"images/fogpass.png\" class=\"login\" >\n");
      out.write("                          <h3 class=\"text-center\">Forgot Password?</h3>\n");
      out.write("                          <p>If you have forgotten your password - reset it here.</p>\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                              \n");
      out.write("                                <form class=\"form\" method=\"POST\" action=\"ForgotPasswordS\">\n");
      out.write("                                <fieldset>\n");
      out.write("                                  <div class=\"form-group\">\n");
      out.write("                                      <div class=\"input-group\">\n");
      out.write("                                          <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user color-blue\"></i></span>\n");
      out.write("                                      <!--EMAIL ADDRESS-->\n");
      out.write("                                      <input id=\"user\" placeholder=\"User Name\" class=\"form-control\" name=\"user\" type=\"text\"  required=\"\">\n");
      out.write("                                      </div>\n");
      out.write("                                      <br>\n");
      out.write("                                    <div class=\"input-group\">\n");
      out.write("                                      <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-envelope color-blue\"></i></span>\n");
      out.write("                                      <!--EMAIL ADDRESS-->\n");
      out.write("                                      <input id=\"emailInput\" placeholder=\"email address\" class=\"form-control \" name=\"email\" type=\"email\" oninvalid=\"setCustomValidity('Please enter a valid email address!')\" onchange=\"try{setCustomValidity('')}catch(e){}\" required=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                  </div>\n");
      out.write("                                  <div class=\"form-group\">\n");
      out.write("                                    <input class=\"btn btn-lg btn-primary btn-block \" value=\"Send My Password\" type=\"submit\">\n");
      out.write("                                  </div>\n");
      out.write("                                </fieldset>\n");
      out.write("                                    <br>\n");
      out.write("                                  <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${status}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                              </form>\n");
      out.write("                              \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
