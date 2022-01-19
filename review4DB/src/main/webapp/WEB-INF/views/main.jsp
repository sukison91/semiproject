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
		<link rel="stylesheet" href="resources/css/main.css"/>
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

					<h3>최신글</h3>
					
					<!-- recent post list -->
					<div class="rpList">
						<ul>
							<% 
							int count = 5; 
					
							if(bbsList == null || bbsList.size() == 0){ %>
								<p>작성된 글이 없습니다!</p>
							<% }else {
							
							for(int i = 0; i < count; i++){
								BbsDto bbs = bbsList.get(i);
								if(bbs.getDel() != 1) {
							%>	
							<li>
								<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
									<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle()%></span
									><span><i class="fas fa-eye"></i> <%=bbs.getReadcount()%></span>
								</a>
							</li>
								<% } else {
									count+= 1;
								} 
							}
							}%>
						</ul>
					</div>
					<!-- recent post list -->
				</div>
				<!-- recent post -->

				<div class="showCat">
					<div class="topLeft">
						<h3><a href="#">Cat 1</a></h3>
						<div class="cat1List">
							<ul>
								<%
								int ccount1 = 3;
								if(cat1 == null || cat1.size() == 0){ %>
									<p>작성된 글이 없습니다!</p>
								<% }else {
									
								 	for(int i = 0; i < ccount1; i++){
										BbsDto bbs = cat1.get(i);
										if(bbs.getDel() != 1) {
									%>
									<li>
										<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
											<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle() %></span>
											<span><i class="fas fa-eye"></i> <%=bbs.getReadcount() %></span>
										</a>
									</li> 
										<% } else { ccount1++; }
										} 
								}
								%>
							</ul>
						</div>
					</div>
					<div class="topRight">
						<h3><a href="#">Cat 2</a></h3>
						<div class="cat2List">
							<ul>
								<%
								int ccount2 = 3;
								if(cat2 == null || cat2.size() == 0){ %>
									<p>작성된 글이 없습니다!</p>
								<% }else {
								 	for(int i = 0; i < ccount2; i++){
										BbsDto bbs = cat2.get(i);
										if(bbs.getDel() != 1) {
									%>
									<li>
										<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
											<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle() %></span>
											<span><i class="fas fa-eye"></i> <%=bbs.getReadcount() %></span>
										</a>
									</li> 
										<% } else { ccount2++; }
										} 
								}
								%>
							</ul>
						</div>
					</div>
					<div class="bottomLeft">
						<h3><a href="#">Cat 3</a></h3>
						<div class="cat3List">
							<ul>
								<%
								int ccount3 = 3;
								if(cat2 == null || cat3.size() == 0){ %>
									<p>작성된 글이 없습니다!</p>
								<% }else {
							
								 	for(int i = 0; i < ccount3; i++){
										BbsDto bbs = cat2.get(i);
										if(bbs.getDel() != 1) {
									%>
									<li>
										<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
											<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle() %></span>
											<span><i class="fas fa-eye"></i> <%=bbs.getReadcount() %></span>
										</a>
									</li> 
										<% } else { ccount3++; }
										} 
								}
								%>
							</ul>
						</div>
					</div>
					<div class="bottomRight">
						<h3><a href="#">Cat 4</a></h3>
						<div class="cat4List">
							<ul>
								<%
								int ccount4 = 3;
								if(cat2 == null || cat4.size() == 0){ %>
									<p>작성된 글이 없습니다!</p>
								<% }else {
								 	for(int i = 0; i < ccount4; i++){
										BbsDto bbs = cat2.get(i);
										if(bbs.getDel() != 1) {
									%>
									<li>
										<a href="bbsdetail.do?ref=<%=bbs.getRef() %>">
											<span>Cat <%=bbs.getCat()%></span><span><%=bbs.getTitle() %></span>
											<span><i class="fas fa-eye"></i> <%=bbs.getReadcount() %></span>
										</a>
									</li> 
										<% } else { ccount4++; }
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
