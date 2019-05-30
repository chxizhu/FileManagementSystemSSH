<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>企业文件资源管理系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!--自定义样式-->
<style>
.mtop {
	margin-top: 100px;
}

.same {
	padding: 0;
	margin-top: -2px;
	margin-left: -1px;
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
	margin-top: 100px;
	text-align: center;
}
</style>

</head>

<body>
	<!--导航信息 -->

	<div class="layui-row ">
		<div class="layui-col-md12">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="index.jsp">文件资源管理系统</a></li>

				<li class="layui-nav-item "><a href="uplode.jsp">文件上传</a></li>

				<li class="layui-nav-item "><a href="ownfile.jsp">个人文件管理</a></li>

				<li class="layui-nav-item "><a href="UserInformationEdit.jsp">用户基础信息修改</a>
				</li>

				<li class="layui-nav-item "><a href="passwordEdit.jsp">密码修改</a>
				</li>

				<li class="layui-nav-item layui-col-md-offset4"><a
					href="javascript:;">欢迎您：${loginUser.username}</a></li>
				<li class="layui-nav-item "><a href="login.jsp">退出</a></li>

			</ul>

		</div>
	</div>

	<div class="layui-container">
		<div class="layui-row mtop">
			<div class="layui-col-md12"></div>
				<div style="text-align:center"><img src="imgs/succeed.png" alt="layui" style="width:200px; text-align:center"></div>
				<div style="text-align:center;margin-top: 50px;font-size:25px"><a>文件上传成功</a></div>
				<div style="text-align:center;margin-top: 50px;">
    <a href="uplode.jsp" class="layui-btn layui-btn-normal" style="margin-right: 50px;">继续上传</a>
     <a href="ownfile.jsp" class="layui-btn layui-btn-normal" style="margin-right: 50px;">查看文件</a>
      <a href="index.jsp" class="layui-btn layui-btn-normal" >返回主页</a>
    
  </div> 
		</div>
		
	</div>

	<div class="layui-footer footer">
		<div class="layui-main">
			<p>
				&copy; 2019 <a href="javascript:;">文件资源管理系统</a>
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

</body>

</html>