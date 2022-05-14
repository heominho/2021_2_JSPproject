<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userAge" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
			String userID = null;
			if(session.getAttribute("userID") != null){
				userID = (String)session.getAttribute("userID");
			}
			if(userID != null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 로그인이 되어 있어서 회원가입 할 수 없습니다.')");
				script.println("location.href='main.jsp'");
				script.println("</script>");
			}
		if(user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null ||
			user.getUserGender() == null || user.getUserAge() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('빈 칸을 모두 채워주셔야 회원가입이 완료됩니다!')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다! 다른 아이디를 입력하세요!')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입에 성공하셨습니다! 어서오세요!')");
				script.println("location.href='afterlogin.jsp'");
				script.println("</script>");
			}
		}
	%>
	
	
</body>
</html>