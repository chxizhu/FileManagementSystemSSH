<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>企业文件资源管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!--自定义样式-->
<style>
.mtop {
	margin-top: 200px;
}

.same {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	border: 1;
	height: 45px;
}

.text {
	width: 80%;
}

.btn {
	width: 20%;
}

.footer {
	margin-top: 30px;
	margin-bottom: 30px;
	text-align: center;
}
</style>

</head>

<body>
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

				<li class="layui-nav-item "><a href="uplode.jsp">文件上传</a></li>

				<li class="layui-nav-item "><a href="ownfile.jsp">个人文件管理</a></li>

				
				<li class="layui-nav-item layui-col-md-offset6"><a href="javascript:;">欢迎您：${loginUser.username}</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="UserInformationEdit.jsp">个人信息修改</a>
						</dd>
						<dd>
							<a href="passwordEdit.jsp">密码修改</a>
						</dd>
						
					</dl></li>

				
				<li class="layui-nav-item "><a href="login.jsp" onclick="if(confirm('你确定要退出吗？')==false)return false">退出</a></li>

			</ul>

		</div>
	</div>

	<!--主要內容-->
	<div class="layui-fluid">

		<div class="layui-row">
			<div class="layui-col-md12 ">

				<div class="layui-card" style="margin-top: 20px;">
					<div class="layui-card-header">个人文件管理</div>
					<div class="layui-card-body">
						<table class="layui-hide" id="test" lay-filter="test"></table>
					</div>

				</div>
			</div>

		</div>

		<div class="layui-footer footer">
			<div class="layui-main">
				<p>
					&copy; 2019 <a href="">文件资源管理系统</a>
				</p>
			</div>
		</div>

		<script src="layui/layui.js" charset="utf-8"></script>

		<script>
			layui.use('element', function() {
				var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

				//监听导航点击
				element.on('nav(demo)', function(elem) {
					//console.log(elem)
					layer.msg(elem.text());
				});
			});
		</script>


		<script type="text/html" id="barDemo">
				  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">下载</a>
				<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
				<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
			</script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem : '#test',
					url : 'ownfile.action',
					toolbar : '#toolbarDemo',
					title : '用户数据表',
					cols : [ [ {
						type : 'checkbox',
						fixed : 'left'
					}, {
						field : 'filename',
						title : '文件标题',
						fixed : 'left',
						unresize : true,
						sort : true
					}, {
						field : 'authorityname',
						title : '权限',
						width : 80,
						sort : true,
						edit: 'text'
						
					}, {
						field : 'filesize',
						title : '大小',
						width : 120,
						sort : true
					}, {
						field : 'lable',
						title : '标签',
						
						
					}, {
						field : 'typename',
						title : '类型',
						sort : true,
						width : 80
						
					}, {
						field : 'uptime',
						title : '上传时间',
						sort : true
					}, 
					
					{
						field : 'dscribe',
						title : '说明',
					
					}, 
					
					{
						fixed : 'right',
						title : '操作',
						toolbar : '#barDemo',
						width : 180
					} ] ],
					page : true
				});

				//监听行工具事件
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					//console.log(obj)
					if (obj.event === 'del') {
						layer.confirm('确认删除本文件吗？（删除后不可恢复）', function(index) {
							obj.del();
							layer.close(index);
							var fileid = data.fileid; 
							window.location.href="deleteownfile.action?fileid="+fileid;	
						});
					}

					else if (obj.event === 'detail') {	
						var fileid = data.fileid; 
						window.location.href="downloadAction.action?fileid="+fileid;
					}  
					else if (obj.event === 'edit') {
						layui.use('layer', function(){
						  
						  var fileid = data.fileid; 
						  
						    window.location.href="fileupdating.action?fileid="+fileid;
						});  
					}
				});
			});
			
			
			
				layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
		
		
		</script>
</body>

</html>