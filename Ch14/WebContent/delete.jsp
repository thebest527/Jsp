<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
//파라미터 수신
	request.setCharacterEncoding("UTF-8");

	String uid  = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp   = request.getParameter("hp");
	String pos  = request.getParameter("pos");
	String dep  = request.getParameter("dep");
	
	// DB정보
	String host ="jdbc:mysql://192.168.44.46:3306/psr";
	String user ="psr";
	String pass ="1234";
	
	// 1단계
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	// 3단계
	String sql = "DELETE FROM `MEMBER` WHERE `uid`=?"; 
	Statement stmt = conn.prepareStatement(sql);
	stmt.setInt(0, uid);
	

	
	// 4단계
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계
	// 6단계
	rs.close();
	stmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect("./list.jsp");

%>