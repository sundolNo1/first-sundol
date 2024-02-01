<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String str1 = "JSP";
	String str2 = "안녕하세요!! ";    //스크립트 요소 선언
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>HelloJSP</h2>      <!-- 스크립트 요소(표현식) -->
	<p>
		<%
		out.print(str2 + str1 + "입니다. 열공합시다^^*");  //스크립트요소 (스크립틀릿)
		%>
	</p>

</body>
</html>