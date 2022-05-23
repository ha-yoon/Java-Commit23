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
		
		if(request.getParameter("popUp") != null){
		
			String popUp = request.getParameter("popUp");
			
			if(popUp.equals("notShow")){
				
				Cookie c = new Cookie("popUp", "notShow");
				
				c.setPath("/");
				c.setMaxAge(60 * 60 * 24); // 24시간 동안 쿠키 유지
				response.addCookie(c);
				
				out.print("<script>");
				out.print("window.close()");
				out.print("</script>");
				// 웹페이지를 닫는 방법은 window.close() 함수를 통해서 가능하다.
			}
			
		}
		
	
		
	%>

	공지사항 입니다.
	<br><br><br><br><br><br><br><br><br>
	
	<form action="popUp.jsp" method="post">
	
		24시간동안 보지않기<input type="checkbox" name="popUp" value="notShow">
		<input type="submit" value="체크 후 클릭">	
	</form>


</body>
</html>



