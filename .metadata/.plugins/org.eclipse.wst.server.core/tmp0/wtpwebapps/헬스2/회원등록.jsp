<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬스클럽관리 프로그램</title>
</head>
<script>
function fn_go() {
	if(f.mname.value==""){
		alert("회원이름을 입력해주세요");
		return f.mname.focus();
	}
	if(f.maddress.value==""){
		alert("회원주소를 입력해주세요");
		return f.maddress.focus();
	}
	if(!(f.gender[0].checked)&&!(f.gender[1].checked)){
		alert("성별을 선택해주세요");
		return false;
	}
	if(f.tel.value==""){
		alert("전화번호를 입력해주세요");
		return f.tel.focus();
	}
	f.submit();
}
function fn_reset() {
	alert("정보를 지우고 다시 입력합니다.");
	f.reset();
}
</script>
<body>
<%@ include file = "header.jsp" %>
<section>
<div>
<h1>헬스클럽관리 프로그램</h1>
</div><br><br>

<form action="회원등록pro.jsp" method="post" name="f">
<table border="1" style="margin: auto;">
<tr>
	<th style="text-align: center;"> 회원번호
	<% sql = "select max(memno)+1 from member_tbl_0830";
	
		ps= con.prepareStatement(sql);
		rs=ps.executeQuery();
		rs.next();
	%>
	<td><input type="text" name="memno" value="<%=rs.getString(1)%>">(자동생성)
</tr>
<tr>
	<th style="text-align: center;">회원이름
	<td><input type="text" name="mname">
</tr>
<tr>
	<th style="text-align: center;">회원주소
	<td><input type="text" name="maddress">
</tr>
<tr>
	<th style="text-align: center;">등록일
	<% sql = "select to_char(sysdate,'yy-mm-dd') from dual";
	
	ps= con.prepareStatement(sql);
	rs=ps.executeQuery();
	rs.next();
	%>
	<td><input type="text" name="joindate" value="<%=rs.getString(1)%>">
</tr>
<tr>
	<th style="text-align: center;">회원성별
	<td><input type="radio" name="gender" value="M">남자
	<input type="radio" name="gender" value="F">여자
</tr>
<tr>
	<th style="text-align: center;">전화번호
	<td><input type="text" name="tel">예)010-0000-0000
</tr>
<tr>
	<td colspan="2" style="text-align: center;"><input type="submit" value="회원등록" onclick="fn_go(); return false;">
	<input type="reset" value="다시쓰기" onclick="fn_reset(); return false;">
</tr>
</table>
</form>
</section>
<%@ include file = "footer.jsp" %>
</body>
</html>