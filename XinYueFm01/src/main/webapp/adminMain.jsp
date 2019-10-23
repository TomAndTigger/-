<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>后台主界面</title>
	<script type="text/javascript" src="JS/layui/layui.js"></script>
	<link rel="stylesheet" href="JS/layui/css/layui.css">
	
	<script type="text/javascript" src="JS/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
		  	$("#left li").click(function(){
		   		$(this).addClass("selected").siblings().removeClass("selected");
		  	});
		});
		
	</script>
	<style type="text/css">
		.selected{
			background: lightblue;
		}
	</style>
	</head>
	<body>
		<!-- 菜单栏 -->
		<ul class="layui-nav layui-bg-green">
			<li class="layui-nav-item">
				<a style="font-size: 28px;">后台管理</a>
			</li>
			<li class="layui-nav-item" style="padding-left:900px;">
				<a href="javascript:void(0)"><img src="img/324499.jpg" class="layui-nav-img">${admin.aname }</a>
			</li>
			<li class="layui-nav-item">
				<a href="adminExit">退出</a>
			</li>
		</ul>
		
		<!-- 侧边导航lay-filter="test" -->
		<ul id="left" class="layui-nav layui-nav-tree layui-bg-green" style="margin-top:10px;">
			<li	class="layui-nav-item">
				<a href="check.jsp" target="rightframe">审核管理</a>
			</li>
		</ul>
		
		
		<!-- 右侧 -->
		<iframe name="rightframe" scrolling="no" style="border-color: green;width:1000px;height:500px;margin:-30px 260px;">
			
		</iframe>
	</body>
</html>