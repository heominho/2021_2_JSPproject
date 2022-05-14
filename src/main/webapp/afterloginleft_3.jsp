<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랩/힙합</title>
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

<header>랩/힙합 차트입니다! 곡 제목과 가수, 앨범을 클릭하면 각각의 정보를 볼 수 있습니다! 노래는 음소거를 해제해서 들어주세요!</header>
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
        	<a href="https://vibe.naver.com/track/51601987">회전목마 (Feat. Zion.T, 원슈타인) (Prod. Slom)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/2684262">sokodomo</a>
        </td>
        <td>
			랩/힙합
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6650319">쇼미더머니 10 Episode 2</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/ZcGB8Yc_SlE?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">2위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51874035">리무진 (Feat. MINO) (Prod. GRAY)</a>
        </td>
        <td>
			<a href="https://vibe.naver.com/artist/3177930">BE'O (비오)</a>
        </td>
        <td>
        	랩/힙합
        </td>
        <td>
			<a href="https://vibe.naver.com/album/6706049">쇼미더머니 10 Episode 3</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/3lwTql6YlSE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    <tr>
        <th scope="row">3위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51874036">만남은 쉽고 이별은 어려워 (Feat. Leellamarz) (Prod. TOIL)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/107005">베이식 (Basick)</a>
        </td>
        <td>
			랩/힙합
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6706049">쇼미더머니 10 Episode 3</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/rY8_DRrQIvg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">4위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51524218">Wake Up (Prod. 코드 쿤스트)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/32828">개코</a>,
			<a href="https://vibe.naver.com/artist/2726674">Ourealgoat (아우릴고트)</a>,
			<a href="https://vibe.naver.com/artist/2389301">SINCE</a>,
			<a href="https://vibe.naver.com/artist/2905409">안병웅</a>,
			<a href="https://vibe.naver.com/artist/2868769">Tabber</a>,
			<a href="https://vibe.naver.com/artist/2933338">조광일</a>
        </td>
        <td>
			랩/힙합
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6632981">쇼미더머니 10 Episode 1</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/NHKn8Sny8xQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    <tr>
        <th scope="row">5위</th>
        <td>
        	<a href="https://vibe.naver.com/track/51912955">불협화음 (Feat. AKMU) (Prod. GRAY)</a>
        </td>
        <td>
        	<a href="https://vibe.naver.com/artist/3148802">Mudd the student</a>
        </td>
        <td>
			랩/힙합
        </td>
        <td>
        	<a href="https://vibe.naver.com/album/6714290">쇼미더머니 10 Semi Final</a>
        </td>
        <td>
        	<iframe src="https://www.youtube.com/embed/gpnf5dR6SDg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </td>
    </tr>
    
    
    
    
    
    
    
    </tbody>
</table>
<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>