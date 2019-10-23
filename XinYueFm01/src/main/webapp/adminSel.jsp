<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>adminSel</title>
	<script type="text/javascript" src="JS/layui/layui.js"></script>
	<link rel="stylesheet" href="JS/layui/css/layui.css">
	
</head>
<body>
	<table class="layui-table">
		<colgroup>
			<col width="200">
			<col width="150">
			<col>
		</colgroup>
		<thead>
		<tr>
			<th>账号</th>
			<th>昵称</th>
			<th>创建时间</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${admins }" var="a">
			<tr>
				<td>${a.ano }</td>
				<td>${a.aname }</td>
				<td>${a.adate }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>