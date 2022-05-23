<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		세션의 모든 데이터 삭제하기
		a 태그로 세션확인하는 버튼 만들기 sessionTest.jsp
	 --%>
	
	<%  
	 	session.invalidate();
	%>
	
	<h2>로그아웃 되었습니다.</h2>
	
	<a href="sessionTest.jsp">세션확인</a>
	

</body>
</html>






