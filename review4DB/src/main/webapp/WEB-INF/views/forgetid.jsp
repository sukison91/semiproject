<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="${pageContext.request.contextPath}/resources/css/forgetid.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/ball.css" rel="stylesheet" type="text/css"/>
    <style>.zindex{z-index:10;}</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body class="background">
    
        <div class="position-absolute top-50 start-50 translate-middle divbackground rounded-3 zindex">
            <form action="frogetidAF.do" class="px-4 py-3">
              <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">이메일을 적어주세요</label>
                    <div class="flex">
                        <input id="email" name="email" type="email" class="form-control" id="email" name="email" placeholder="email@example.com">
                        <button type="button" onclick="sub()" class="btn btn-primary space">확인</button>
                    </div>
              </div>
              <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">질문 확인</label>
                <input readonly="readonly" type="text" class="form-control" id="qst" name="qst" placeholder="질문">
                <div class="flex">
                    <input id="asw" name="asw" type="text" class="form-control" id="asw" name="asw" placeholder="답변">
                    <button onclick="subtwo()" type="button" class="btn btn-primary space">확인</button>
                </div>    
              </div>
            <button id="cen" name="cen" onclick="location.href='hello.do'" type="button" class="btn btn-primary">돌아가기</button>
            </form>
            <div class="dropdown-divider"></div>
            <p id="showid" name="showid" class="dropdown-item"></p>
          </div>
            
        </div>
    </body>
    <script src="${pageContext.request.contextPath}/resources/js/ball.js"></script>
    <script type="text/javascript">
    function sub(){
 		$.ajax({
			url:"forgetemailCheck.do",
			type:"post",
			data:{ email:$("#email").val() },
			success:function( req ){
				if(req == "NO"){
					alert('없는 이메일 입니다');
				}
				else{
					$("#qst").val( req );
				}
			}
 		})
	};
    function subtwo() {
    	$.ajax({
			url:"forgetaswCheck.do",
			type:"post",
			data:{ asw:$("#asw").val(),
				   email:$("#email").val()		},
			success:function( req ){
				if(req == "NO"){
					alert('없는 이메일 이거나 답변이 올바르지 않습니다.');
				}
				else{
					$("#showid").css("font-size", "10pt");
					$("#showid").html("아이디는 : [" + req + "] 입니다.");
				}
			}
    	})
	};
    </script>
    </html>