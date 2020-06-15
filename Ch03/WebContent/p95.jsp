<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value, "utf-8");
	response.sendRedirect("/Ch03/index.jsp?name=" + encodedValue);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>