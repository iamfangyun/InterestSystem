<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
success
<%
	User user = (User)request.getAttribute("user");
	String username = user.getUsername();
	String university = user.getUniversity();
%>
<h1>hellooo, <%=username %></h1>
<h1>are you from <%=university %> ?</h1>
</body>
</html>