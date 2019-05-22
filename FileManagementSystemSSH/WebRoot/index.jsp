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
			.footer{
				margin-top: 300px;
				text-align: center;
			}
			
			
		</style>

	</head>

	<body>
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
				<div class="layui-col-md6 layui-col-md-offset3 ">
					<form class="layui-form" action="">
						<div class="same ">
							<input type="text" placeholder="请输入标题" class="same text "><button class="layui-btn layui-btn-normal same btn">搜  索</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="layui-footer footer">
			<div class="layui-main">
				<p>&copy; 2019 <a href="/">文件资源管理系统</a> </p>
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