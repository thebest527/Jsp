<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%!
	public int multiply(int a, int b) {
		int c = a * b;
		return c;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수 값의 곱</title>
</head>
<body>
	10 * 25 = <%= multiply(10, 25) %>

</body>
</html>

<%-- (결과확인) 10 * 25 = 250 --%>