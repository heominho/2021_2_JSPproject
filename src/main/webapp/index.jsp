<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>민호랑 노래 듣자</title>
</head>
<style>
	* {margin:0;padding:0;}
	.section {}
	.section input[id*="slide"] {display:none;}

	.section .slide-wrap {max-width:1200px;margin:0 auto;}
	.section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
	.section .slidelist > li > a {display:block;position:relative;}
	.section .slidelist > li > a img {width:100%;}
	.section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slidelist .left {left:30px;background:url('leftarrow.png') center center / 100% no-repeat;}
	.section .slidelist .right {right:30px;background:url('rightarrow.png') center center / 100% no-repeat;}
	.section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
	
	.section .slidelist .textbox h3 {font-size:50px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
	.section .slidelist .textbox p {font-size:24px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}

	.section input[id="slide01"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(0%);}
	.section input[id="slide02"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-100%);}
	.section input[id="slide03"]:checked ~ .slide-wrap .slidelist > li {transform:translateX(-200%);}

	.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide01"]:checked ~ .slide-wrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide02"]:checked ~ .slide-wrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
	.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
	.section input[id="slide03"]:checked ~ .slide-wrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
</style>
<link href="main.css" rel="stylesheet" type="text/css">
<body>
<header>민호랑 노래 듣자 사이트에 오신 것을 환영합니다! 사이트에 대한 정보는 화면 중간 메뉴 아이콘을 눌러주세요!</header>
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
					<h1><a href="logout_Action.jsp">메인화면</a></h1>
				<br>
				</td>
				<td>
					<h1>민호랑 노래 듣자 사이트에 오신 분들을 모두 환영합니다!</h1> 
					<h3>서로 노래를 추천해 주며 공유를 하는 사이트입니다.</h3>
					<h3>이 사이트의 기능은 모두 로그인 후 사용가능합니다!</h3>
					<h3>사이트 중심의 로그인 창을 이용해 로그인을 해주세요!</h3>
					<h3>만약 계정이 없다면 회원가입을 해주세요!</h3>
				<br>
					<h3>만약 '이미 로그인이 되어있습니다.'라는 오류가 뜬다면 상단의 메인화면을 클릭해주세요!</h3>
				</td>
			</tr>
		</ul>
	</div>
	
	

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slide-wrap">
		<ul class="slidelist">
			<li>
				<a>
					<label for="slide03" class="left"></label>
					<div class="textbox">
						<h3>음악을 공유할 수 있습니다.</h3>
						<p>음악 공유 커뮤니티를 통해서 회원들끼리 음악을 공유합니다.</p>
					</div>
					<img src="index1.jpg">
					<label for="slide02" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide01" class="left"></label>
					<div class="textbox">
						<h3>음악 순위를 확인할 수 있습니다.</h3>
						<p>장르별 노래차트를 통해 음악 순위를 확인합니다.</p>
					</div>
					<img src="index2.png">
					<label for="slide03" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide02" class="left"></label>
					<div class="textbox">
						<h3>음악을 감상할 수 있습니다.</h3>
						<p>장르별 노래차트에서 음악을 감상합니다.</p>
					</div>
					<img src="index3.jpg">
					<label for="slide01" class="right"></label>
				</a>
			</li>
		</ul>
	</div>
</div>
	


	<section>
		
	<h1>로그인 후 이용하세요!</h1>
	<form method="post" action="login_Action.jsp">
		<div>
			<input type="text" name="userID"  maxlength="20" placeholder="USER NAME" required>
			<h4>USER NAME</h4>
		</div>
		<div>
			<input type="password"name="userPassword" maxlength="20" placeholder="PASSWORD" required>
			<h4>PASSWORD</h4>
		</div>
		<div class="btn-area">
			<button type="submit">LOGIN</button>
		</div>
	</form>
	<div class="caption">
		<a href="join.jsp">회원가입 하시겠습니까?</a>
	</div>
	</section>
	
	
	
	<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>