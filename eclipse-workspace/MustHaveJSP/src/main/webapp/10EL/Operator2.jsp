<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//예시에서 사용할 변수 선언
pageContext.setAttribute("num1",9);
pageContext.setAttribute("num2","10");

pageContext.setAttribute("nullStr",null);
pageContext.setAttribute("emptyStr","");
pageContext.setAttribute("lengthZero",new Integer[0]);
pageContext.setAttribute("sizeZero",new ArrayList<Object>());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>empty 연산자</h3>
	empty nullStr : ${ empty nullStr }<br/>
	empty emptyStr : ${ empty emptyStr }<br/>
	empty lengthZero : ${ empty lengthZero }<br/>
	empty sizeZero : ${ empty sizeZero }
	
	<h3>삼항 연산자</h3>
	num1 gt num2 ? "참" : "거짓" => ${ num1 gt num2 ? "num1이 크다" : "num2가 크다"}
	
	
	
</body>
</html>










