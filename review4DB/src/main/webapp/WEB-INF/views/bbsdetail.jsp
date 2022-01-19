<%@page import="java.util.List"%>
<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% List<BbsDto> dto = (List<BbsDto>)request.getAttribute("detail"); %>
    <% MemberDto mem = (MemberDto)request.getSession().getAttribute("logininfo"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
<link href="${pageContext.request.contextPath}/resources/css/bbswrite.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<% for(int i = 0;i < dto.size();i++){
	BbsDto bbs = dto.get(i);
	int step = bbs.getStep();
	if(step == 0){%> <!-- bbs=ref와 매칭되는 모든 글, step은 행 값이다 부모가되는 글은 step이 0이다 -->
	
<!-- ==================== comment 자바스크립트용 ==================== -->
<form style="display:none">
<input type="text" id="seq" value="<%=bbs.getSeq()%>">
<input type="text" id="id" value="<%=mem.getId()%>">
<input type="text" id="ref" value="<%=bbs.getRef()%>">
</form>
<form id="commentsub" action="commentAF.do" style="display:none"><input name="ref" value="<%=bbs.getRef() %>"></form>
<!-- =============================================================== -->	    
	      
	              
<form class="formwidth">
    <!-- ===========================================게시물======================================================= -->	
<div class="mb-3 divmargin shadow p-3 mb-5 bg-body rounded">
	<div class="flex">
		<div class="textline border border-3 fas fa-thumbs-up rounded-3"><i class=""></i> <span>추천</span></div>
		<div>   
			<label for="disabledTextInput" class="form-label">[<%=bbs.getCat() %>]</label> <!-- cat -->
			<label for="disabledTextInput" class="form-label"><%=bbs.getTitle() %></label> <br> <!-- title -->
			<label for="disabledTextInput" class="form-label"><%=bbs.getId() %></label><!-- aka -->&nbsp;&nbsp;&middot;&nbsp;&nbsp;
			<label for="disabledTextInput" class="form-label">-<%=bbs.getWdate() %>-</label><!-- date -->
		</div>
	</div><br><br>
	<div class="content">
		<p class="pwidth"><%=bbs.getContent() %></p><!-- content -->
	</div> 
</div>
     <!-- ============================================버튼======================================================= -->
<button type="button" id="backhome" class="btn btn-primary">돌아가기</button>
	<% if(mem.getId().equals(bbs.getId())){ %> <!-- 접속한 id와 게시물 아이디와 일치하면 글수정,글삭제가 보임 -->
<button type="button" id="updatebbs" class="btn btn-primary">글수정</button> <!-- id값 참고 -->
<button type="button" id="deletebbs" class="btn btn-primary">글삭제</button> <!-- id값 참고 -->
	<%} %>
<%}}%> <!-- for문 끝 -->


<!-- 글수정 -->
<div class="form-floating divmargin" id="updateDiv" style="display:none">
    <!-- 댓글작성란 -->
    <label for="updateLabel" id = "updateLabel"></label>
	<textarea class="form-control shadow p-3 mb-5 bg-body rounded" placeholder="글을 수정해주세요" id="newContent" style="height: 100px"></textarea>
	<button type="button" id="updateBtn" class="btn btn-primary">수정 완료</button>
</div>
<!-- 글수정 -->

<!-- ============================================댓글작성======================================================= -->  
<div class="mb-3 divmargin">comment write</div>
<div class="form-floating divmargin">
    <!-- 댓글작성란 -->
	<textarea class="form-control shadow p-3 mb-5 bg-body rounded" placeholder="Leave a comment here" id="content" style="height: 100px"></textarea>
	<label for="floatingTextarea2">Comments</label>
</div>
          
<!-- 댓글작성완료 -->
<button type="button" id="commentbutton" class="btn btn-primary">등록</button>

<!-- ============================================댓글======================================================= -->
<!--댓글 view-->
<form class="">
<% for(int i = 0;i < dto.size();i++){
       BbsDto bbs = dto.get(i);
       int step = bbs.getStep();
       
       if(step > 0){%> <!-- bbs=ref와 매칭되는 모든 글, step은 행 값이다 부모가되는 글은 step이 0이다 -> 댓글은 무조건 1 이상이다 -->
<div class="mb-3 divmargin shadow p-3 mb-5 bg-body rounded">
	<div class="flex">
		<div class="textline border border-3 fas fa-thumbs-up rounded-3"><i class=""></i> <span>추천</span></div>
		<div>
			<label for="disabledTextInput" class="form-label">by <%=bbs.getId() %></label>&nbsp;&nbsp;&middot;&nbsp;&nbsp;
			<label for="disabledTextInput" class="form-label"><%=bbs.getWdate() %></label>
        </div>
    </div><br>
    <div class="content">
		<p class="pwidth"><%=bbs.getContent() %></p>
    </div>
</div>
<%}} %>
</form>
</form>
      <!-- ========================================================================================================= -->
<form style="display: none" action="main.do" id="home"></form> <!-- 돌아가기 버튼 전용  -->
</body>
<script type="text/javascript">

let initUpdateBbs = document.querySelector("#updatebbs"); 
let updateDiv = document.querySelector("#updateDiv"); 

initUpdateBbs.addEventListener("click", function() {
  	updateDiv.style.display = "block"; 
});


$('#updateBtn').on("click", function() {
	$.ajax({
		url:"updateBbs.do",
		type:"get",
		data:{newContent:$("#newContent").val(),
			  sequence:$("#seq").val()
			  }, //수정글 value
		success:function( msg ){
			if(msg == "YES"){
				console.log("Success!");
				console.log(msg);
				updateDiv.style.display = "none";
				location.reload();
			} else {
				alert("에러가 있었습니다!")
				updateDiv.style.display = "none";
			}
		}
	})
});

$('#commentbutton').on("click", function() {
		$.ajax({
			url:"comment.do",
			type:"post",
			data:{ content:$("#content").val(),	//댓글 작성란 value
				   ref:$("#ref").val(),			//현재 게시글 ref value
				   id:$("#id").val(),			//댓글 작성자 value
				   seq:$("#seq").val() },		//현재 게시글 seq value
			success:function( msg ){
				if(msg == "YES"){
					$("#commentsub").submit();
				}
			}
		})
	});
$('#backhome').on("click", function() {	// main으로 가는 func
	$("#home").submit();
});
$('#deletebbs').on("click", function() {
	location.href = "deletebbs.do?seq=" + $("#seq").val();
});
</script>
</html>