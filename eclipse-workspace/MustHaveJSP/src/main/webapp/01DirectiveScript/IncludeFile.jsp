<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	LocalDate today = LocalDate.now();   //오늘날짜
	LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);  //내일날짜
%>

</body>
</html>