<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Application</title>  
		<link rel ="stylesheet" type = "text/css" href = "css/activityInfo.css"/> 	
		<script>
    		function disp_alert()
			{
				alert("正在发送申请...")
			}
		</script>
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
	<div class="activityContents">
	<p class="a4"><b>活动主题:</b> <%=request.getParameter("activitytitle") %></p>
	<p class="a4"><b>活动发起人:</b><%=request.getParameter("activityuser") %></p>
	<p class="a4"><b>开始日期: </b><%=request.getParameter("activitybegintime") %></p>
	<p class="a4"><b>截至日期: </b><%=request.getParameter("activityendtime") %></p>
	<span class="a4"><b>活动详情:</b></span>
	<div class="detailContents">
	<span class="a4"><%=request.getParameter("activitycontent") %></span>
	</div>
	</div>
	<p class="a2">请问您为什么想要参加此活动？</p>
	<textarea name="ApplicationReason" cols="83" rows="12" style="margin-left:100px;"></textarea>
	<input type="button" onClick="disp_alert()" value="提交申请" size="30" class="button" style="margin:10px;margin-left:350px;">	
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