<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- DB로부터 MemberDto 값을 전달받음 -->
<%
 MemberDto mem = (MemberDto)request.getSession().getAttribute("logininfo");
%>
<%System.out.println(mem); %>

<!-- 프로필 이미지를 세팅.-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
</head>
<body>

<!-- 내용물을 중앙으로 맞춤 -->
<div align="center">

<h1>프로필 수정 화면</h1>

<p>회원정보 및 프로필 수정이 가능합니다.</p>
<hr>

<!-- 사용자 정보 출력 -->
<div>
<p>Hobby Flow 회원정보</p>
<table border="1">
<tr>
	<td rowspan="6">
		<img src="resources\img\default.png" width=150px height=150px>
	</td>
</tr>
<tr>
	<!-- MemberDto의 aka를 출력 -->
	<th>Nickname</th> 
	<td><%=mem.getAka() %></td>
</tr>
<tr>
	<!-- MemberDto의 id를 출력 -->
	<th>ID</th> 
	<td><%=mem.getId() %></td>
</tr>
<tr>
	<!-- MemberDto의 email를 출력 -->
	<th>Email</th>
	<td><%=mem.getEmail() %></td>
</tr>
<tr>	
	<!-- MemberDto의 exp를 출력 -->
	<th>경험치</th>
	<td><%=mem.getExp() %></td>
</tr>
<tr>
	<!-- MemberDto의 lv를 출력 -->
	<th>레벨</th>
	<td><%=mem.getLv() %></td>
</tr>
</table>
</div>
<hr>

<br><br><br>

<!-- 프로필 수정 -->
<div>
<form action="profileUpdate.do" method="post">
<table border="1">
<!-- (1).프로필 사진 수정 -->
<tr>
	<th>프로필 사진</th>
	<td>
		<img src="resources\img\default.png" width=150px height=150px>
		<button type="button" onclick="changePic()">사진변경</button>
		<button type="button" onclick="deletePic()">삭제</button>
	</td>

</tr>
<!-- (2).닉네임 수정 -->
<tr>
	<th>Nickname</th>
	<td>
		<input type="text" name="aka" id="aka" placeholder="<%=mem.getAka() %>">
		<button type="button" onclick="akacheck()">중복확인</button> 
	</td>
</tr>
</table>
</form>
</div>

</div>

<script type="text/javascript">

</script>



</body>
</html>