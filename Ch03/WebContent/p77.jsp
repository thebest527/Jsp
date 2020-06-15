<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter() 메서드 사용</b><br>
name 파라미터 = <%= request.getParameter("name") %><br>
address 파라미터 = <%=request.getParameter("address") %>
<p>
<b>request.getParameterValue() 메서드 사용</b><br>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null) {
		for(int i = 0 ; i < values.length ; i++) {
%>
	<%= values[i] %>
<%
		}
	}
%>
<p>
<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<% 
	}
%>
<p>
<b>request.getParameterMap() 메서드 사용 </b><br>
<%
	 Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if (nameParam != null) {
%>
	name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>

<%-- (결과확인) // p76 폼에서 입력한 내용이 출력된다.
request.getParameter() 메서드 사용
name 파라미터 = 장영실
address 파라미터 = 서면 

request.getParameterValue() 메서드 사용
dog cat

request.getParameterNames() 메서드 사용
name address pet

request.getParameterMap() 메서드 사용
name = 장영실

 --%>