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
<header>현재 게시판 글을 보고 있어요, 수정과 삭제는 게시판 글 작성자만 가능합니다! 다른 글을 보려면 목록을 눌러주세요!</header>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		int boardNumber = 0;
		if(request.getParameter("boardNumber") != null){
			boardNumber = Integer.parseInt(request.getParameter("boardNumber"));
		}
		if(boardNumber == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='afterlogincenter.jsp'");
			script.println("</script");
		}
		
		Board board = new BoardDAO().getBoard(boardNumber);
		
	%>
			
	
	<div >
		<div>
			<table class="type09" style="text-align: center;">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= board.getBoardTitle().replaceAll(" ", "&nbsp;")
								.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= board.getUserID() %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= board.getBoardDate().substring(0, 11) + board.getBoardDate().substring(11, 13) + "시"
								+ board.getBoardDate().substring(14, 16) + "분" %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; text-align: left;"><%= board.getBoardContent().replaceAll(" ", "&nbsp;")
							.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="afterlogincenter.jsp" >목록</a>
				<%
				if(userID != null && userID.equals(board.getUserID())){
			%>
					<a href="update.jsp?boardNumber=<%= boardNumber %>" >수정</a>
					<a onclick="return confirm('정말로 삭제하십니까?')" href="deleteAction.jsp?boardNumber=<%= boardNumber %>" >삭제</a>
			<%
				}
			%>
			
		</div>
	</div>
<footer><hr><jsp:include page="/footer.jsp" flush="false"/></footer>
</body>
</html>