<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Login</title>  
		<link rel ="stylesheet" type = "text/css" href = "css/login.css"/>
</head>

<body>
<div class="logo">
	<img src="image/logo.png" style="margin-left:135px;margin-top:30px;">
</div>

<div class="content">
	<img src="image/loginImage.png" style="margin-left:10px;margin-top:5px;">
	<p class="a1">用户名:
	<input name="username" type="text" id="textfield" value="" class="input" maxlength="20" /></p>
	<p class="a1">密码:
	<input name="password" type="password" id="textfield" value="" class="input" maxlength="40" style="margin-left:33px;"/></p>
	<form action="登陆" method="post">		
	<input type="submit" value="Login" size="30" class="button" style="margin:30px;margin-left:200px;">	
	</form>
</div>



</body>
</html>