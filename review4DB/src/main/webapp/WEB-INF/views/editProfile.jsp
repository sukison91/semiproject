<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- DB로부터 MemberDto 값을 전달받음 -->
	<%MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo"); %>
	<%System.out.println("프로필 " + dto); %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>회원정보 수정-Hobby Flow</title>
		<link rel="stylesheet" href="resources/css/main.css"/>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://kit.fontawesome.com/0032d948de.js" crossorigin="anonymous"></script>
	</head>
	<body>
	<!-- NavBar -->
		<navbar class="navContainer">
			<div class="navInner">
				<div class="navLeft">
					<a href="#"><img src="resources/img/logo.png" alt="logo" /></a>
					<ul>
						<li><a href="main.do">Home</a></li>
						<li><a href="#">Announcement</a></li>
						<li><a href="#">About Us</a></li>
					</ul>
				</div>
				<div class="navCenter"></div>
				<div class="navRight">
					<img src="resources/img/logo.png" alt="logo" />
					<p>
						Hi <br />
						<%=dto.getAka()%>!
					</p>
					<ul>
						<!-- 회원정보 수정 -->
						<li class="profile">
							<!-- HelloController의 profile.do로 이동 -->
							<a href="profile.do">Profile</a>
						</li>
						<li class="logout">
							<a href="logoutAf.do">Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</navbar>

	
<h2>회원정보 수정</h2>
<br>

<form id="frm" action="profileAf.do" method="post">
	<table border="1">
		<tr>
			<th>아이디 </th>
			<td><input type="text" name="id" readonly="readonly" value="<%=dto.getId() %>"></td>
		</tr>
		<tr>
			<th>패스워드 </th>
			<td>
				<input type="password" id="pwd" name="pwd" placeholder="패스워드를 입력하세요.">
				<p id="pwdcheck" style="font-size: 8px"></p>
			</td>	
		</tr>

		<tr>
			<th>닉네임 </th>
			<td>
				<input type="text" id="aka" name="aka"  placeholder="닉네임을 입력하세요.">
				<button type="button" onclick="akacheck()">중복확인</button>
				<p id="akacheck" style="font-size: 8px"></p>
			</td>
		</tr>
		<tr>
			<th>이름 </th>
			<td><input type="text" id="name" name="name" placeholder="이름을 입력하세요."></td>
		</tr>
		<tr>
			<th>이메일 </th>
			<td>
				<input type="text" id="email" name="email" placeholder="이메일을 입력하세요.">
				<button type="button" onclick="emailcheck()">중복확인</button>
				<p id="emailcheck" style="font-size: 8px"></p>
			</td>
			
		</tr>
		<tr>
			<th>비밀번호 찾기 질문</th>
			<td>
				<select name="qst" id="qst">
					<option selected value="0">질문을 선택하세요.</option>
					<option value="1">당신이 좋아하는 장소는?</option>
					<option value="2">당신이 존경하는 것은?</option>
					<option value="3">당신의 인상깊게 봤던 영화는?</option>
					<option value="4">당신의 비밀은?</option>
					<option value="5">당신의 좋아하는계절은?</option>
			  	</select>
		  	</td>
		</tr>
		<tr>
			<th>비밀번호 찾기 대답</th>
			<td>
				<input type="text" name="asw" id="asw" placeholder="답변">
			</td>
		</tr>
		<tr>
			<th>프로필 사진</th>
			<td>
				<img src="resources\img\default.png" width=150px height=150px>
				<input style="display:none" name="img" value="default.png">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button" onclick="profileUpdate()">수정완료</button>
				<button type="button" onclick="location.href='profile.do'">수정취소</button>
			</td>
		</tr>
	</table>
</form>	


<script type="text/javascript">
let pwdinfo = 0;
let akainfo = 0;
let emailinfo = 0;
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

function profileUpdate() {
	if($("#pwd").val() == ''){
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
		akacheck();
		emailcheck();
		checkPassword();
		if( pwdinfo == 0 || akainfo == 0 || emailinfo == 0){
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
</html>