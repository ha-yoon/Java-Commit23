<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		boolean cookieCheck = false;
	
		boolean check(Cookie[] c){
			cookieCheck = false;		
			
			if(c != null){
				
				for(int i = 0; i < c.length; i++){
					
					if(c[i].getName().equals("popUp") && 
							c[i].getValue().equals("notShow")){
						
						cookieCheck = true;
					}
					
				}
			}
			return cookieCheck;
		}
	%>


	<%
	
		Cookie[] cookies = request.getCookies();	
	
		cookieCheck = check(cookies);
		
		if(cookieCheck = false){
			
			out.print("<script>");
			out.print("window.open('popUp.jsp','pop','width=350', 'height=400')");
			out.print("</script>");
		}
	
	%>


	<%--
		window 객체 >> 웹프로그램의 최상위객체
		window.open() >> 새창으로 팝업을 만들 때 사용한다. 
		window.open('팝업창주소','팝업창이름','팝업창설정')
	 --%>

</body>
</html>




