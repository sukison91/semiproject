<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo");%>
    <%List<BbsDto> bbsList = (List<BbsDto>)request.getSession().getAttribute("bbsList");%>
    <%String cat = request.getParameter("cat");%>
   	<%System.out.println(dto);%>
   	<%System.out.println(bbsList);%>
   	<%System.out.println(cat);%>
   	
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

		<!-- Black Space -->
		<div class="blackSpace">
			<h1>Welcome to TBD!</h1>
		</div>

		<!-- Main Body Container -->

		<div class="mainBody">
			<!-- Search Bar and Category Link -->
			<div class="searchNCat">
				<div class="search">
					<h3><a href="search.do">Search</a> <i class="fas fa-search"></i></h3>
				</div>
				<div class="cat">
					<ul>
						<li><a href="bbsall.do">전체</a></li>
						<li><a href="bbs.do?cat=1">Cat 1</a></li>
						<li><a href="bbs.do?cat=2">Cat 2</a></li>
						<li><a href="bbs.do?cat=3">Cat 3</a></li>
						<li><a href="bbs.do?cat=4">Cat 4</a></li>
					</ul>
				</div>
			</div>
			<!-- Show All Board Posts and Category Boards -->
			<div class="showBoards">
				<!-- recent post -->
				<div class="recentPosts">
				

					<% if(cat == null){ %>
					 <h3>전체게시판</h3>
							
					 <%} else { %>
						 <h3>Cat <%=cat%></h3>
						 <h3><a href="bbswrite.do">글쓰기</a></h3>
					 <%}%> 

					
				<!-- 글 정렬 -->
				<div>
					<select id="category" onchange="func()">
						<option value="recently">최신순</option>
						<option value="old">오래된순</option>
						<option value="readcount">조회순</option>
						<option value="blike">공감순</option>
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
								if(bbs.getDel() != 1) {
							%>
							<li>

								<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
									<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle() %></span>
									<span><i class="fas fa-eye"></i> <%=bbs.getReadcount() %></span>

								</a>
							</li>
								<% } 
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
			//alert('func');
			$.ajax({
				type : "get",
				url : "bbssort.do",
				data : {category :$("#category").val()},
				success : function(bbsList){
					console.log(bbsList)
					//alert(bbsList[0].id)
					//$("#rpul").html("<li>" + bbsList[for(i=0; i<bbsList; i++){}].id + "</li>");
					
					//alert(bbsList);
					//alert(JSON.stringify(bbsList));	// json -> string
					
					let str = "";
					
					for(i = 0;i < bbsList.length; i++){
						str += "<li>" + "목록" + bbsList[i].cat +" &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+"제목 : "+ bbsList[i].title + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+ "조회수 : "+ bbsList[i].readcount + "</li>"; //위의 기본 배열을 초기화(?)한 후 새로 지정한 for문으로 재배열
						//str += "<li>" + bbsList[i].cat + "</li>";	//리스트 형식이라서 원하는 값들은 아래로 정렬된다.
						//str += "<li>" + bbsList[i].title + "</li>";	
						
					}
					$("#rpul").html(str);//재배열한 for문을 여기서 출력시켜준다.
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
		

	</body>
</html>
