<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<body>
<header>게시판 글쓰기 페이지 입니다. 노래와 가수, 곡 제목을 추천해 주세요!</header>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<div >
		<div>
			<form method="post" action="writeAction.jsp">
				<table style="text-align: center;" class="type09">
					<thead>
						<tr>
							<th colspan="2" style="text-align: center;">음악을 추천해 주세요</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text"  style="width:300px;" placeholder="곡 제목 - 가수" name="boardTitle" maxlength="80" required></td>
						</tr>
						<tr>
							<td><textarea placeholder="곡 정보와 추천이유를 적어주세요" style="width:300px;height:400px;" name="boardContent" maxlength="2048" style="height: 350px;" required></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" value="글쓰기">
				<a href="afterlogincenter.jsp">글쓰기 취소</a>
			</form>
		</div>
	</div>
	<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>