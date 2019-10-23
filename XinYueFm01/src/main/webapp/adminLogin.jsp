<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>后台登录</title>
	<script type="text/javascript" src="JS/layui/layui.js"></script>
	<link rel="stylesheet" href="JS/layui/css/layui.css">
	</head>
	<body style="background:#F0F0F0;">
		
		<div style="width:400px;height:300px;margin: 100px auto;">
			<h1 style="text-align: center;color:#d500ff;">后台登录</h1><br/><br/>
			<p style="width:170px;height:30px;margin:auto;color: red;font-size: 20px;">${alter }</p>
			<form class="layui-form" action="adminLogin" method="post">
				<div class="layui-form-item" style="margin-left:-30px;">
					<label class="layui-form-label" style="font-size:18px;color:#2F4056;">账号</label>
					<div class="layui-input-block">
						<input type="text" name="ano" required lay-verify="required"
						placeholder="请输入账号" autocomplete="off" class="layui-input" />
					</div>
				</div>
				<div class="layui-form-item" style="margin-left:-30px;">
					<label class="layui-form-label" style="font-size:18px;color:#2F4056;">密码</label>
					<div class="layui-input-block">
						<input type="password" name="apwd" required lay-verify="required"
						placeholder="请输入密码"  autocomplete="off" class="layui-input" />
					</div>
				</div>
				<div class="layui-form-item" style="padding-left:200px;padding-top: 10px;">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit lay-filter="formDemo">登录</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>