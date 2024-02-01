<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String popupMode = "on";

Cookie[] cookies = request.getCookies();  //쿠키를 읽어 popupMode값 설정
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if(cookieName.equals("PopupClose")){ //PopupClose 쿠키가 존재하면
			popupMode = cookieValue;  //popupMode 값 갱신
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div#popup {
		position: absolute; top:100px; left:50px; color:yellow;
		width:270px; height:100px; background-color:gray;
	}
	div#popup > div {
		position:relative; background-color: #ffffff; top:0px;
		border: 1px solid gray; padding:10px; color:black;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
$(function() {
	$('#closeBtn').click(function() { <!-- 닫기 버튼(id=cloesBtn)을 누르면 팝업창을 숨김처리 -->
		$('#popup').hide();  <!-- 닫기버튼 누르면 실행되는 함수-->
		var chkVal = $("input:checkbox[id=incativeToday]:checked").val();
		if(chkVal==1){
			$.ajax({       <!-- jQuery의 ajax()함수로 비동기요-->
				url :'./PopupCookie.jsp',
				type : 'get',
				data: {incativeToday : chkVal},
				dataType : "text",
				success : function(resData){  <!-- 요청 성공시 호출 되는 함수-->
					if(resData != '') location.reload();
				}
			});
		}
		
	});
	
});
</script>
</head>
<body>
<h2>팝업 메인 페이지 (ver 0.1)</h2>
<%
	for(int i=1; i<=10; i++){
		out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
	}
	if(popupMode.equals("on")){
%>
	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right"><form name="popFrm">
		<input type="checkbox" id="incativeToday" value="1" />
		하루 동안 열지 않음
			<input type="button" value="닫기" id="closeBtn" />
		</form></div>
	</div>
<%
	}
%>

</body>
</html>