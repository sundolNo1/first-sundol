<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//방법1: 회원정보인증 속성 삭제
session.removeAttribute("UserId");
session.removeAttribute("UserName");

//방법2 : 모든속성을 한꺼번에 삭제
session.invalidate();

//속성 삭제후 페이지 이동
response.sendRedirect("LoginForm.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>