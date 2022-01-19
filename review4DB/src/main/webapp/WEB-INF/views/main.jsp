<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo");%>
    <%List<BbsDto> bbsList = (List<BbsDto>)request.getSession().getAttribute("bbsList");%>
    <%List<BbsDto> cat1 = (List<BbsDto>)request.getSession().getAttribute("cat1");%>
    <%List<BbsDto> cat2 = (List<BbsDto>)request.getSession().getAttribute("cat2");%>
    <%List<BbsDto> cat3 = (List<BbsDto>)request.getSession().getAttribute("cat3");%>
    <%List<BbsDto> cat4 = (List<BbsDto>)request.getSession().getAttribute("cat4");%>
   	<%System.out.println(dto);%>
   	<%System.out.println(bbsList);%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Document</title>
		<link rel="stylesheet" href="resources/css/main.css?after
		"/>
		<script defer src=""></script>
		<script
			src="https://kit.fontawesome.com/e95584c635.js"
			crossorigin="anonymous"
		></script>
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
			<h1>Welcome to Hobby Flow!</h1>
		</div>

		<!-- Main Body Container -->

		<div class="mainBody">
			<!-- Search Bar and Category Link -->
			<div class="searchNCat">
				<div class="search">
					<p><a href="search.do">Search</a> <i class="fas fa-search"></i></p>
				</div>
				<div class="cat">
					<ul>
						<li><a href="bbsall.do">전체계시판</a></li>
						<li><a href="bbs.do?cat=1"># Sports</a></li>
						<li><a href="bbs.do?cat=2"># Politics</a></li>
						<li><a href="bbs.do?cat=3"># Hobby</a></li>
						<li><a href="bbs.do?cat=4"># Coding</a></li>
					</ul>
				</div>
			</div>
			<!-- Show All Board Posts and Category Boards -->
			<div class="showBoards">
				<!-- recent post -->
				<div class="recentPosts">

					<h3>Hobby Flow의 최신글!</h3>
					<hr class ="headerLine">
					
					<!-- recent post list -->
					<div class="rpList">
						<ul>
							<% if(bbsList == null || bbsList.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < 5; i++){
								BbsDto bbs = bbsList.get(i);
								String catName = "";
								if(bbs.getCat() == 1) {
									catName = "#sports"; 
								} else if(bbs.getCat() == 2){
									catName = "#politics"; 
								} else if(bbs.getCat() == 3) {
									catName = "#hobby"; 
								} else {
									catName = "#coding";
								}
							%>
							<li>
								<button class="catBtn"><a href="bbs.do?cat=<%=bbs.getCat()%>"><%=catName%></a></button>
								<span id="spanOne"><a href="bbsdetail.do?ref=<%=bbs.getRef()%>"><%=bbs.getTitle()%></a></span>
								<span id="spanTwo"><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
							</li>
							<%
								}
							}
							%>
						</ul>
					</div>
					<!-- recent post list -->
				</div>
				<!-- recent post -->

				<div class="showCat">
					<div class="topLeft">
						<h3><a href="bbs.do?cat=1">#sports</a></h3>
						<hr class ="headerLineCat">
						<div class="cat1List">
							<ul>
								<% if(cat1 == null || cat1.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < 3; i++){
								BbsDto bbs = cat1.get(i);
								String catName = "";
								if(bbs.getCat() == 1) {
									catName = "#sports"; 
								} else if(bbs.getCat() == 2){
									catName = "#politics"; 
								} else if(bbs.getCat() == 3) {
									catName = "#hobby"; 
								} else {
									catName = "#coding";
								}
							%>
							<li>
								<button class="catBtn"><a href="bbs.do?cat=<%=bbs.getCat()%>"><%=catName%></a></button>
								<span id="spanOne"><a href="bbsdetail.do?ref=<%=bbs.getRef()%>"><%=bbs.getTitle()%></a></span>
								<span id="spanTwo"><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
							</li>
							<%
								}
							}
							%>
							</ul>
						</div>
					</div>
					<div class="topRight">
						<h3><a href="bbs.do?cat=2">#politics</a></h3>
						<hr class ="headerLineCat">
						<div class="cat2List">
							<ul>
								<% if(cat2 == null || cat2.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < 3; i++){
								BbsDto bbs = cat2.get(i);
								String catName = "";
								if(bbs.getCat() == 1) {
									catName = "#sports"; 
								} else if(bbs.getCat() == 2){
									catName = "#politics"; 
								} else if(bbs.getCat() == 3) {
									catName = "#hobby"; 
								} else {
									catName = "#coding";
								}
							%>
							<li>
							
								<button class="catBtn"><a href="bbs.do?cat=<%=bbs.getCat()%>"><%=catName%></a></button>
								<span id="spanOne"><a href="bbsdetail.do?ref=<%=bbs.getRef()%>"><%=bbs.getTitle()%></a></span>
								<span id="spanTwo"><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
							</li>
							<%
								}
							}
							%>
							</ul>
						</div>
					</div>
					<div class="bottomLeft">
						<h3><a href="bbs.do?cat=3">#hobby</a></h3>
						<hr class ="headerLineCat">
						<div class="cat3List">
							<ul>
							<% if(cat3 == null || cat3.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < 3; i++){
								BbsDto bbs = cat3.get(i);
								String catName = "";
								if(bbs.getCat() == 1) {
									catName = "#sports"; 
								} else if(bbs.getCat() == 2){
									catName = "#politics"; 
								} else if(bbs.getCat() == 3) {
									catName = "#hobby"; 
								} else {
									catName = "#coding";
								}
							%>
							<li>
								
									<button class="catBtn"><a href="bbs.do?cat=<%=bbs.getCat()%>"><%=catName%></a></button>
									<span id="spanOne"><a href="bbsdetail.do?ref=<%=bbs.getRef()%>"><%=bbs.getTitle()%></a></span>
									<span id="spanTwo"><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
								
							</li>
							<%
								}
							}
							%>
							</ul>
						</div>
					</div>
					<div class="bottomRight">
						<h3><a href="bbs.do?cat=4">#coding</a></h3>
						<hr class ="headerLineCat">
						<div class="cat4List">
							<ul>
							<% if(cat4 == null || cat4.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else{
							
							for(int i = 0; i < 3; i++){
								BbsDto bbs = cat4.get(i);
								String catName = "";
								if(bbs.getCat() == 1) {
									catName = "#sports"; 
								} else if(bbs.getCat() == 2){
									catName = "#politics"; 
								} else if(bbs.getCat() == 3) {
									catName = "#hobby"; 
								} else {
									catName = "#coding";
								}
							%>
							<li>
								<button class="catBtn"><a href="bbs.do?cat=<%=bbs.getCat()%>"><%=catName%></a></button>
								<span id="spanOne"><a href="bbsdetail.do?ref=<%=bbs.getRef()%>"><%=bbs.getTitle()%></a></span>
								<span id="spanTwo"><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
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
		</div>
	</body>
</html>
