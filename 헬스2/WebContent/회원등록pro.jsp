<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db_con.jsp" %>
    <% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
String memno = request.getParameter("memno");
String mname = request.getParameter("mname");
String maddress = request.getParameter("maddress");
String joindate = request.getParameter("joindate");
String gender = request.getParameter("gender");
String tel = request.getParameter("tel");

try{
sql = "insert into member_tbl_0830 values(?,?,?,?,?,?)";

ps=con.prepareStatement(sql);
ps.setString(1, memno);
ps.setString(2, mname);
ps.setString(3, maddress);
ps.setString(4, joindate);
ps.setString(5, gender);
ps.setString(6, tel);

ps.executeUpdate();
%>
<script>
alert("정보가 등록되었습니다.");
location='회원목록_트레이너신청.jsp';
</script>
<%}catch(Exception e){
	e.printStackTrace();%>
<script>
alert("정보가 제대로 등록되지 않았습니다.");
history.back();
</script>
<%} %>
</body>
</html>