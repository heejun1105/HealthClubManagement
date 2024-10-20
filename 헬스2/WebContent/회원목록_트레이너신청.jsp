<%-- <%@page import="org.apache.catalina.util.URLEncoder"%> --%>
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
<h1>회원목록</h1>
</div><br><br>

<table border="1" style="margin: auto; text-align: center;">
<tr>
	<th>회원번호
	<th>회원이름
	<th>회원주소
	<th>등록일
	<th>성별
	<th>전화번호
</tr>

<% sql="select memno, mname, maddress,";
	sql+=" to_char(joindate,'yyyy.mm.dd.'),";
	sql+=" decode(gender,'M','남','F','여'),tel";
	sql+=" from member_tbl_0830";
	
	ps=con.prepareStatement(sql);
	rs=ps.executeQuery();
	while(rs.next()){
%>
<tr>
	<th><%=rs.getString(1)%>
	<th><a href="트레이너신청.jsp?mname=<%=URLEncoder.encode(rs.getString(2),"utf-8")%>"><%=rs.getString(2)%></a> 
	<th><%=rs.getString(3)%>
	<th><%=rs.getString(4)%>
	<th><%=rs.getString(5)%>
	<th><%=rs.getString(6)%>
</tr>
<%} %>
</table>

</section>
<%@ include file = "footer.jsp" %>
</body>
</html>