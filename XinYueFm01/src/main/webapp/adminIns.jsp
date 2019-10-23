<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>后台登录</title>
	<style type="text/css">
		/* div{
			width: 300px;
			height: 300px;
			border: 1px solid black;
			margin: 100px auto;
		}
		h2{
			margin-left: 90px;
		}
		form{
			margin-left: 50px;
		} */
	</style>
	</head>
	<body>
		<div>
			<h2>后台注册</h2><br/>
			<form action="adminIns" method="post">
				账号：<input type="text" name="ano" /><br/><br/>
				密码：<input type="password" name="apwd" /><br/><br/>
				昵称：<input type="text" name="aname" /><br/><br/>
				<input type="submit" value="注册" />
				<input type="reset" value="重置" />
			</form>
		</div>
	</body>
</html>