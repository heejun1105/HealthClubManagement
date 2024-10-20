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
String tno = request.getParameter("tno");
String memno = request.getParameter("memno");
String mname = request.getParameter("mname");
String ttime = request.getParameter("ttime");



sql = "update apptrainer_tbl_0830 set ttime=? where tno=? ";

ps=con.prepareStatement(sql);

ps.setString(1, ttime);
ps.setString(2, tno);

int count = ps.executeUpdate();

if(count>0){
	
%>

<script>
alert("정보가 등록되었습니다.");
/* location='회원목록_트레이너신청.jsp'; */
</script>
<%=count %>

<%}else {%>

<%=count %>

<script>
alert("정보가 제대로 등록되지 않았습니다.");
/* history.back(); */
</script>
<%} %>
</body>
</html>