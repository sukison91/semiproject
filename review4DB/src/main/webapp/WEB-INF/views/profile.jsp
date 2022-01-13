<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- DB로부터 MemberDto 값을 전달받음 -->
<%
 MemberDto mem = (MemberDto)request.getSession().getAttribute("logininfo");
%>
<%System.out.println(mem); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
</head>
<body>

<h1>프로필 수정 화면</h1>

<p>회원정보 및 프로필 수정이 가능합니다.</p>
<hr>

<!-- 사용자 정보 출력 -->
<div>
사용자 정보
<table border="1">
<tr>
	<td rowspan="6">프로필 사진</td>
</tr>	
<tr>
	<!-- MemberDto의 aka를 출력 -->
	
	<td>Nickname<%=mem.getAka() %></td>
</tr>
<tr>
	<!-- MemberDto의 id를 출력 -->
	<td>ID<%=mem.getId() %></td>
</tr>
<tr>
	<!-- MemberDto의 email를 출력 -->
	<td>Email</td>
</tr>
<tr>	
	<!-- MemberDto의 exp를 출력 -->
	<td>경험치</td>
</tr>
<tr>
	<!-- MemberDto의 lv를 출력 -->
	<td>레벨</td>
</tr>
</table>
</div>

<br><br><br>

<!-- 프로필 수정 -->
<button>프로필 수정</button>
<!-- 개인정보 수정 -->
<button>개인정보 수정</button>

<br><br><br>





<!-- 프로필 사진 및 닉네임 수정 -->
<div>
<table border="1">
<tr>
	<th>Profile Picture</th>
	<td>
		
		<button type="button" onclick="changePic">사진 업로드</button>
		<button type="button" onclick="deletePic">삭제</button>
	</td>
</tr>

<tr>
	<th>Nickname</th>
	<td>
		<input type="text" id="akacheck" name="akacheck">
		<button type="button" onclick="akacheck()">중복확인</button> 
	</td>
</tr>
</table>
</div>

</body>
</html>