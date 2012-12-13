<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Activity Information</title>  
		<link rel ="stylesheet" type = "text/css" href = "css/activityInfo.css"/> 	
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
	<p class="a2">活动标题
	<input name="activityTitle" type="text" id="textfield" value="" class="input" maxlength="20" /></p>
	
	<form><span class="a2">活动领域</span>
	<select name="cars" style="margin-left:30px;">
		<option value="volvo">教育</option>
		<option value="saab">游戏</option>
		<option value="fiat" selected="selected">生活休闲</option>
		<option value="audi">行业交流</option>
		<option value="audi">考试学习</option>
		<option value="audi">兴趣爱好</option>
		<option value="audi">产品交流</option>
		<option value="audi">专题研究</option>
		<option value="audi">其它</option>
	</select>
	</form>
	
	<p class="a2">活动时间
	<input name="activityTime" type="text" id="textfield" value="" class="input" maxlength="20" /></p>
	<p class="a2">需要人数
	<input name="activityPeople" type="text" id="textfield" value="" class="input" maxlength="20" /></p>
	
	<form><span class="a2">活动地点</span>
	<select name="cars" style="margin-left:30px;">
		<option value="volvo">北京</option>
		<option value="saab">天津</option>
		<option value="fiat" selected="selected">上海</option>
		<option value="audi">深圳</option>
		<option value="audi">四川</option>
		<option value="audi">广东</option>
		<option value="audi">新疆</option>
		<option value="audi">钓鱼岛</option>
	</select>
	</form>
	
	<p class="a2">活动详细介绍
	<textarea name="ActivityIntroduction" cols="70" rows="10" style="margin-left:5px;"></textarea></p>
	<p class="a2">特殊需求
	<textarea name="ActivityIntroduction" cols="70" rows="6" style="margin-left:30px;"></textarea></p>
	<input type="button" value="提交申请" size="30" class="button" style="margin:10px;margin-left:350px;">	
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