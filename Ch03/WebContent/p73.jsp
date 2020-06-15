<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트 및 서버 정보</title>
</head>
<body>

클라이언트IP = <%= request.getRemoteAddr() %><br>
요청정보길이 = <%= request.getContentLength() %><br>
요청정보 인코딩 = <%= request. getCharacterEncoding() %><br>
요청정보 컨텐츠 타입 = <%= request.getContentType() %><br>
요청정보 프로토콜 = <%= request.getProtocol() %><br>
요청정보 전송방식 = <%= request.getMethod() %><br>
요청 URL = <%= request.getRequestURL() %><br>
컨텍스트 경로 = <%= request.getContextPath() %><br>
서버이름 = <%= request.getServerName() %><br>
서버포트 = <%= request.getServerPort() %><br>

</body>
</html>

<%-- (결과확인)
				
http://localhost:8080/Ch03/p73.jsp

http://localhost: - request.getServerName()
8080 			  - request.getServerPort()
/Ch03/p73.jsp 	  - request.getRequestURL()

클라이언트IP = 0:0:0:0:0:0:0:1
요청정보길이 = -1
요청정보 인코딩 = null
요청정보 컨텐츠 타입 = null
요청정보 프로토콜 = HTTP/1.1
요청정보 전송방식 = GET
요청 URL = http://localhost:8080/Ch03/p73.jsp
컨텍스트 경로 = /Ch03
서버이름 = localhost
서버포트 = 8080
--%>