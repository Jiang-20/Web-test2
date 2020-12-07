<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
		<title>系统主页</title>
	</head>
	<body>
		<div id="container">
			<div id="header">
				<div id="rightTop">
					当前用户，<span>${currentUser.chrName}</span> &nbla;[a <a href="logout.do">安全退出</a>]
					
				</div>
				<div id="menu">
					<ul>
						<li><a href="#">首页</a></li>
						<li class="menuDiv"></li>
						<li><a href="getDowndownList.do">下载</a></li>
						<li class="menuDiv"></li>
						<li><a href="#">增加</a></li>
						<li class="menuDiv"></li>
						<li><a href="#">查询</a></li>
						<li class="menuDiv"></li>
						<li><a href="#">论坛</a></li>
						<li class="menuDiv"></li>
						<li><a href="#">关于</a></li>
					</ul>
				</div>
				
				<div id="banner">
					<div id="headline">
					
					</div>
					<h1 id="wenzi">这是我的主页面</h1>
				</div>
			</div>
			
		</div>
		
	</body>
</html>
