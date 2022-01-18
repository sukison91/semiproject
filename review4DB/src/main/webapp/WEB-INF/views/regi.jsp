<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/regi.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/ball.css" rel="stylesheet" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>

<body class="background">
<!-- 최신상태 -->
    <div class="position-absolute top-50 start-50 translate-middle divbackground rounded-3 divwidth zindex">
        <form id="frm" action="regiAf.do" method="post" class="px-4 py-3">
          <div class="mb-3 flex flexcl divheight">
			<div class="flex">
            	<label for="exampleDropdownF ormEmail1" class="form-label magin height textright">ID</label>
				<div id="idcheck" class="magin height" style="font-size: 8px"></div>	
			</div>
				<div class="flex">
            		<input type="text" class="form-control magin height" name="id" id="id" placeholder="ID">
					<button type="button" onclick="idcheck()" class="btn buttoncolor magin whitespace btnwidth height">중복확인</button>
				</div>
          </div>
          <div class="mb-3 flex flexcl divheight">
			<div class="flex">
           		<label for="exampleDropdownF ormEmail1" class="form-label magin height textright">PWD</label>
				<div class="magin height" style="font-size: 8px">숫자와 영문자 조합으로 8~16자리를 사용해야 합니다.</div>	
			</div>
				<div class="flex">
            		<input type="password" class="form-control magin height" name="pwd" id="pwd" placeholder="Password">
				</div>	
          </div>

		  <div class="mb-3 flex flexcl divheight">
			<div class="flex">
            	<label for="exampleDropdownF ormEmail1" class="form-label magin height textright">Nickname</label>
				<div id="akacheck" class="magin height" style="font-size: 8px"></div>	
			</div>
				<div class="flex">
            		<input type="text" class="form-control magin height" name="aka" id="aka" placeholder="Nickname">
					<button type="button" onclick="akacheck()" class="btn buttoncolor magin whitespace btnwidth">중복확인</button>
				</div>	
          </div>

		  <div class="mb-3 flex flexcl divheight">
            <label for="exampleDropdownF ormEmail1" class="form-label magin height">Name</label>
				<div class="flex">
            		<input type="text" class="form-control magin height" name="name" id="name" placeholder="name">
				</div>
          </div>

		  <div class="mb-3 flex flexcl divheight">
			<div class="flex">
            	<label for="exampleDropdownF ormEmail1" class="form-label magin height textright">Email</label>
				<div id="emailcheck" class="magin height" style="font-size: 8px"></div>	
			</div>
				<div class="flex">
            		<input type="email" class="form-control magin height" name="email" id="email" placeholder="email">
					<button type="button" onclick="emailcheck()" class="btn buttoncolor magin whitespace btnwidth">중복확인</button>
				</div>
          </div>
		  
		  <div class="mb-3 flex flexcl">
			<label for="exampleDropdownF ormEmail1" class="form-label magin height">QST & ASW</label>
			  <select class="form-select form-select-sm magin height" name ="qst" id ="qst" aria-label=".form-select-sm example">
				<option selected value="0">질문을 선택하세요.</option>
				<option value="1">당신이 좋아하는 장소는?</option>
				<option value="2">당신이 존경하는 것은?</option>
				<option value="3">당신의 인상깊게 봤던 영화는?</option>
				<option value="4">당신의 비밀은?</option>
				<option value="5">당신의 좋아하는계절은?</option>
			  </select>
			  <input type="text" class="form-control magin height" name ="asw" id ="asw" placeholder="답변">
		  </div>

		
	

	<div class="center flex">
		<button type="button" onclick="login()" class="btn buttoncolor marginbig">가입</button>
		<button type="button" onclick="location.href='hello.do'" class="btn buttoncolor marginbig">취소</button>
	</div>
	
	</form>
	</div>
<script type="text/javascript">
	let idinfo = 0;
	let pwdinfo = 0;
	let akainfo = 0;
	let emailinfo = 0;
	let qstinfo = 0;
	let aswinfo = 0;
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
					idinfo = 1;
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").html("사용 중인 아이디입니다");
					$("#id").val("");
					idinfo = 0;
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

		function emailcheck(){
		$.ajax({
			url:"emailcheck.do",
			type:"post",
			data:{ email:$("#email").val() },
			success:function( msg ){
			
				if(msg == "YES"){
					$("#emailcheck").css("color", "#0000ff");
					$("#emailcheck").html("사용할 수 있는 이메일입니다");
					emailinfo = 1;
				}else{
					$("#emailcheck").css("color", "#ff0000");
					$("#emailcheck").html("사용 중인 이메일입니다");
					$("#email").val("");
					emailinfo = 0;
				}			
			},
			error:function(){
				alert('error');
			}
		});
	};	 

 function login() {

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
	else if($("#qst").val() < 1){
		alert('질문을 선택해 주십시오')
	}
	else if($("#asw").val() == ''){
		alert('답변을 작성해 주십시오')
	}
	else{
		idcheck();
		akacheck();
		emailcheck();
		checkPassword();
		if( idinfo == 0 || pwdinfo == 0 || akainfo == 0 || emailinfo == 0 || pwdinfo == 0 ){
			alert('중복 또는 잘못된 정보기입')
		}
		else{
			$("#frm").submit();
		}
	}
}
 
	function checkPassword(){
		let reg = "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";
		let pass = document.getElementById("pwd").value;
		console.log(pass);
		  if(!/^[a-zA-Z0-9]{8,16}$/.test(pass)){
		    alert('패스워드는 숫자와 영문자 조합으로 8~16자리를 사용해야 합니다.');
		    pwdinfo =0;
		  }
		  else{
		  let checkNum = pass.search(/[0-9]/g); // 숫자사용
		  let checkEng = pass.search(/[a-z]/ig); // 영문사용
			  
			  if(checkNum <0 || checkEng <0){
			    alert("패스워드는 숫자와 영문자를 조합하여야 합니다.");
			    pwdinfo =0;
			  }
			  else{
				pwdinfo =1;	  
			  }
		}
	}
</script>


</body>
<script src="${pageContext.request.contextPath}/resources/js/ball.js"></script>
</html>