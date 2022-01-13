<%@page import="mul.camp.a.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%MemberDto dto = (MemberDto)request.getAttribute("logininfo");%>
   	<%System.out.println(dto);%>
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
						<li class="profile">
							<a href="#">Profile</a>
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
					<h3><a href="#">최신글</a></h3>

					<!-- recent post list -->
					<div class="rpList">
						<ul>
							<li>
								<a href="#">
									<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
									><span><i class="fas fa-eye"></i> 1101</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
									><span><i class="fas fa-eye"></i> 1101</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
									><span><i class="fas fa-eye"></i> 1101</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
									><span><i class="fas fa-eye"></i> 1101</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
									><span><i class="fas fa-eye"></i> 1101</span>
								</a>
							</li>
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
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="topRight">
						<h3><a href="#">Cat 2</a></h3>
						<div class="cat2List">
							<ul>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="bottomLeft">
						<h3><a href="#">Cat 3</a></h3>
						<div class="cat3List">
							<ul>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="bottomRight">
						<h3><a href="#">Cat 4</a></h3>
						<div class="cat4List">
							<ul>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span>Cat 1</span><span>박지성 복귀 썰 AGAIN 2002</span
										><span><i class="fas fa-eye"></i> 1101</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
