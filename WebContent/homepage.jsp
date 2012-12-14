<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Homepage of Interest</title>  
		<link rel ="stylesheet" type = "text/css" href = "css/homepage.css"/>
</head>

<body>
<div class="navigator">
	<ul class="a1">
		<li>首页</li>
		<li>我的空间</li>
		<li>应用</li>
		<li>好友</li>
		<li>探索</li>
		<li><a href="homepage.jsp">兴趣</a></li>
	</ul>
</div>

<div class="logo">
	<img src="image/logo.png" style="margin-left:135px;margin-top:30px;">
</div>

<div class="content">
<div class="guideline">
 	<a href="Handler?method=queryactivities"><div class="activity"></div></a>
	<a href="Handler?method=queryposts"><div class="similiarNews"></div></a>	
    <a href="Handler?method=similiarfriends"><div class="similiarFriends"></div></a>	
</div>
</div>

<div class="bottom">
	<ul class="a3">
		<li>服务热线</li>
		<li>意见反馈</li>
		<li>投诉</li>
		<li>帮助中心</li>
		<li>关于我们</li>
	</ul>
</div>

</body>
</html>