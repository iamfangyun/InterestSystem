<%@ page language="java" import="bean.*,java.util.*,util.DateUtil;" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User)session.getAttribute("user");
	List<Activity> activities = (List<Activity>)request.getAttribute("activities");
%>
<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Activity</title>  
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    	<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
		<link rel ="stylesheet" type = "text/css" href = "css/activity.css"/> 	
		<script>
    		$(function() {
        	$( "#menu" ).menu();
    		});
    		
    		/**comment**/
    		function click_a(divDisplay)
    		{
           		if(document.getElementById(divDisplay).style.display != "block")
           		{
                	document.getElementById(divDisplay).style.display = "block";
           	 	}
        		else
            	{
                	document.getElementById(divDisplay).style.display = "none";
            	}
        	}
    		
    		function click_add(formid)
    		{
    			$("#form"+formid).submit();
    		}
        	
        	/**collection successfully!**/
        	function disp_alert()
			{
			alert("收藏成功")
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

	<div class="left">
		<div class="userPhoto"><img src="<%=user.getImage() %>"></img></div>
		
		<div class="userInfo">
			<p class="a2">用户名: <%=user.getUsername() %></p>
			<p class="a2">性别: <%=user.getSex() %></p>
			<p class="a2">兴趣关键字: <%=user.getHobby() %></p>
		</div>
		
		<div class="menu">
				<ul id="menu">
					<li><a href="Handler?method=queryactivities">活动</a>
						<ul>
							<li><a href="Handler?method=queryactivities">我参与的</a></li>
							<li><a href="Handler?method=queryactivities">我发起的</a></li>
							<li><a href="Handler?method=queryactivities">评论</a>
								<ul>
									<li><a href="Handler?method=queryactivities">收到的评论</a></li>
									<li><a href="Handler?method=queryactivities">发出的评论</a></li>
								</ul></li>
							<li><a href="Handler?method=queryactivities">收藏</a></li>
						</ul></li>
					<li><a href="Handler?method=queryposts">相似度状态</a>
						<ul>
							<li><a href="Handler?method=queryposts">相似度排序</a></li>
							<li><a href="Handler?method=queryposts">时间排序</a></li>
						</ul></li>
					<li><a href="Handler?method=similiarfriends">相似度好友</a>
						<ul>
							<li><a href="Handler?method=similiarfriends">通过相似度结识的好友</a></li>
						</ul></li>
				</ul>
			</div>	
	</div>
	
	<div class="center">
		<div class="createActivity">
			<img src="image/createActivity.jpg">
			<form action="发起活动" method="post">
            	<textarea name="活动" cols="70" rows="8"></textarea>
        		<a href="activityInfo.jsp"><input type="button" value="提交" size="30" class="button" style="margin-left:408px;"></a>
        	</form>  
		</div>
		
		<div class="activityTab">
				<a href="#">
	            <input type="submit"  value="兴趣活动" style="border:hidden;background-color:#d6c8a0;" /></a>
			    <a href="#">
				<input type="submit"  value="个人活动" style="border:hidden;background-color:#fefef4;" /></a>  
				<a href="#">
				<input type="submit"  value="所有活动" style="border:hidden;background-color:#fefef4" /></a>  
		</div>
		
		<div class="activityInfo">
		<%
			int i = 0;
			for (Activity activity : activities) {
				i++;
		%>
			<div class="singleInfo">
				<div class="activityContents">
					<div class="headImage">
						<img src="<%=activity.getUserImage() %>"></img>
					</div>
					<div class="detailContents">
						<p class="a2"><b><%=activity.getTitle() %></b></p>
						<p class="a2"><%=activity.getContent() %></p>
					</div>
					<div class="dateInfo">
						<span class="a2">开始日期：<%=DateUtil.toStr(activity.getBeginTime()) %></span>&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="a2">截至日期：<%=DateUtil.toStr(activity.getEndTime()) %></span>
					</div>
				</div>
				<div class="operation">
				<form action="Handler" method="Post" id="form<%=i %>">
					<input type="hidden" name="method" value="applypage"/>
					<input type="hidden" name="activitytitle" value="<%=activity.getTitle() %>" />
					<input type="hidden" name="activityuser" value="<%=activity.getUsername() %>" />
					<input type="hidden" name="activitybegintime" value="<%=DateUtil.toStr(activity.getBeginTime()) %>" />
					<input type="hidden" name="activityendtime" value="<%=DateUtil.toStr(activity.getEndTime()) %>" />
					<input type="hidden" name="activitycontent" value="<%=activity.getContent() %>" />
					<ul class="a2">
						<li><a href="javascript:click_add(<%=i %>);">申请加入</a></li>
						<li onClick="return click_a('comment<%=i %>')" style="cursor:pointer;">评论</li>
						<li onClick="disp_alert()" style="cursor:pointer;">收藏</li>
						<li onClick="return click_a('report<%=i %>')" style="cursor:pointer;">举报</li>
					</ul>
					</form>
				</div>
				
        		<div id="comment<%=i %>" style="display:none;">
        			<form action="comment" method="post">
            			<textarea name="comment" cols="78" rows="3"></textarea>
        					<input type="submit" value="提交" style="border:hidden;background-color:#b82e4f;color:#FFF;float:right;" />
        			</form>  
        		</div>
        		
        		<div id="report<%=i %>" style="display:none;">
        			<form action="report" method="post">
            			<textarea name="report" cols="78" rows="3"></textarea>
        					<input type="submit" value="提交举报信息" style="border:hidden;background-color:#b82e4f;color:#FFF;float:right;" />
        			</form>  
        		</div>
			</div>
			
			<% } %>
		</div>
		
		<div class="page">
			<ul class="a5">
			<li><a href="#">上一页</a></li>
			<li><a href="#">下一页</a></li>
			</ul>
		</div>
	</div>
	
	<div class="right">
		<div class="mainElement">
			<p class="a2">网站元素</p>
			<p class="a4"><a href="#"><b>我的新鲜事</b></a></p>
			<p class="a4"><a href="#"><b>我的粉丝</b></a></p>
			<p class="a4"><a href="#"><b>我的关注</b></a></p>
			<p class="a4"><a href="#"><b>热门话题</b></a></p>
			<p class="a4"><a href="#"><b>热门应用</b></a></p>
			<p class="a4"><a href="#"><b>会员专区</b></a></p>
		</div>
	
		<div class="hyperlink">
			<p class="a2">兴趣链接</p>
			<p class="a4"><a href="http://huati.weibo.com/25244?order=time">地球日，时尚节比拼</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25244?order=time">央视被抢答很幸福</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25065?order=time">消除歧视，用心温暖艾滋病日</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25112?order=time">请问玛雅人靠谱吗</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25119?order=time">流浪动物怎么过冬</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25028?order=time">北京新地铁全图出炉</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25151?order=time">美国欲送8万人到火星</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25192?order=time">马刺 VS 热火</a></p>
			<p class="a4"><a href="http://huati.weibo.com/22642?order=time">随手乱拍扔垃圾</a></p>
			<p class="a4"><a href="http://huati.weibo.com/25186?order=time">南京青奥会吉祥物遭吐槽</a></p>
		</div>
		
		<div class="advertisement">
			<p class="a2">广告平台</p>		
			<img src="image/advertisement.png" style="margin-top:-10px;">						
		</div>
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