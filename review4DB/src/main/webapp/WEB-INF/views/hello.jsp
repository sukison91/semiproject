<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 로그인</title>
<style>

h2 {
text-align: center;
}
</style>

<style type="text/css">
.center{
	margin: auto;
	width: 14%;
	border: 5px solid #131310;
	padding: 10px;	 
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

</head>
<body>

<h2>Team No.3 Sign-In</h2>

<div class="center">

<form id="frm" action="loginAf.do" method="post">

<table border="1">
<tr>
	<th>아이디</th>
	<td>
		<input type="text" id="id" name="id" size="20" placeholder="ID"><br>
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="password" name="pwd" id="pwd" size="20" placeholder="PWD">
	</td>
</tr>
<tr>
	<td colspan="2">
		<button type="button" onclick="login()">로그인</button>
		<input type="checkbox" id="chk_save_id">ID 저장
		<a href="">회원가입</a> 
	</td>
</tr>


</table>
</form>
</div>

<script type="text/javascript">
function login() {
	
	if($("#id").val().trim() == ""){
		
	}else if($("#pwd").val().trim() == ""){
		
	}else{ 
		alert('submit');
		$("#frm").submit();
	}
}

let user_id = $.cookie("user_id");	
									
if(user_id != null){	
	$("#id").val( user_id );
	$("#chk_save_id").prop("checked", true);
}

$("#chk_save_id").click(function () {

	if( $("#chk_save_id").is(":checked") ){	
		if($("#id").val().trim() == ""){
			$("#chk_save_id").prop("checked", false);
			$("#id").val("");
		}else{
			$.cookie("user_id", $("#id").val().trim(), { expires:7, path:'./' });
		}
	}
	else{
		$.removeCookie("user_id", { path:'./' });
	}

});
</script>
</body>
</html>