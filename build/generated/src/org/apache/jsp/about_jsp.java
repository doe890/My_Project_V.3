package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>About</title>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/favicon.ico\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"slick/slick.css\"/>\n");
      out.write("  \t<link rel=\"stylesheet\" type=\"text/css\" href=\"slick/slick-theme.css\"/>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"slick/slick.min.js\"></script>\n");
      out.write("          <script type=\"text/javascript\" src=\"script/category.js\"></script>\n");
      out.write("\t\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"banner\" id=\"home\">\n");
      out.write("\t\t<div class=\"banner_slide\">\n");
      out.write("\t\t\t<div class=\"sliderpic\">\n");
      out.write("\t\t\t\t<div class=\"_1slider active\"><img src=\"images/banner slide/1.png\" alt=\"1.png\"></div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("         \n");
      out.write("        \n");
      out.write(" \n");
      out.write("            \n");
      out.write("         <!-- Start content -->\n");
      out.write("        <div class=\"mainContainer\">\n");
      out.write("          <div class=\"\">\n");
      out.write("            <div>\n");
      out.write("              <h3 class=\"h3_content\">ABOUT Us</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"\">\n");
      out.write("                <p>Creativity is at the heart of every dream. Every idea, every groundbreaking leap that changes our world starts with the vision of talented creators. At DJI, we give these creators the tools they need to bring their ideas to life.</p><br>\n");
      out.write("\n");
      out.write("                <p>Our platforms empower them to capture images that were once out of reach. Our flying and camera stabilization systems redefine camera placement and motion. Amazing photos and video, treasured personal memories, and high-end professional imagery are captured every day, in every corner of the world using DJI products.</p><br>\n");
      out.write("\n");
      out.write("                <p>DJI technology does more than simply enable creators. We push visionaries to go beyond the limits of what is thought possible, inspiring them to inspire the world.</p><br>\n");
      out.write("\n");
      out.write("                <p>We do this through an unparalleled commitment to R&D, a culture of constant innovation and curiosity, and a focus on transforming complex technology into easy-to-use devices. Building on the ethos of “form follows function,” our products combine advanced technology with dynamic designs.</p><br>\n");
      out.write("\n");
      out.write("                <p>Headquartered in Shenzhen, widely considered China’s Silicon Valley, DJI benefits from direct access to the suppliers, raw materials, and young, creative talent pool necessary for sustained success. Drawing on these resources, we have grown from a single small office in 2006 to a global workforce. Our offices can now be found in the United States, Germany, the Netherlands, Japan, South Korea, Beijing, Shanghai, and Hong Kong. As a privately owned and operated company, DJI focuses on our own vision, supporting creative, commercial, and nonprofit applications of our technology.</p><br>\n");
      out.write("\n");
      out.write("                <p>Today, DJI products are redefining industries. Professionals in filmmaking, agriculture, conservation, search and rescue, energy infrastructure, and more trust DJI to bring new perspectives to their work and help them accomplish feats safer, faster, and with greater efficiency than ever before.</p><br>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("             </div>\n");
      out.write("       \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "information.jsp", out, false);
      out.write("    \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "mb-footer.jsp", out, false);
      out.write("\n");
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
