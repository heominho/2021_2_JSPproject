<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발라드</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<style>

body {
        height: 100vh;
        background-image: url('goodnight.jpg');
        background-repeat : no-repeat center;
        background-size : cover;
        font-family: 'Jua', sans-serif;
		display:flex;
		justify-content:center;
		align-items:center;
		height:100%;
		color:white;
}
</style>
<body>

<header>발라드 차트입니다! 곡 제목과 가수, 앨범을 클릭하면 각각의 정보를 볼 수 있습니다! 노래는 음소거를 해제해서 들어주세요!</header>
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


<table class="type09">
    <thead>
    <tr>
        <th scope="cols">순위</th>
        <th scope="cols">곡제목</th>
        <th scope="cols">가수</th>
        <th scope="cols">장르</th>
        <th scope="cols">앨범</th>
        <th scope="cols">듣기</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1위</th>
        <td>
        	<a href="https://vibe.naver.com/track/50578401">고백</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/377357">멜로망스(Melomance)</a>
        </td>
        <td>
			발라드, 인디뮤직
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6392253">세 번째 '고백'</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/YRKR45rYoLg?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">2위</th>
        <td>
        	<a href="https://vibe.naver.com/track/49356016">바라만 본다</a>
        </td>
        <td>
			<a href="https://vibe.naver.com/artist/4469761">MSG워너비</a>
        </td>
        <td>
        	발라드
        </td>
        <td>
			<a href="https://vibe.naver.com/album/6086678">MSG워너비 1집</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/fHwT4yz5Hkg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    <tr>
        <th scope="row">3위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51274959">너는 내 세상이었어</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/362264">볼빨간사춘기</a>
        </td>
        <td>
			발라드, 인디뮤직, 락
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6583014">Butterfly Effect</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/4mZHWvzCLjo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">4위</th>
        <td>
        	<a href="https://vibe.naver.com/track/28487815">어떻게 이별까지 사랑하겠어, 널 사랑하는 거지</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/243100">AKMU(악뮤)</a>
        </td>
        <td>
			락, 발라드, 포크
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/3199865">항해</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/mZz9uYdj_v4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">5위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51589171">어제 너는 나를 버렸어</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/134431">10CM</a>
        </td>
        <td>
			발라드, 인디뮤직
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6646889">The 3rd EP</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/iFtaamxiasY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    
    
    
    
    
    </tbody>
</table>
<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>