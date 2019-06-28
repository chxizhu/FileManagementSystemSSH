<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>文件资源管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="fly,layui,前端社区">
<meta name="description"content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
<link rel="stylesheet" href="layui/css/layui.css">
<link rel="stylesheet" href="css/global.css">
</head>

<body  style="background-color:#ffffff;">
	<div class="fly-header layui-bg-blue">
		<div class="layui-fluid">
			<div >
			<ul class="layui-nav" lay-filter="">
			<li class="layui-nav-item"><a style="font-size: 18px;">文件资源管理系统</a> </li>
			</ul>
			</div>
			<ul class="layui-nav fly-nav-user">
				<!-- 未登入的状态 -->
				<li class="layui-nav-item"><a class="iconfont icon-touxiang layui-hide-xs" href="#"></a></li>
				<li class="layui-nav-item"><a href="#">登录</a></li>

			</ul>
		</div>
	</div>

	<div class="layui-container fly-marginTop">
		<div class="layui-row">
		<div class="layui-col-md3 " style="margin-top:120px;">
		<img src="imgs/login.png" />
		</div>
		
			<div class="layui-col-md6 layui-col-md-offset3" style="margin-top:50px;">
				<div class="fly-panel fly-panel-user" pad20>
					<div class="layui-tab layui-tab-brief" lay-filter="user" >
						<ul class="layui-tab-title">
							<li class="layui-this">登录</li>
						</ul>
						<div class="layui-form layui-tab-content" id="LAY_ucm"
							style="padding: 20px 0;">
							<div class="layui-tab-item layui-show">
								<div class="layui-form layui-form-pane">
									<form method="post" action="loginAction.action">
										<div class="layui-form-item">
											<label for="L_email" class="layui-form-label">用户名</label>
											<div class="layui-input-inline">
												<input type="text" id="L_email" name="userid"
													value="${userid }" required lay-verify="required"
													class="layui-input">
											</div>
										</div>
										<div class="layui-form-item">
											<label for="L_pass" class="layui-form-label">密码</label>
											<div class="layui-input-inline">
												<input type="password" id="L_pass" name="pwd"
													value="${pwd }" required lay-verify="required"
													autocomplete="off" class="layui-input">
											</div>
										</div>
										<div class="layui-form-item">
											<label for="L_vercode" class="layui-form-label">验证码</label>
											<div class="layui-input-inline">
												<input type="text" id="L_vercode" name="varify" required
													lay-verify="required" placeholder="请输入验证码"
													autocomplete="off" class="layui-input">
											</div>
											<div class="layui-form-mid">
												<span style="color: #c00;"> <img id="img"
													src="SafeCode.do" width="90px" height="28px" /><a href="">看不清？</a></span>
											</div>
										</div>
										<div class="layui-form-item">
											<button class="layui-btn layui-bg-blue" lay-filter="*" lay-submit>立即登录</button>
											<span style="padding-left:20px;"> <a href="">忘记密码？</a>
											</span>
										</div>
										<div style="padding: 10px 20px; color="#FF0000 ";"><font color="#FF0000"> ${errorsTest }</font>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fly-footer">
		<p>
			<a href=""> &copy; 2019 文件资源管理系统</a>
		</p>

	</div>

	<script src="layui/layui.js"></script>
	<script>
		layui.use('form', function() {
			var form = layui.form;

			//各种基于事件的操作，下面会有进一步介绍
		});
	</script>

</body>

</html>