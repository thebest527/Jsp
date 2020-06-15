<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10-2</title>
</head>
<body>
	<h3>2.세션값 확인</h3>
	<%
		String sid = session.getId();
		String name = (String) session.getAttribute("name");
		String uid = (String) session.getAttribute("uid");
	%>
	<p>
		sid = <%= sid %><br />
		name = <%= name %><br />
		uid = <%= uid %><br />
	
	
	
	</p>

</body>
</html>
<%-- 
2.세션값 확인

sid = 8F9DB096B15F641F54608383C3A5E6BE
name = 홍길동
uid = hong

--%>