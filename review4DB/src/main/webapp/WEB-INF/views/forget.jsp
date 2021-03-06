<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ball.css">
<link href="${pageContext.request.contextPath}/resources/css/forget.css" rel="stylesheet" type="text/css"/>
</head>
<body class="background">
    
    
    <div class="position-absolute top-50 start-50 translate-middle border border-secondary divwidth rounded divbackground divsize flex flexcl textcenter">
        <label for="exampleDropdownFormEmail1" class="form-label bigtext">아이디/비밀번호 찾기</label>
        <div class="flex center">
            <button type="button" onclick="location.href='forgetid.do'" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="Top popover" 
            class="btn btn-secondary buttoncolor btnsize smalltext buttonmargin">아이디찾기</button>
            <button type="button" onclick="location.href='forgetpwd.do'" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="Top popover" 
            class="btn btn-secondary buttoncolor btnsize smalltext buttonmargin">비밀번호찾기</button>
        </div>
    </div>

</body>
<script src="${pageContext.request.contextPath}/resources/js/ball.js"></script>
</html>