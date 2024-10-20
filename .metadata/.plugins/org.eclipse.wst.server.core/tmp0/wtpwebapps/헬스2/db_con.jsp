<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection(url, "system", "1234");
    PreparedStatement ps =null;
    ResultSet rs = null;
    String sql="";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기에 제목을 입력하십시오</title>
</head>
<body>

</body>
</html>