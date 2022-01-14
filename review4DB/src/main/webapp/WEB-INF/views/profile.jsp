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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<form action="profile.do" method="post">
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
		<p id="akacheck" style="font-size: 8px"></p>
	</td>
</tr>
<tr>
	<td colspan="2">
		<button type="submit">수정완료</button>
	</td>
</tr>
</table>
</form>
</div>

</div>

<script type="text/javascript">
let akainfo = 0;
function akacheck(){
	$.ajax({
		url:"akacheck.do",
		type:"post",
		data:{ aka:$("#aka").val() },
		success:function( msg ){
			
			if(msg == "YES"){
				$("#akacheck").css("color", "#0000ff");
				$("#akacheck").html("사용할 수 있는 닉네임입니다");
				akainfo = 1;
			}else{
				$("#akacheck").css("color", "#ff0000");
				$("#akacheck").html("사용 중인 닉네임입니다");
				$("#aka").val("");
				akainfo = 0;
			}			
		},
		error:function(){
			alert('error');
		}
	});
};	
</script>



</body>
</html>