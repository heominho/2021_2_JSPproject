<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트로트</title>
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

<header>트로트 차트입니다! 곡 제목과 가수, 앨범을 클릭하면 각각의 정보를 볼 수 있습니다! 노래는 음소거를 해제해서 들어주세요!</header>
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
        	<a href="https://vibe.naver.com/track/40047378">이제 나만 믿어요</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/451341">임영웅</a>
        </td>
        <td>
			트로트
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/4508092">내일은 미스터트롯 우승자 특전곡</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/y1KXYmMuZZA?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">2위</th>
        <td>
        	<a href="https://vibe.naver.com/track/45076566">별빛 같은 나의 사랑아</a>
        </td>
        <td>
			<a href="https://vibe.naver.com/artist/451341">임영웅</a>
        </td>
        <td>
        	트로트
        </td>
        <td>
			<a href="https://vibe.naver.com/album/5318254">별빛 같은 나의 사랑아</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/i5IBnij5eHI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    <tr>
        <th scope="row">3위</th>
        <td>
        	<a href="https://vibe.naver.com/track/48465174">다시 사랑한다면 (김필 Ver.)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/451341">임영웅</a>
        </td>
        <td>
			트로트
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/5904197">사랑의 콜센타 PART56</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/8aCRNWFY8nc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">4위</th>
        <td>
        	<a href="https://vibe.naver.com/track/49224111">잊었니</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/451341">임영웅</a>
        </td>
        <td>
			트로트
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6061163">사랑의 콜센타 PART60</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/fdnHMUNYxfg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">5위</th>
        <td>
        	<a href="https://vibe.naver.com/track/43107949">HERO</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/451341">임영웅</a>
        </td>
        <td>
			트로트
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/5067764">HERO</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/4jXLHKMRA-E" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    
    
    
    
    
    </tbody>
</table>
<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>