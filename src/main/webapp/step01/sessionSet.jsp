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
		session.setAttribute("sessionName", "sessionValue");
		session.setAttribute("sessionNumber", 1234);
		// 세션 객체는 생성하지 않아도 쓸 수 있는 내장객체이다. 
		// setAttribute("세션이름", 값);
		// 이름은 String 타입이고, 값은 Object 타입이다.
	%>

	<p>세션이 생성되었습니다.</p>
	
	<a href="sessionGet.jsp">세션얻기</a>


</body>
</html>






