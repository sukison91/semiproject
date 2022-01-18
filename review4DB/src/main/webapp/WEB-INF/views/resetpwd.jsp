<%@page import="mul.camp.a.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% MemberDto dto = (MemberDto)request.getSession().getAttribute("forget"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/resetpwd.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/ball.css" rel="stylesheet" type="text/css"/>
<style>.zindex{z-index:10;}</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="background">

    <div class="position-absolute top-50 start-50 translate-middle divbackground rounded-3 zindex">
        <form id="a" action="resetpwdAF.do" class="px-4 py-3">
          <div class="mb-3">
          <input id="id" name="id" type="text" style="display: none;" value="<%=dto.getId()%>">
            <label for="exampleDropdownFormEmail1" class="form-label">새로운 비밀번호를 입력해 주세요</label>
                <div class="flex">
                    <input id="pwd" name="pwd" type="password" class="form-control" placeholder="password">
                </div>
                 <p>숫자와 영문자 조합으로 8~16자리</p>
          </div>
        <button id="cen" name="cen" onclick="resetpwd()" type="button" class="btn btn-primary">확인</button>
        </form>
    </div>
</body>
<script src="${pageContext.request.contextPath}/resources/js/ball.js"></script>
<script type="text/javascript">
let pwdinfo =0;
	function resetpwd() {
		checkPassword()
		if(pwdinfo == 1){
		alert('변경되었습니다 다시 로그인해주세요');
		$("#a").submit();
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
</html>