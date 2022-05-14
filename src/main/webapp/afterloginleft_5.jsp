<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빌보드</title>
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

<header>billboard 차트입니다! 곡 제목과 가수, 앨범을 클릭하면 각각의 정보를 볼 수 있습니다! 노래는 음소거를 해제해서 들어주세요!</header>
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
        	<a href="https://vibe.naver.com/track/51621781">All Too Well (Taylor's Version)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/115875">Taylor Swift</a>
        </td>
        <td>
			팝
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6655154">Red (Taylor's Version)</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/9OQBDdNHmXo?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">2위</th>
        <td>
        	<a href="https://vibe.naver.com/track/50939695">Easy On Me</a>
        </td>
        <td>
			<a href="https://vibe.naver.com/artist/107004">Adele</a>
        </td>
        <td>
        	팝
        </td>
        <td>
			<a href="https://vibe.naver.com/album/6485858">Easy On Me</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/X-yIEMduRXk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    <tr>
        <th scope="row">3위</th>
        <td>
        	<a href="https://vibe.naver.com/track/49680764">Stay</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/2978307">The Kid LAROI</a>,
        	<a href="https://vibe.naver.com/artist/119770">Justin Bieber</a>
        </td>
        <td>
			팝
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6158502">Stay</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/kTJczUoc26U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">4위</th>
        <td>
        	<a href="https://vibe.naver.com/track/50063406">INDUSTRY BABY</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/2825605">Lil Nas</a> X
        	<a href="https://vibe.naver.com/artist/2072501">Jack Harlow</a>
        </td>
        <td>
			힙합
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6245215">INDUSTRY BABY</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/HCq1OcAEAm0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">5위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51524433">Smokin Out The Window</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/132647">Bruno Mars</a>,
			<a href="https://vibe.naver.com/artist/433403">Anderson .Paak</a>,
			<a href="https://vibe.naver.com/artist/4113987">Silk Sonic</a>
        </td>
        <td>
			알앤비
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/5291387">An Evening With Silk Sonic</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/GG7fLOmlhYg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    
    
    
    
    
    </tbody>
</table>
<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>