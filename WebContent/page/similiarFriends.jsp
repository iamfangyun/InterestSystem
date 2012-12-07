<html>
<head>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />  
		<meta name="generator" content="Adobe GoLive" /> 
		<title>Similiar Friends</title>  
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    	<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
		<link rel ="stylesheet" type = "text/css" href = "css/similiarFriends.css"/> 
		<script>
		/**menu**/
    		$(function() {
        	$( "#menu" ).menu();
    		});
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
		<li><a href="homepage.html">兴趣</a></li>
	</ul>
</div>

<div class="logo">
	<img src="image/logo.png" style="margin-left:135px;margin-top:30px;">
</div>


<div class="content">

	<div class="left">
		<div class="userPhoto"></div>
		
		<div class="userInfo">
			<p class="a2">用户名:</p>
			<p class="a2">性别:</p>
			<p class="a2">兴趣关键字:</p>
		</div>
		
		<div class="menu">
			<ul id="menu">
				<li><a href="activity.html">活动</a>
       			 	<ul>
            			<li><a href="activity.html">我参与的</a></li>
           				<li><a href="activity.html">我发起的</a></li>
            			<li><a href="activity.html">评论</a>
            			<ul>
            				<li><a href="activity.html">收到的评论</a></li>
            				<li><a href="activity.html">发出的评论</a></li>
            			</ul>
            			</li>
            			<li><a href="activity.html">收藏</a></li>
       			 	</ul>
    			</li>   				
   				<li><a href="similiarNews.html">相似度状态</a>
        			<ul>
        				<li><a href="similiarNews.html">相似度排序</a></li>
        				<li><a href="similiarNews.html">时间排序</a></li>
        			</ul>
            	</li>            	
                <li><a href="similiarFriends.html">相似度好友</a>
                	<ul>
                    	<li><a href="similiarFriends.html">通过相似度结识的好友</a></li>
                	</ul>
           		 </li>
            </ul>
		</div>		
	</div>

	<div class="center">
		<div class="highestSimiliar">
			<p class="a2">与您兴趣相似度最高的用户</p>
			<div class="highestSimiliarFriendsImage">
				<img src="image/friendsImage1.png">
			</div>
			<div class="highestSimiliarFriendsInfo">
				<p class="a2"><b>刘子渊</b></p>
				<p class="a2"><b>性别：</b>男</p>
				<p class="a2"><b>星座：</b>狮子座</p>
				<p class="a2"><b>相似度：</b>95%</p>
				<p class="a2"><b>兴趣关键词：</b>C语言，C++，JAVA，系统级编程，软件管理</p>
				<input type="button"  value="加为好友" style="border:hidden;background-color:#b33b44;color:#fff" />		
			</div>
		</div>
		<div class="friendsTab">
				<a href="#">
	            <input type="submit"  value="查看全部" style="border:hidden;background-color:#d6c8a0;" /></a>
			    <a href="#">
				<input type="submit"  value="查看同区域" style="border:hidden;background-color:#fefef4;" /></a> 
		</div>
	
		<div class="highSimiliar">
			<p class="a2">与您兴趣相似度较高的用户</p>
			<div class="leftpart">
				<div class="friendsInfo">
					<div class="friendsImage">
						<img src="image/friendsImage2.png">
					</div>
					<div class="friendsAdd">
						<scan class="a2"><b>韵涵</b></scan><br/>
						<scan class="a2"><b>兴趣关键词：</b>系统分析设计</scan><br/>
						<input type="button"  value="加为好友" style="border:hidden;background-color:#b33b44;color:#fff" />
					</div>
				</div>
				<div class="friendsInfo"></div>
				<div class="friendsInfo"></div>
				<div class="friendsInfo"></div>
			</div>
			<div class="rightpart">
				<div class="friendsInfo"></div>
				<div class="friendsInfo"></div>
				<div class="friendsInfo"></div>
				<div class="friendsInfo"></div>
			</div>
	
			<div class="page">
				<ul class="a5">
					<li><a href="#">上一页</a></li>
					<li><a href="#">下一页</a></li>
				</ul>
			</div>
		</div>
		<div class="middleSimiliar">
			<p class="a2">与您兴趣部分相似的用户</p>
		</div>
		<div class="possibleSimiliar">
			<p class="a2">与您兴趣可能相似的用户</p>
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
			<img src="image/advertisement3.png" style="margin-top:-10px;">						
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