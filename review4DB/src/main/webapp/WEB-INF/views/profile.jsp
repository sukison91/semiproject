<%@page import="mul.camp.a.dto.MemberDto"%>
<%@page import="mul.camp.a.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- DB로부터 MemberDto 값을 전달받음 -->
	<%MemberDto dto = (MemberDto)request.getSession().getAttribute("logininfo"); %>
	<%System.out.println("프로필 " + dto); %>

    <%List<BbsDto> bbslist = (List<BbsDto>)request.getAttribute("bbsList"); %> 
   	<%System.out.println(bbslist);%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>회원정보-Hobby Flow</title>
		<link rel="stylesheet" href="resources/css/main.css"/>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://kit.fontawesome.com/0032d948de.js" crossorigin="anonymous"></script>
	</head>
	<body style="background-color: rgba(251,183,23,.2); ">
	<!-- NavBar -->
		<navbar class="navContainer">
			<div class="navInner">
				<div class="navLeft">
					<a href="#"><img src="resources/img/logo.png" alt="logo" /></a>
					<ul>
						<li><a href="main.do" style="color: #1b6187">Home</a></li>
						<li><a href="#" style="color: #1b6187">Announcement</a></li>
						<li><a href="#" style="color: #1b6187">About Us</a></li>
					</ul>
				</div>
				<div class="navCenter"></div>
				<div class="navRight">
					<img src="resources/img/logo.png" alt="logo" />
					<p style="color: #1b6187">
						Welcome <br />
						<b><%=dto.getAka()%></b>!
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

<!-- Hobby Flow 회원정보 화면을 출력한다. -->
<!-- 두개의 div에 회원정보, 작성 게시글 목록 출력 -->
<div align="center"> <!-- 1.회원정보 출력 -->
<h2 style="margin-top: 25px; color: #1b6187">Hobby Flow 회원정보</h2>
<br>
<table border="1" style="text-align: center" class="profileTable">
<tr>
	<td rowspan="6">
		<!-- 프로필 이미지를 세팅.-->
		<img src="resources\img\<%=dto.getImg() %>" width=150px height=150px>
	</td>
</tr>
<tr>
	<!-- 사용자 id를 출력 -->
	<th>ID</th> 
	<td><%=dto.getId() %></td>
</tr>
<tr>
	<!-- 사용자 닉네임을 출력 -->
	<th>Nickname</th> 
	<td><%=dto.getAka() %></td>
</tr>
<tr>
	<!-- 사용자 email을 출력 -->
	<th>Email</th>
	<td><%=dto.getEmail() %></td>
</tr>
<tr>	
	<!-- 사용자의 exp를 출력 -->
	<th>현재 경험치</th>
	<td><%=dto.getExp() %></td>
</tr>
<tr>
	<!-- 사용자의 lv를 출력 -->
	<th>레벨</th>
	<td><%=dto.getLv() %></td>
</tr>
<tr>
	<td colspan="3">
	<button type="button" class="catBtn" style="margin-top: 20px" onclick="location.href='editProfile.do'">회원정보 수정</button><!-- 회원정보 수정 페이지로 이동하는 버튼 -->
	</td>
</tr>
</table>
</div>

<br><br>

<div align="center"><!-- 2.사용자의 작성글을 출력 -->
<h3 style="margin-bottom: 25px; color:#1b6187; font-size: 17px; ">작성글 목록</h3>
<table border="1" style="width: 1000px" class="userPosts">
	<tr >
		<th style="background-color:#fbb717; color: white; font-size: 17px">카테고리</th>
		<th style="background-color:#fbb717; color: white; font-size: 17px">제목</th>
		<th style="background-color:#fbb717; color: white; font-size: 17px">날짜</th>
	</tr>
	<tr>
	<% if(bbslist == null || bbslist.size() == 0){ %>
		<td colspan="3">작성된 글이 없습니다</td> 
	</tr>
	<%
	} else {
	for(int i = 0;i < bbslist.size(); i++){
		BbsDto bbs = bbslist.get(i);
		if(bbs.getDel() == 1) {
	%>
		<tr><td style="display:none">이 게시물은 삭제되었습니다.</td></tr>
		<% } else {
			
			String catName1 = ""; 
			if (bbs.getCat() == 1){ 
				 catName1 = "#sports"; 
			} else if (bbs.getCat() == 2){
				catName1 = "#politics"; 
			} else if (bbs.getCat() == 3){
				catName1 = "#hobby"; 
			} else {
				catName1 = "#coding"; 
			}
		%> <tr>	
		<td style="text-align: center"><%=catName1%></td>
		<td>
			<a href="bbsdetail.do?ref=<%=bbs.getRef() %>"><%=bbs.getTitle() %></a>
		</td>
		<td style="text-align: center">
			<%=bbs.getWdate() %>
		</td>	
	<%
			}
		}
	}
	%>
</table>
</div>


</body>
</html>