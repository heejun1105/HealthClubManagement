/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.56
 * Generated at: 2023-08-30 03:38:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class 회원등록_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1693362947822L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1693366220637L));
    _jspx_dependants.put("/db_con.jsp", Long.valueOf(1693362947806L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>헬스클럽관리 프로그램</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function fn_go() {\r\n");
      out.write("\tif(f.mname.value==\"\"){\r\n");
      out.write("\t\talert(\"회원이름을 입력해주세요\");\r\n");
      out.write("\t\treturn f.mname.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\tif(f.maddress.value==\"\"){\r\n");
      out.write("\t\talert(\"회원주소를 입력해주세요\");\r\n");
      out.write("\t\treturn f.maddress.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\tif(!(f.gender[0].checked)&&!(f.gender[1].checked)){\r\n");
      out.write("\t\talert(\"성별을 선택해주세요\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(f.tel.value==\"\"){\r\n");
      out.write("\t\talert(\"전화번호를 입력해주세요\");\r\n");
      out.write("\t\treturn f.tel.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\tf.submit();\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("function fn_reset() {\r\n");
      out.write("\talert(\"정보를 지우고 다시 입력합니다.\");\r\n");
      out.write("\tf.reset();\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>여기에 제목을 입력하십시오</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");

    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection(url, "system", "1234");
    PreparedStatement ps =null;
    ResultSet rs = null;
    String sql="";
    
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>여기에 제목을 입력하십시오</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<header>\r\n");
      out.write("\t<h2>(과정평가형 정보처리기능사)헬스클럽관리 프로그램</h2>\r\n");
      out.write("</header>\r\n");
      out.write("<nav>\r\n");
      out.write("\t<a href=\"회원등록.jsp\">회원등록</a>\r\n");
      out.write("\t<a href=\"회원목록_트레이너신청.jsp\">회원목록/트레이너신청</a>\r\n");
      out.write("\t<a href=\"트레이너목록.jsp\">트레이너목록</a>\r\n");
      out.write("\t<a href=\"index.jsp\">홈으로</a>\r\n");
      out.write("</nav>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<section>\r\n");
      out.write("<div>\r\n");
      out.write("<h1>헬스클럽관리 프로그램</h1>\r\n");
      out.write("</div><br><br>\r\n");
      out.write("\r\n");
      out.write("<form action=\"회원등록pro.jsp\" method=\"post\" name=\"f\">\r\n");
      out.write("<table border=\"1\" style=\"margin: auto;\">\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\"> 회원번호\r\n");
      out.write("\t");
 sql = "select max(memno)+1 from member_tbl_0830";
	
		ps= con.prepareStatement(sql);
		rs=ps.executeQuery();
		rs.next();
	
      out.write("\r\n");
      out.write("\t<td><input type=\"text\" name=\"memno\" value=\"");
      out.print(rs.getString(1));
      out.write("\">(자동생성)\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\">회원이름\r\n");
      out.write("\t<td><input type=\"text\" name=\"mname\">\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\">회원주소\r\n");
      out.write("\t<td><input type=\"text\" name=\"maddress\">\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\">등록일\r\n");
      out.write("\t");
 sql = "select to_char(sysdate,'yy-mm-dd') from dual";
	
	ps= con.prepareStatement(sql);
	rs=ps.executeQuery();
	rs.next();
	
      out.write("\r\n");
      out.write("\t<td><input type=\"text\" name=\"joindate\" value=\"");
      out.print(rs.getString(1));
      out.write("\">\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\">회원성별\r\n");
      out.write("\t<td><input type=\"radio\" name=\"gender\" value=\"M\">남자\r\n");
      out.write("\t<input type=\"radio\" name=\"gender\" value=\"F\">여자\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<th style=\"text-align: center;\">전화번호\r\n");
      out.write("\t<td><input type=\"text\" name=\"tel\">예)010-0000-0000\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td colspan=\"2\" style=\"text-align: center;\"><input type=\"submit\" value=\"회원등록\" onclick=\"fn_go(); return false;\">\r\n");
      out.write("\t<input type=\"reset\" value=\"다시쓰기\" onclick=\"fn_reset(); return false;\">\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>사원관리 프로그램</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<footer>\r\n");
      out.write("<b>HRDKOREA Copyrightⓒ2022 All right reserved Human Resources Development Service of Korea</b>\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
