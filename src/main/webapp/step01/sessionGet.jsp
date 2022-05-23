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

	<%
		Object obj1 = session.getAttribute("sessionName");
		// getAttribute의 반환값이 Object 타입이다. 
		String sessionValue = (String)obj1;
		// object 타입이므로 캐스팅 해주어야 한다. 
		
		out.print("sessionName의 값: " + sessionValue + "<br>");
		
		Object obj2 = session.getAttribute("sessiosNumber");
				
		int sessionNumberValue = (Integer)obj2;
		
		out.print("sessionNumber의 값: " + sessionValue + "<br>");
		
		out.print("=======================================<br>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e = session.getAttributeNames();
		// 세션안에 저장된 객체들의 이름을 Enumeration 타입으로 반환한다.
		
		
		while(e.hasMoreElements()){
			// 요소가 있다면 true 없다면 false를 반환
			
			sName = e.nextElement();
			
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름: " + sName + "<br>");
			out.print("세션값: " + sValue + "<br>");
		}
		out.print("===================================<br>");
		
		String sessionID = session.getId();
		// 한 브라우저당 고유한 아이디가 생성이된다.
		// 브라우저별로 생성되어진 세션을 구분할 수 있다. 
		out.print("세션 아이디: " + sessionID + "<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		// 세션의 유효시간(기본30분)
		out.print("세션의 유효기간: " + sessionInter + "<br>");
		
		out.print("====================================<br>");

		session.removeAttribute("sessionName");
		// 세션삭제: removeAttribute("세션이름");
		
		e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			
			sName = e.nextElement();
			
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름: " + sName + "<br>");
			out.print("세션값: " + sValue + "<br>");
		}
		out.print("===================================<br>");
	
		session.invalidate();
		// invalidate(): 세션의 모든 데이터를 삭제한다.
		
		if(request.isRequestedSessionIdValid()){
			// 유효한 세션이 있으면 true, 없으면 false 반환
			
			out.print("유효한 세션이 있음");
		}else{
			out.print("유효한 세션이 없음");
		}
	%>

</body>
</html>




