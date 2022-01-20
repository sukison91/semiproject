<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/bbswrite.css?after" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1 class="h1center">글쓰기</h1>
    <form id="form" action="bbswriteAF.do" class="position-absolute top-50 start-50 translate-middle divwidht">
 <input style="display:none" name="id" value="<%=dto.getId() %>">
          <div class="mb-3 divmargin shadow p-3 mb-5 bg-body rounded">
            <input type="text" name="title" id="title" class="form-control " placeholder="제목쓰기">
            <label for="disabledTextInput" class="form-label">max.80</label>
          </div>
          <div class="mb-3 divmargin">
            <select id="cat" name="cat" class="form-select shadow p-3 mb-5 bg-body rounded">
              <option selected value="0">카테고리 고르기</option>
              <option value="1">카테고리 1</option>
              <option value="2">카테고리 2</option>
              <option value="3">카테고리 3</option>
              <option value="4">카테고리 4</option>
            </select>
          </div>
          <div class="form-floating divmargin">
            <textarea class="form-control shadow p-3 mb-5 bg-body rounded" placeholder="Leave a comment here" name="content" id="content" style="height: 200px"></textarea>
            <label for="floatingTextarea2">Comments</label>
          </div>
          <button type="button" id="sub" class="btn btn-primary divwidht">등록</button>
        
      </form>

</body>
<script>
	$('#sub').on("click", function() {
		console.log('fff');
		 		let title = $("#title").val();
				let content = $("#content").val();
				console.log(title,content);
				if(title == null || title == '' || title.length > 80 || content == null || content == '' || $("#cat").val() == 0){
					alert('내용을 입력해 주세요');
				}
				else{
					 $("#form").submit(); 
				} 
	} );
</script>
</html>