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
		넘어온 아이디 비밀번호 받기 
		아이디가 choi 이고 비밀번호가 1111 이라면 session 객체에 value 값으로
		넘어온 아이디값으로 설정하기 session.setAttribute("id", id);
		리다이렉트로 sessionMain.jsp로 보내기
		아이디나 비밀번호가 틀리다면 리다이렉트로 sessionLogin.html로 보내기 
	 --%>
	 
	 <% 
	 
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 
	 	if(id.equals("choi") && pw.equals("1111")){
	 		 
	 		session.setAttribute("id", id);
 			response.sendRedirect("sessionMain.jsp");
	 		
 	}else{
 		response.sendRedirect("sessionLogin.html");
 	}
	 	
	 %>

</body>
</html>