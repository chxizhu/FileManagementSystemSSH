<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<title>文件下载</title>
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
			.fontsize{
				font-size: large;
				
			}
		</style>
</head>
<body class="bcolor">
	<!--导航信息 -->
		<div class="layui-row">
			<div class="layui-col-md12">

				<ul class="layui-nav layui-bg-blue">
					<li class="layui-nav-item">
						<a href="">文件资源管理系统</a>
					</li>
					<li class="layui-nav-item layui-this">
						<a href="">文件下载</a>
					</li>

					<li class="layui-nav-item layui-col-md-offset8">
						<a href="">欢迎您：xxx</a>
					</li>
					<li class="layui-nav-item ">
						<a href="">退出</a>
					</li>

				</ul>

			</div>
		</div>
		
		
			<!--主要內容-->
		<div class="layui-container mtop">
			<div class="layui-row">
				<div class="layui-col-md10 layui-col-md-offset1 ">
					<div class="layui-card">
						

							

							<div ><p class="fontsize" style="margin-top: 30px;margin-bottom: 10px;">文件基本信息</p></div>
							<hr class="layui-bg-blue">
							<form class="layui-form" action="">
								<div class="layui-form-item">
									<label class="layui-form-label">文件标题</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label">上传时间</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">上传作者</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件路径</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件类型</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件权限</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件标签</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="123" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">文件说明</label>
									<div class="layui-input-block">
										<textarea  class="layui-textarea" disabled="disabled" >123</textarea>
									</div>
								</div>

								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="layui-btn  layui-btn-normal" lay-submit="" lay-filter="demo1" >文件下载</button>
										
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="layui-footer" style="margin-top: 20px;margin-bottom: 30px.;text-align: center;">
			<div class="layui-main">
				<p>&copy; 2019
					<a href="/">文件资源管理系统</a>
				</p>
			</div>
		</div>
		
	
	<script src="layui/layui.js" charset="utf-8"></script>
</body>
</html>