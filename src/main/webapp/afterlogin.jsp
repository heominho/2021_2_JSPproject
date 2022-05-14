<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 이후 메뉴 선택 창</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');

body {
		font-family: 'Jua', sans-serif;
}

</style>
<link href="afterloginmain.css" rel="stylesheet" type="text/css">
<body>
<div class="gallerylist">
	<ul>
		<li>
			<a href="afterloginleft.jsp">
				<div class="screen">
					<div class="top">장르별 인기음악 들으러 가요!</div>
					<div class="bottom">HEOMINHO</div>
					<img src="leftimage.jpg">
				</div>
				<div>
					<h3>장르별 노래차트</h3>
				</div>
			</a>
		</li>
		<li>
			<a href="afterlogincenter.jsp">
				<div class="screen">
					<div class="top">서로 음악 공유해요!</div>
					<div class="bottom">HEOMINHO</div>
					<img src="middleimage.png">
				</div>
				<div>
					<h3>음악 공유 커뮤니티</h3>
				</div>
			</a>
		</li>
		<li>
			<a href="afterloginright.jsp">
				<div class="screen">
					<div class="top">본사는 여기에 있어요!</div>
					<div class="bottom">HEOMINHO</div>
					<img src="rightimage.jpg">
				</div>
				<div>
					<h3>오시는길</h3>
				</div>
			</a>
		</li>
	</ul>
</div>
<header>로그인을 성공하신 것을 축하합니다! 이미지에 마우스를 가져다 대면 설명이 나옵니다! 원하는 탭을 골라 들어가세요! 

<br>
<a href="logout_Action.jsp">로그아웃하고 홈화면 가기</a>
</header>
	

	<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>