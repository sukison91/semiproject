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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/hello.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/ball.css" rel="stylesheet" type="text/css"/>



</head>
<body class="background">

	<h1 class="h1style"><span class="h-text">H</span>obby <span class="f-text">F</span>low</h1>
	
	
	<div class="position-absolute top-50 start-50 translate-middle border border-secondary divwidth rounded divbackground">
		<form id="frm" action="loginAf.do" method="post" class="px-4 py-3">
		  <div class="mb-3">
			<label for="exampleDropdownFormEmail1" class="form-label">아이디</label>
			<input type="email" class="form-control" id="id" name="id" placeholder="ID">
		  </div>
		  <div class="mb-3">
			<label for="exampleDropdownFormPassword1" class="form-label">비밀번호</label>
			<input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password">
		  </div>
		  <div class="mb-3">
			<div class="form-check">
			  <input type="checkbox" class="form-check-input" id="chk_save_id">
			  <label class="form-check-label" for="dropdownCheck">
				아이디 저장
			  </label>
			</div>
		  </div>
		  <button type="button" onclick="login()" class="btn buttoncolor">로그인</button>
		</form>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="goregi.do">회원가입</a>
		<a class="dropdown-item" href="forget.do">아이디,비밀번호 찾기</a>
	  </div>
	
	
	
	
	</table>
	</form>
	</div>
<script src="${pageContext.request.contextPath}/resources/js/ball.js"></script>
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