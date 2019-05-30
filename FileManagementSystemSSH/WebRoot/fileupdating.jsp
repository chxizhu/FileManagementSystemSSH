<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>layui</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!--自定义样式-->
<style>
.mtop {
	margin-top: 30px;
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
	margin-top: 300px;
	text-align: center;
}

.bcolor {
	background-color: #dddddd;
}

.fontsize {
	font-size: large;
}
</style>

</head>

<body class="bcolor">
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="index.jsp">文件资源管理系统</a></li>

				<li class="layui-nav-item "><a href="uplode.jsp">文件上传</a></li>

				<li class="layui-nav-item "><a href="ownfile.jsp">个人文件管理</a></li>

				<li class="layui-nav-item "><a href="UserInformationEdit.jsp">用户基础信息修改</a>
				</li>

				<li class="layui-nav-item layui-col-md-offset5"><a
					href="javascript:;">欢迎您：${loginUser.username}</a></li>
				<li class="layui-nav-item "><a href="login.jsp">退出</a></li>

			</ul>

		</div>
	</div>

	<!--主要內容-->
	<div class="layui-container mtop">
		<div class="layui-row">
			<div class="layui-col-md10 layui-col-md-offset1 ">
				<div class="layui-card">
					<div class="layui-card-header fontsize">文件信息修改</div>
					<hr class="layui-bg-blue">
					<div class="layui-card-body">
						<form class="layui-form" action="addfileAction.action">
							<div class="layui-form-item">
								<label class="layui-form-label">文件标题</label>
								<div class="layui-input-block">
									<input type="text" name="filename" lay-verify="required"
										id="title" autocomplete="off"
										placeholder="文件标题内容不可修改（如需修改请直接修改上传前文件标题）" readonly="true"
										class="layui-input">
								</div>
							</div>

							<div class="layui-form-item">
								<label class="layui-form-label">文件大小</label>
								<div class="layui-input-block">
									<input type="text" id="size" lay-verify="required"
										name="filesize" readonly="true" class="layui-input">
								</div>
							</div>

							<div class="layui-form-item">
								<label class="layui-form-label">文件权限</label>
								<div class="layui-input-block">
									<select name="authority_id" lay-filter="aihao">
										<option value=""></option>
										<option value="101" selected="">个人</option>
										<option value="102">部门</option>
										<option value="103">公司</option>

									</select>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">文件标签</label>
								<div class="layui-input-block">
									<input type="text" name="lable" lay-verify="required"
										autocomplete="off" placeholder="请输入文件标签，标签之间用，隔开"
										class="layui-input">
								</div>
							</div>

							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">文件简介</label>
								<div class="layui-input-block">
									<textarea placeholder="请简介输入内容" name="dscribe"
										lay-verify="required" class="layui-textarea"></textarea>
								</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn  layui-btn-normal" lay-submit=""
										lay-filter="demo1">立即提交</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="layui-footer"
		style="margin-top: 20px;margin-bottom: 30px.;text-align: center;">
		<div class="layui-main">
			<p>
				&copy; 2019 <a href="">文件资源管理系统</a>
			</p>
		</div>
	</div>

	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		layui.use('form', function() {
			var form = layui.form;

			//各种基于事件的操作，下面会有进一步介绍
		});
	</script>
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