<%@page import="java.io.PrintWriter"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요!')");
			script.println("location.href='index.jsp'");
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
		} else{
			BoardDAO boardDAO = new BoardDAO();
			int result = boardDAO.delete(boardNumber);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글 수정하기에 실패했습니다!')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글을 삭제하였습니다!')");
				script.println("location.href='afterlogincenter.jsp'");
				script.println("</script>");
			}
		}
	
	%>
</body>
</html>