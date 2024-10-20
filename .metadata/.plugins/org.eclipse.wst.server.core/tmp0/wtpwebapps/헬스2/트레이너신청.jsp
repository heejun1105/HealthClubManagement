<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬스클럽관리 프로그램</title>
</head>

<script>
function fn_go() {
	if(f.tno.value=="00"){
		alert("트레이너를 선택해주세요");
		return f.tno.focus();
	}
	if(f.ttime.value=="00"){
		alert("시간을 선택해주세요");
		return f.ttime.focus();
	}

	f.submit();
	
}

</script>


<body>
<%@ include file = "header.jsp" %>
<section>
<div>
<h1>트레이너신청</h1>
</div><br><br>

<form action="트레이너신청pro.jsp" method="post" name="f">
<table border="1" style="margin: auto;">
<tr>
	<th style="text-align: center;"> 회원번호
	<% String mname = request.getParameter("mname");
	
	   sql = "select memno, mname from member_tbl_0830 where mname=?";
	
		ps= con.prepareStatement(sql);
		ps.setString(1, mname);
		rs=ps.executeQuery();
		rs.next();
	%>
	<td><input type="text" name="memno" value="<%=rs.getString(1)%>">(자동생성)
</tr>
<tr>
	<th style="text-align: center;">회원이름
	<td><input type="text" name="mname" value="<%=rs.getString(2)%>">(자동생성)
</tr>
<tr>
	<th style="text-align: center;">트레이너
	<td><select name="tno">
	<option value="00">--선택해주세요--
	<option value="01">김헬스 09:00~12:00
	<option value="02">이헬스 12:00~15:00
	<option value="03">박헬스 15:00~18:00
	<option value="04">최헬스 18:00~21:00
	</select>
</tr>
<tr>
	<th style="text-align: center;">선택시간
	<td><select name="ttime">
	<option value="00">--선택해주세요--
	<option value="09:00~12:00">09:00~12:00
	<option value="12:00~15:00">12:00~15:00
	<option value="15:00~18:00">15:00~18:00
	<option value="18:00~21:00">18:00~21:00
	</select>
</tr>
<tr>
	<td colspan="2" style="text-align: center;"><input type="submit" value="신청" onclick="fn_go(); return false;">
	<input type="button" value="조회" onclick="location='회원목록_트레이너신청.jsp'">
</tr>

</table>
</form>

</section>
<%@ include file = "footer.jsp" %>
</body>
</html>