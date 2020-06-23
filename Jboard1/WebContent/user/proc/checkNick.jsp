<%@page import="kr.co.jboard1.config.SQL"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.co.jboard1.config.DBConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String nick = request.getParameter("nick");
	
	Connection conn = DBConfig.getConnection();
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_NICK);
	psmt.setString(1, nick);
	
	ResultSet rs = psmt.executeQuery();
	
	int result = 0;
	
	if(rs.next()){
		result = rs.getInt(1);
	}
	
	rs.close();
	psmt.close();
	conn.close();
	
	// Json 생성
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	
	// Json 전송
	out.print(json);
	
%>