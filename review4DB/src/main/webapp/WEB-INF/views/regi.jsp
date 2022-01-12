<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>
<body>

<h1>회원가입</h1>

<div>

<form id="frm" action="regiAf.do" method="post">
	<table>
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" name="id" id="id" size="20">&nbsp;
			<input type="button" onclick="idcheck()" value="중복확인"><br>
			<p id="idcheck" style="font-size: 8px"></p>		
		</td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td>
			<input type="password" name="pwd" id="pwd" size="20">&nbsp;
			<input type="button" onclick="pwdcheck()" value="확인"><br>
			<p id="pwdcheck" style="font-size: 8px"></p>
		</td>
	</tr>
	
	<tr>
		<th>닉네임</th>
		<td>
			<input type = "text" name = "aka" id = "aka" size = "25">&nbsp;
			<input type = "button" onclick="akacheck()" value = "확인"><br>
			<p id="akacheck" style="font-size: 8px"></p>
		</td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td><input type = "text" name = "name" id = "name"></td>
	</tr>
	
		<tr>
		<th>이메일</th>
		<td>
			<input type = "email" name = "email" id = "email" size = "25">&nbsp;
			<input type = "button" onclick="emailcheck()" value = "확인"><br>
			<p id="emailcheck" style="font-size: 8px"></p>
		</td>
	</tr>
	
	<tr>
		<th>질문</th>
		<td>
			<select>
				<option id="qst" name="qst" value = "place">당신이 좋아하는 장소는?</option>
				<option id="qst" name="qst" value = "that">당신이 존경하는 것은?</option>
				<option id="qst" name="qst" value = "movie">당신의 인상깊게 봤던 영화는?</option>
				<option id="qst" name="qst" value = "secret">당신의 비밀은?</option>
				<option id="qst" name="qst" value = "season">당신의 좋아하는 계절은?</option>
			</select>
			<!--  <input type="radio" id="qst" name="qst" value = "place">당신이 좋아하는 장소는?<br>
			<input type="radio" id="qst" name="qst" value = "that">당신이 존경하는 대상은?<br>
			<input type="radio" id="qst" name="qst" value = "movie">당신의 인상깊게 봤던 영화는?<br>
			<input type="radio" id="qst" name="qst" value = "secret">당신의 비밀은?<br>
			<input type="radio" id="qst" name="qst" value = "season">당신의 좋아하는 계절은?<br>-->
		</td>
	</tr>
	<tr>
		<th></th>
		<td><input type = "text" name = "asw" id = "asw" placeholder ="답을 입력하세요"></td>
		<!-- 나중에 js으로 equals 사용해서 정답 도출할 수 있게 설정해야할듯 -->
	</tr>
		
	<tr>
		<td colspan="2">
			<button type="button" onclick="login()">회원가입</button>
			<a href="hello.do">취소</a>
		</td>
	</tr>
	
	</table>
</form>
</div>

<script type="text/javascript">
	function idcheck(){
		// id 확인 -> ajax
 		$.ajax({
			url:"idcheck.do",
			type:"post",
			data:{ id:$("#id").val() },
			success:function( msg ){
			
				if(msg == "YES"){
					$("#idcheck").css("color", "#0000ff");
					$("#idcheck").html("사용할 수 있는 아이디입니다");
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").html("사용 중인 아이디입니다");
					$("#id").val("");
				}			
			},
			error:function(){
				alert('error');
			}
		});
	};	
 
		function akacheck(){
		$.ajax({
			url:"akacheck.do",
			type:"post",
			data:{ aka:$("#aka").val() },
			success:function( msg ){
			
				if(msg == "YES"){
					$("#akacheck").css("color", "#0000ff");
					$("#akacheck").html("사용할 수 있는 닉네임입니다");
				}else{
					$("#akacheck").css("color", "#ff0000");
					$("#akacheck").html("사용 중인 닉네임입니다");
					$("#aka").val("");
				}			
			},
			error:function(){
				alert('error');
			}
		});
	};	

		function emailcheck(){
		$.ajax({
			url:"emailcheck.do",
			type:"post",
			data:{ email:$("#email").val() },
			success:function( msg ){
			
				if(msg == "YES"){
					$("#emailcheck").css("color", "#0000ff");
					$("#emailcheck").html("사용할 수 있는 이메일입니다");
				}else{
					$("#emailcheck").css("color", "#ff0000");
					$("#emailcheck").html("사용 중인 이메일입니다");
					$("#email").val("");
				}			
			},
			error:function(){
				alert('error');
			}
		});
	};	 

 function account() {

	if($("#id").val() == ''){
		alert('아이디를 입력해 주십시오');
	}
	else if($("#pwd").val() == ''){
		alert('패스워드를 입력해 주십시오'); // 비밀번호 조건 설정
	}
	else if($("#aka").val() == ''){
		alert('닉네임을 입력해 주십시오');
	}
	else if($("#name").val() == ''){
		alert('이름를 입력해 주십시오');
	}
	else if($("#email").val() == ''){
		alert('이메일을 입력해 주십시오');
	}
	else{
		$("#frm").submit();
	}
}

</script>


</body>
</html>