<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
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
						<li><a href="main.do">Home</a></li>
						<li><a href="#">Announcement</a></li>
						<li><a href="#">About Us</a></li>
					</ul>
				</div>
				<div class="navCenter"></div>
				<div class="navRight">
					<img src="resources/img/logo.png" alt="logo" />
					<p>
						Welcome <br />
						<b><%=dto.getAka()%></b>!
					</p>
					<ul>
						<!-- 회원정보 수정 -->
						<li class="profile">
							<!-- MemberController의 profileAf.do로 이동 -->
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
			<h1>Welcome to Hobby Flow!</h1>
		</div>

		<!-- Main Body Container -->

		<div class="mainBody">
			<!-- Search Bar and Category Link -->
			<div class="searchNCat">
				<div class="search">
					<h3>
						<a href="search.do">Search</a> <i class="fas fa-search"></i>
					</h3>
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
			<!-- search -->
			<div class="showBoards">
				<div class="searchJsp">
					<input type="text" name="searchBar" id="searchBar" placeholder="데이터베이스에서 제목을 검색합니다">
					<button type="button" class="catBtn btnJsp" onclick="searchResults()">검색</button>
					<div class="showResults">
						<p style="display:none" class="noSearchResults"></p>
						<div style="display:none" class="searchResults rpList">
						
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
		let count; 
		let searchValue; 
		let hiddenP = document.querySelector(".noSearchResults"); 
		let hiddenSR = document.querySelector(".searchResults"); 
		console.log(searchValue);
		
		function searchResults(){
		
			searchValue = document.querySelector("#searchBar").value.toLowerCase(); 
			console.log(searchValue);
			// Search Results -> ajax
	 		$.ajax({
				url:"searchResult.do",
				type:"get",
				data:{searchValue:$("#searchBar").val().toLowerCase()},
				success:function(bbsDto){
				
					if(bbsDto != null && bbsDto.length != 0){
						console.log(bbsDto); 				
						count = 1; 
						displayResults(count, bbsDto); 
						
					}else{
						count = 0; 
						displayResults(count);
					}			
				},
				error:function(){
					alert('error');
					console.log(bbsDto);
				}
			});
		};	
		
		
		function displayResults(count, bbsDto){
			hiddenSR.innerHTML = "";
			hiddenP.innerHTML = "";
			if(count == 1) {
				hiddenSR.style.display ="block"; 
				
				for (let i = 0; i < bbsDto.length; i++) {
					let resultP = document.createElement("ul"); 
					let catName = "";
					
					if(bbsDto[i].cat == 1) {
						catName = "#sports"; 
					} else if(bbsDto[i].cat == 2){
						catName = "#politics"; 
					} else if(bbsDto[i].cat == 3) {
						catName = "#hobby"; 
					} else {
						catName = "#coding";
					}
				
					resultP.innerHTML = "<li><button class='catBtn'><a href='bbs.do?cat="
						+bbsDto[i].cat+
						"'>"
						+catName+"</a></button><span id='spanOne'><a href='bbsdetail.do?ref="
							+bbsDto[i].ref+
							"'>"
						+bbsDto[i].title+
						"</span><span id='spanTwo'><i class='fas fa-eye'></i>"
						+ bbsDto[i].readcount + "</span></li>";
					hiddenSR.appendChild(resultP); 
				}
				
			} else {
				hiddenP.style.display = "block"; 
				hiddenP.innerHTML = "<p>" + searchValue + " -> 찾을 수 없었습니다</p>"
			}
		}
		</script>
	</body>
</html> 

