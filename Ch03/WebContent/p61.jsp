<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 사용</title>
</head>
<body>
	<%
		java.util.Calendar cal = Calendar.getInstance();
	%>
	오늘은
		<%= cal.get(java.util.Calendar.YEAR) %>년
		<%= cal.get(java.util.Calendar.MONTH) + 1 %>월
		<%= cal.get(java.util.Calendar.DATE) %>일
	입니다.

</body>
</html>

<%-- (결과확인) 오늘은 2020년 6월 4일 입니다. --%>