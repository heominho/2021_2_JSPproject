<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 창</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<style>
input[type="radio"] {
display:inline;
} 
</style>
<body>
<header>회원 가입 페이지입니다! 아이디, 비밀번호, 이름, 성별을 정확히 기입한 후 회원가입 버튼을 눌러주세요! 만약 가입을 원치 않으신다면 홈 화면으로 돌아가기 버튼을 눌러주세요!</header>
	<div> 
	<h2> 회원 가입 </h2> 
	<form method="post" action="join_Action.jsp"> 
	<h3>아이디</h3> 
	<div> 
	<input type="text" placeholder="아이디" name="userID" title="아이디" maxlength="20" required> 
	</div> 
	<h3>비밀번호</h3> 
	<div> 
	<input type="password" placeholder="비밀번호" name="userPassword" title="비밀번호" maxlength="20" required> 
	</div> 
	<h3>이름</h3> 
	<div> 
	<input type="text" placeholder="이름" name="userName" title="이름" maxlength="20" required> 
	</div> 
	<h3>성별</h3> 
	<div>
	 <input type="radio" name="userGender" value="M" title="성별" required/> 남자
	 <input type="radio" name="userGender" value="F" title="성별" required/> 여자 
	</div> 
	 <h3>나이</h3> 
	<div> 
	<input type="text" placeholder="나이" name="userAge" title="나이" maxlength="20" required> 
	</div> 
	 <input type="submit" value="회원가입"> 
	 </form> 
	 <form action="index.jsp">
	 <input type="submit" value="홈 화면으로 돌아가기">
	 </form>
	 </div>
	 



	<footer><hr><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>