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
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

				<li class="layui-nav-item "><a href="seek.jsp">文件搜索</a></li>

				<li class="layui-nav-item "><a href="javascript:;">文件上传</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="uplode.jsp">文件上传</a>
						</dd>
						<dd>
							<a href="addEdit.jsp">创建文档<span
								class="layui-badge-dot layui-bg-blue"></a>
						</dd>

					</dl></li>

				<li class="layui-nav-item "><a href="ownfile.jsp">个人文件管理</a></li>


				<li class="layui-nav-item layui-col-md-offset6"><a
					href="javascript:;">欢迎您：${loginUser.username}</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="UserInformationEdit.jsp">个人信息修改</a>
						</dd>
						<dd>
							<a href="passwordEdit.jsp">密码修改</a>
						</dd>

					</dl></li>


				<li class="layui-nav-item "><button data-method="confirmTrans"
						class="layui-btn layui-bg-blue">退出</button></li>

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
						<form class="layui-form" action="savefileupdating.action">
							<input type="text" name="fileid" lay-verify="required"
								value="${fileid }" id="title" autocomplete="off"
								placeholder="文件id" class="layui-input layui-hide">
							<div class="layui-form-item">
								<label class="layui-form-label">文件标题</label>
								<div class="layui-input-block">
									<input type="text" name="filename" lay-verify="required"
										value="${title }" id="title" autocomplete="off"
										placeholder="文件标题内容" class="layui-input">
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
										autocomplete="off" value="${labe}"
										placeholder="请输入文件标签，标签之间用，隔开" class="layui-input">
								</div>
							</div>

							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">文件简介</label>
								<div class="layui-input-block">
									<textarea placeholder="请简介输入内容" name="dscribe"
										lay-verify="required" class="layui-textarea">${authority}</textarea>
								</div>
							</div>

							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn  layui-btn-normal" lay-submit=""
										lay-filter="demo1">立即提交</button>
									<a href="ownfile.jsp" class="layui-btn layui-btn-primary">返回</a>
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

	<script>
		layui.use('layer', function() { //独立版的layer无需执行这一句
			var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

			//触发事件
			var active = {
				confirmTrans : function() {
					//配置一个透明的询问框
					layer.msg('确定要退出嘛？', {
						time : 20000, //20s后自动关闭
						btn : [ '确定', '取消' ],
						yes : function(index, layero) { // 默认的是 按钮一
							window.location.href = "login.jsp"
						}
					});
				}

			};

			$('#layerDemo .layui-btn').on('click', function() {
				var othis = $(this), method = othis.data('method');
				active[method] ? active[method].call(this, othis) : '';
			});

		});
	</script>
</body>

</html>