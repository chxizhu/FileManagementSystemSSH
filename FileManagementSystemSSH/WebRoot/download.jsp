<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<title>企业文件资源管理</title>
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
				<li class="layui-nav-item "><a href="index.jsp">文件资源管理系统</a></li>

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
		<div class="layui-container mtop">
			<div class="layui-row">
				<div class="layui-col-md10 layui-col-md-offset1 ">
					<div class="layui-card">
						

							

							<div ><p class="fontsize" style="margin-top: 30px;margin-bottom: 10px;">文件基本信息</p></div>
							<hr class="layui-bg-blue">
							<form class="layui-form" action="downloadAction.action">
								<div class="layui-form-item">
									<label class="layui-form-label">文件标题</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${title }" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item">
									<label class="layui-form-label">上传时间</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${date }" type="text" name="date" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">上传作者</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${author}" type="text" name="author" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件路径</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${path}" type="text" name="path" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>
								
								
								
								
								
								<div class="layui-form-item">
									<label class="layui-form-label">文件标签</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${labe}" type="text" name="labe" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
									</div>
								</div>

								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">文件说明</label>
									<div class="layui-input-block">
										<textarea  class="layui-textarea" disabled="disabled"  >${authority}</textarea>
									</div>
								</div>

								<div class="layui-form-item">
									<div class="layui-input-block">
										<a href="DownLoadServlet.do?path=${path} " class="layui-btn">下载</a>
										
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
					<a href="">文件资源管理系统</a>
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