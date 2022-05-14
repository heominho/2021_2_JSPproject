<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장르별 노래차트 창</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<style>
* {
margin:0;
padding:0;
border:0;
}

body {
        height: 100vh;
        background-image: url('goodnight.jpg');
        background-repeat : no-repeat center;
        background-size : cover;
        font-family: 'Jua', sans-serif;
		display:flex;
		justify-content:unset;
		align-items:center;
		height:100vh;
		color:white;
}
</style>
<body>
<header>장르별 노래차트입니다!<br>화면 중간 버튼을 누르면 각각 다른 분야의 음악을 들으러 갈 수 있습니다. 버튼을 누르고 사진을 클릭하세요!</header>

<input type="checkbox" id="menuicon">
<label for="menuicon">
	<span></span>
	<span></span>
	<span></span>
</label>
	<div class="sidebar">
	<ul>
	<tr>
	<td>
	<br><br>
	<h1><a href="logout_Action.jsp">로그아웃 하고 메인화면</a></h1>
	<br>
	<h1><a href="afterlogin.jsp">다른 메뉴가기</a></h1>
	<br>
	</td>
	<td>
	<h1><a href="afterloginleft.jsp">장르별 노래차트</a></h1> 
	<br>
	<h3><a href="afterloginleft_1.jsp">▷실시간 순위</a></h3> 
	<br>
	<h3><a href="afterloginleft_2.jsp">▷발라드</a></h3> 
	<br>
	<h3><a href="afterloginleft_3.jsp">▷랩/힙합</a></h3> 
	<br>
	<h3><a href="afterloginleft_4.jsp">▷트로트</a></h3> 
	<br>
	<h3><a href="afterloginleft_5.jsp">▷빌보드</a></h3> 
	<br>
	<h1><a href="afterlogincenter.jsp">음악공유 커뮤니티</a></h1> 
	<br>
	<h1><a href="afterloginright.jsp">오시는길</a></h1> 
	<br>
	</td>
	</tr>
	</ul>
	</div>
	
<div class="tab_content">
		
	<input type="radio" name="tabmenu" id="tab01" checked>
	<input type="radio" name="tabmenu" id="tab02">
	<input type="radio" name="tabmenu" id="tab03">
	<input type="radio" name="tabmenu" id="tab04">
	<input type="radio" name="tabmenu" id="tab05">
	
	<div class="conbox con1" onclick="location.href='afterloginleft_1.jsp'" style="cursor:pointer;">실시간순위 들으러가기</div>
	<div class="conbox con2" onclick="location.href='afterloginleft_2.jsp'" style="cursor:pointer;">발라드 들으러가기</div>
	<div class="conbox con3" onclick="location.href='afterloginleft_3.jsp'" style="cursor:pointer;">랩/힙합 들으러가기</div>
	<div class="conbox con4" onclick="location.href='afterloginleft_4.jsp'" style="cursor:pointer;">트로트 들으러가기</div>
	<div class="conbox con5" onclick="location.href='afterloginleft_5.jsp'" style="cursor:pointer;">빌보드 들으러가기</div>

	<div class="btn">
		<label for="tab01">실시간순위</label>
		<label for="tab02">발라드</label>
		<label for="tab03">랩/힙합</label>
		<label for="tab04">트로트</label>
		<label for="tab05">빌보드</label>
	</div>
	
</div>


<footer><hr><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>