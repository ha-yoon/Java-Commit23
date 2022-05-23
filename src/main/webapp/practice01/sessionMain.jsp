<%@page import="java.util.Enumeration"%>
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
		세션이름들을 Enumeration 타입으로 얻은 다음
		세션이름과 값을 꺼내고 세션값이 choi라면 웹브라우저에 최순이님 안녕하세요 출력하기
		
		a 태그로 세션확인하는 버튼과 로그아웃 버튼 만들기
		sessionTest.jsp		sessionLogout.jsp
	 --%>
	 
	 <%
	 
	 Enumeration<String> e = session.getAttributeNames();
	 
	 while(e.hasMoreElements()){
		 
		 String sName = e.nextElement();
		 String sValue = session.getAttribute(sName).toString();
		 
		 if(sValue.equals("choi")){
			 
			 out.print("<h1>최순이님 안녕하세용</h1>");
			 
		 }
	 }
	 
	 %>

	<a href="sessionTest.jsp">세션확인</a><br><br>
	
	<a href="sessionLogout.jsp">로그아웃</a>

</body>
</html>



