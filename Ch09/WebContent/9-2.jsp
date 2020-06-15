<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9-2</title>
</head>
<body>
	<h3>2.쿠키 수신하기</h3>
	<%
		Cookie[] cookies = request.getCookies();
	
		for(Cookie c : cookies) {
			
			String name = c.getName();
			String value = c.getValue();
	%>
		<p>
			쿠키명 : <%= name %><br /> 
			쿠키값 : <%= value %><br /> 
		</p>
	
	<%
		}		
	%>

</body>
</html>

<%-- (결과확인)
2.쿠키 수신하기

쿠키명 : JSESSIONID
쿠키값 : 82344D164107C37ECD553A1D71F23ECF

쿠키명 : name
쿠키값 : 홍길동

쿠키명 : uid
쿠키값 : hong

쿠키명 : hp
쿠키값 : 010-1213-1213 --%>