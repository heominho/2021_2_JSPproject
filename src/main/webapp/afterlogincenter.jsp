<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">

<body>
<header>음악공유 커뮤니티입니다. 글쓰기 버튼을 눌러 노래를 추천해주세요!</header>
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
	
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	

	<div>
		<div>
			<table class="type09" width="800" style="text-align: center;">
				<thead>
					<tr>
						<th style="text-align: center;">번호</th>
						<th style="text-align: center;">제목</th>
						<th style="text-align: center;">작성자</th>
						<th style="text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BoardDAO boardDAO = new BoardDAO();
						ArrayList<Board> list = boardDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%= list.get(i).getBoardNumber() %></td>
						<td><a href="view.jsp?boardNumber=<%= list.get(i).getBoardNumber() %>">
							<%= list.get(i).getBoardTitle() %></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getBoardDate().substring(0, 11) + list.get(i).getBoardDate().substring(11, 13) + "시"
							+ list.get(i).getBoardDate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1){
			%>
				<a href="afterlogincenter.jsp?pageNumber=<%=pageNumber - 1 %>"
					class="btn btn-success btn-arraw-left">이전페이지</a>
			<%
				}if(boardDAO.nextPage(pageNumber + 1)){
			%>
				<a href="afterlogincenter.jsp?pageNumber=<%=pageNumber + 1 %>"
					class="btn btn-success btn-arraw-left">다음페이지</a>
			<%
				}
			%>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
<footer><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>