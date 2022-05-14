<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는길/대중교통 이용안내</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<body>
<header>&nbsp; 오시는 길/대중교통 이용안내</header>
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
	


<div class="kakaomap">
	<div id="daumRoughmapContainer1638347482907" class="root_daum_roughmap root_daum_roughmap_landing"></div>
	<h3>오시는 길</h3>
	<p>네비게이션 주소 : 인천광역시 미추홀구 인하로 100</p><br>
	<h3>대중교통 이용안내</h3>
	<p>광역버스 - 1601(서울역), 9200(강남역), 3001(광명역)<br>
	시내버스 - 5, 5-1, 8, 9, 13, 27, 46, 111-2 나머지 버스노선은 현행 그대로 유지<br>
	마을버스 - 511 / 515 / 516 / 518(주안역), 512(제물포역), 517 / 519(동인천역)<br>
	급행간선 - 908(송도신도시공영차고지)</p>
</div>
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1638347482907",
		"key" : "28a9d"
	}).render();
</script>

<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>