<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo");%>
    <%List<BbsDto> bbsList = (List<BbsDto>)request.getSession().getAttribute("bbsList");%>
   	<%System.out.println(dto);%>
   	<%System.out.println(bbsList);%>
   	
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Document</title>
		<link rel="stylesheet" href="resources/css/main.css"/>
		<script defer src=""></script>
		<script
			src="https://kit.fontawesome.com/e95584c635.js"
			crossorigin="anonymous"
		></script>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	</head>
	<body>
		<!-- NavBar -->
		<navbar class="navContainer">
			<div class="navInner">
				<div class="navLeft">
					<a href="#"><img src="resources/img/logo.png" alt="logo" /></a>
					<ul>
						<li><a href="#">Home</a></li>
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
							<!-- MemberController의 profileAf.do로 이동 -->
							<a href="profileAf.do">Profile</a>
						</li>
						<li class="logout">
							<a href="logoutAf.do">Logout</a>
						</li>
					</ul>
				</div>
			</div>
		</navbar>

		<!-- Black Space -->
		<div class="blackSpace">
			<h1>Welcome to TBD!</h1>
		</div>

		<!-- Main Body Container -->

		<div class="mainBody">
			<!-- Search Bar and Category Link -->
			<div class="searchNCat">
				<div class="search">
					<h3><a href="#">Search</a> <i class="fas fa-search"></i></h3>
				</div>
				<div class="cat">
					<ul>
						<li><a href="#">Cat 1</a></li>
						<li><a href="#">Cat 2</a></li>
						<li><a href="#">Cat 3</a></li>
						<li><a href="#">Cat 4</a></li>
					</ul>
				</div>
			</div>
			<!-- Show All Board Posts and Category Boards -->
			<div class="showBoards">
				<!-- recent post -->
				<div class="recentPosts">
				
					<h3><a href="#">전체 게시판</a></h3>
					
				<!-- 글 정렬 -->
				<div>
					<select id="category" onchange="func()">
						<option value="recently">최신순</option>
						<option value="old">오래된순</option>
						<option value="readcount">조회순</option>
						<option>공감순</option>
					</select>
				</div>	
				
					<!-- recent post list -->
					<div class="rpList">
						<ul id="rpul">
							<% if(bbsList == null || bbsList.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < bbsList.size(); i++){
								BbsDto bbs = bbsList.get(i);
							%>
							<li>
								<a href="#">
									<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle()%></span
									><span><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
								</a>
							</li>
							<%
								}
							}
							%>
						</ul>
					</div>
				</div>	
			</div>
		</div>
		
		<script type="text/javascript">
		function func() {
			alert('func');
			$.ajax({
				type : "get",
				url : "bbssort.do",
				data : {category :$("#category").val()},
				success : function(bbsList){
					console.log(bbsList)
					alert(bbsList[0].id)
					$("#rpul").html("<li>" + bbsList[0].id + "</li>");
					
				/*	if(category == "recently"){
						$("#recently").reverse();//내림차순
					} */
				},
				error : function(){
					alert('error');
				}
			});
		};
		
		function test(){
			console.log($("#category").val());
		};
		/*
		function func() {
			alert('func');
			$.ajax({
				type : "post",
				url : "bbs.do",
				data : recently :$("#old").val(),
				dataType : "String",
				success : function(category){
					if(category == "old"){
						$("#old").sortBy();//오름차순
						alert('success');
					} 
				},
				error : function(){
					alert('error');
				}
			});
		};
		*/	
		</script>
		
		<!-- 게시글 정렬 
		<script type="text/javascript">
		
		function(recently){
			$.ajax({
				type : "post",
				url : "recently.do",
				data : wdate :$("#wdate").val(),
				success : function(data){
					//여기다가 조건 넣어야함
				},
				error : function(){
					alert('error');
				}
			});
		};
		
		function(old){
			$.ajax({
				type : "post",
				url : "old.do",
				data : wdate :$("#wdate").val(),
				success : function(data){
					//여기다가 조건 넣어야함
				},
				error : function(){
					alert('error');
				}
			});
		};
		
		function(readcount){
			$.ajax({
				type : "post",
				url : "readcount.do",
				data : readcount :$("#readcount").val(),
				success : function(data){
					//여기다가 조건 넣어야함
				},
				error : function(){
					alert('error');
				}
			});
		};
		
		function(blike){
			$.ajax({
				type : "post",
				url : "blike.do",
				data : blike :$("#blike").val(),
				success : function(data){
					//여기다가 조건 넣어야함
				},
				error : function(){
					alert('error');
				}
			});
		};
		
		 </script>-->
	</body>
</html>
