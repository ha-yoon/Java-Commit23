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
		세션에 있는 이름과 값들을 모두 꺼내서 웹브라우저에 출력하기
		만약에 세션에 데이터가 없다면 세션에 데이터가 모두 삭제되었다고 웹브라우저에 출력하기  
	 --%>
	 
	 <%
	 	Enumeration<String> e = session.getAttributeNames();
	 
	 	int count = 0;
	 	
	 	while(e.hasMoreElements()){
	 		count++;
	 		
	 		String sName = e.nextElement();
	 		String sValue = session.getAttribute(sName).toString();
	 		
	 		out.print("세션이름: " + sName + "<br>");
	 		out.print("세션값: " + sValue + "<br>");
	 			
	 	}
	 	
	 	if(count == 0){
	 		out.print("<h2>해당 세션이 삭제되었습니다.</h2>");
	 	}
	 %>

</body>
</html>





