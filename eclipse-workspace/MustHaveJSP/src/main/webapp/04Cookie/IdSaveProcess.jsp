<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");     //폼 값 읽기

if("must".equals(user_id) && "1234".equals(user_pw)){   //사용자 인증
	//로그인 성공
	if(save_check != null && save_check.equals("Y")){  //아이디저장하기 체크 확인
		CookieManager.makeCookie(response, "loginId", user_id, 86400); //쿠키 생성
	}
	else{
		CookieManager.deleteCookie(response, "loginId"); //쿠키삭
	}
	JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
	
}
else{
	//로그인 실패
	JSFunction.alertBack("로그인에 실패했습니다", out);
}
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