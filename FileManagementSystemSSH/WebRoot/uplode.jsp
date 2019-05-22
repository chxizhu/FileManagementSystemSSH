<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>layui</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
						<a href="">文件上传</a>
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
						<div class="layui-card-header fontsize">文件上传</div>
						<hr class="layui-bg-blue">
						<div class="layui-card-body">

							<div class="layui-upload-drag" id="test10">
								<i class="layui-icon" style="color: #01AAED;"></i>
								<p>点击上传，或将文件拖拽到此处</p>
							</div>

							<div ><p class="fontsize" style="margin-top: 30px;margin-bottom: 10px;">基本信息</p></div>
							<hr class="layui-bg-blue">
							<form class="layui-form" action="">
								<div class="layui-form-item">
									<label class="layui-form-label">文件标题</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label">文件权限</label>
									<div class="layui-input-block" >
										<select name="interest" lay-filter="aihao">
											<option value=""></option>
											<option value="0" selected="">个人</option>
											<option value="1">部门</option>
											<option value="2">公司</option>

										</select>
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">文件标签</label>
									<div class="layui-input-block">
										<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">文件说明</label>
									<div class="layui-input-block">
										<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
									</div>
								</div>

								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="layui-btn  layui-btn-normal" lay-submit="" lay-filter="demo1">立即提交</button>
										<button type="reset" class="layui-btn layui-btn-primary">重置</button>
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

		<script>
			layui.use('element', function() {
				var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

				//监听导航点击
				element.on('nav(demo)', function(elem) {
					//console.log(elem)
					layer.msg(elem.text());
				});
			});

			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form,
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;
			});

			layui.use('upload', function() {
				var $ = layui.jquery,
					upload = layui.upload;
				//拖拽上传
				upload.render({
					elem: '#test10',
					url: '',
					accept: 'file',
					done: function(res) {
						console.log(res)
					},
				});
			});
		</script>

	</body>

</html>