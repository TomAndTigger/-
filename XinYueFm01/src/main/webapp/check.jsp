<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>check</title>
	<script type="text/javascript" src="JS/easyUI/jquery.min.js"></script>
	<script type="text/javascript" src="JS/easyUI/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="JS/easyUI/locale/easyui-lang-zh_CN.js"></script>
	
	<link type="text/css" rel="stylesheet" href="JS/easyUI/themes/icon.css" />
	<link type="text/css" rel="stylesheet" href="JS/easyUI/themes/default/easyui.css" />
	
	<script type="text/javascript">
		$(function(){
			$("#infos").datagrid({
				width:700,
				title:"音频审核",
				columns:[[
					{title:"编号",field:"chid",width:"70"},
					{title:"章节名",field:"chname",width:"100"},
					{title:"专辑名称",field:"pname",width:"100"},
					{title:"用户名",field:"uname",width:"150"},
					{title:"审核状态",field:"chcheck",width:"100"},
					{title:"时间",field:"chdate",width:"150"}
				]],
				url:"check",
				toolbar:"#aaa",
				singleSelect:true,
				/* pagination:true,
				pagesize:5,
				pageList:[5,10] */
			});
		});
		//通过按钮的方法
		function yupd(){
			var row=$("#infos").datagrid("getSelected");
			if(row==null){
				$.messager.alert("确定","请选择一行进行操作","info");
				return;
			}
			if(row.chcheck=="审核通过"){
				$.messager.alert("审核","审核已通过","info");
				return;
			}
			/* var chids=[];
			for(var i=1;i<=row.length;i++){
				var chid=row[i].chid;
				chids.push(chid);
			}
			$.messager.confirm("通过","确定通过？",function(flag){
				if(flag){
					$.post("yupd",{"chids":chids},function(){
						$.messager.alert("通过","成功","info");
						$("#infos").datagrid("load");
					});
				};
			}); */
			$.messager.confirm("通过","确定通过？",function(flag){
				if(flag){
					$.post("yupd",{"chid":row.chid},function(){
						$.messager.alert("通过","成功","info");
						$("#infos").datagrid("load");
					});
				}
			});
		};
		//不通过按钮的方法
		function wupd(){
			var row=$("#infos").datagrid("getSelected");
			if(row==null){
				$.messager.alert("确定","请选择一行进行操作","info");
				return;
			}
			if(row.chcheck=="审核未通过"){
				$.messager.alert("审核","审核已未通过","info");
				return;
			}
			$.messager.confirm("不通过","确定不通过？",function(flag){
				if(flag){
					$.post("wupd",{"chid":row.chid},function(){
						$.messager.alert("不通过","成功","info");
						$("#infos").datagrid("load");
					});
				}
			});
		};
	</script>
</head>
<body>
	<div id="infos">
		
	</div>
	<div id="aaa">
		<div>
			<a href="javascript:yupd();" class="easyui-linkbutton" data-options="plain:true" style="background: lightgray;">通过</a>
			<a href="javascript:wupd();" class="easyui-linkbutton" data-options="plain:true" style="background: lightgray;">不通过</a>
		</div>
	</div>
</body>
</html>