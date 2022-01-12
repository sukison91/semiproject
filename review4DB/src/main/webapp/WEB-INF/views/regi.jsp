<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<MemberDto> list = (List<MemberDto>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<form id="frm" action="regiAf.do" method="post">
<div>
	<table>
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" name="id" id="id" size="20">&nbsp;
			<input type="button" id="btn" value="확인"><br>
			<p id="idcheck" style="font-size: 8px"></p>		
		</td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td>
			<input type="password" name="pwd" id="pwd" size="20">&nbsp;
			<input type="button" id="btn" value="확인"><br>
			<p id="pwdcheck" style="font-size: 8px"></p>
		</td>
	</tr>
	
	<tr>
		<th>닉네임</th>
		<td>
			<input type = "aka" name = "aka" id = "aka" size = "25">&nbsp;
			<input type = "button" id="btn" value = "확인"><br>
			<p id="akacheck" style="font-size: 8px"></p>
		</td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td><input type = "text"></td>
	</tr>
	
	<tr>
		<th>질문</th>
		<td>
			<input type="radio" name="question" value = "place">당신이 좋아하는 장소는?<br>
			<input type="radio" name="question" value = "that">당신이 존경하는 대상은?<br>
			<input type="radio" name="question" value = "movie">당신의 인상깊게 봤던 영화는?<br>
			<input type="radio" name="question" value = "secret">당신의 비밀은?<br>
			<input type="radio" name="question" value = "season">당신의 좋아하는 계절은?<br>
		</td>
	</tr>
	<tr>
		<td><input type = "text" placeholder ="답을 입력하세요"></td>
		<!-- 나중에 js으로 equals 사용해서 정답 도출할 수 있게 설정해야할듯 -->
	</tr>
		
	<tr>
		<td colspan="2">
			<button type="button" onclick="login()">로그인</button>
			<a href="regi.do">회원가입</a>
			<a href="login.do">취소</a>
		</td>
	</tr>
	
	</table>
</div>
</form>



</body>
</html>