<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬스클럽관리 프로그램</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<section>
<div>
<h1>트레이너목록</h1>
</div><br><br>

<table border="1" style="margin: auto; text-align: center;">
<tr>
	<th>트레이너번호
	<th>트레이너이름
	<th>담당시간
	<th>담당회원수
</tr>

<% sql="select b.tno,b.tname,b.ttime,count(a.tno)";
	sql+=" from apptrainer_tbl_0830 a, trainer_tbl_0830 b";
	sql+=" where b.tno=a.tno";
	sql+=" group by b.tno,b.tname,b.ttime";
	sql+=" order by b.tno";
	
	ps=con.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
%>
<tr>
	<th><%=rs.getString(1)%>
	<th><%=rs.getString(2)%>
	<th><%=rs.getString(3)%>
	<th><%=rs.getString(4)%>
	
</tr>
<%} %>
</table>

</section>
<%@ include file = "footer.jsp" %>
</body>
</html>