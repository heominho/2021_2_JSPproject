<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.Board" %>
<%@ page import="board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP 게시판</title>
</head>
<link href="main.css" rel="stylesheet" type="text/css">
<body>
<header>게시판 글 수정중입니다.</header>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요!')");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		int boardNumber = 0;
		if(request.getParameter("boardNumber") != null){
			boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
		}
		if(boardNumber == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다!')");
			script.println("location.href='afterlogincenter.jsp'");
			script.println("</script>");
		}
		Board board = new BoardDAO().getBoard(boardNumber);
		if(!userID.equals(board.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다!')");
			script.println("location.href='afterlogincenter.jsp'");
			script.println("</script>");
		}
	%>
	<div>
		<div>
			<form method="post" action="updateAction.jsp?boardNumber=<%= boardNumber %>">
				<table class="type09" style="text-align: center;">
					<thead>
						<tr>
							<th colspan="2" style="text-align: center;">음악 추천 글 수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" style="width:300px;" placeholder="글 제목" name="boardTitle" maxlength="50"
								value="<%=board.getBoardTitle() %>" required></td>
						</tr>
						<tr>
							<td><textarea style="width:300px;height:400px;" placeholder="글 내용" name="boardContent" maxlength="2048"
								style="height: 350px;" required><%=board.getBoardContent() %></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" value="수정하기 ">
			</form>
			
		</div>
	</div>
<footer><hr><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>