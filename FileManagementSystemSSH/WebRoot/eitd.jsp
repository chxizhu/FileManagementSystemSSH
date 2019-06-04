<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/error.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<title>错误信息</title>
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
<body>
	<!--导航信息 -->

		<div class="layui-row">
			<div class="layui-col-md12">

				<ul class="layui-nav layui-bg-blue">
					<li class="layui-nav-item ">
						<a href="index.jsp">文件资源管理系统</a>
					</li>
					
					<li class="layui-nav-item ">
						<a href="uplode.jsp">文件上传</a>
					</li>
					
					<li class="layui-nav-item ">
						<a href="ownfile.jsp">个人文件管理</a>
					</li>
					
					<li class="layui-nav-item ">
						<a href="UserInformationEdit.jsp">用户基础信息修改</a>
					</li>
					
					<li class="layui-nav-item ">
						<a href="passwordEdit.jsp">密码修改</a>
					</li>
						
					<li class="layui-nav-item layui-col-md-offset5">
						<a href="javascript:;">欢迎您：${loginUser.username}</a>
					</li>
					<li class="layui-nav-item ">
						<a href="login.jsp" onclick="if(confirm('你确定要退出吗？')==false)return false" >退出</a>
					</li>

				</ul>

			</div>
		</div>
	<div id="content">
    	<center>
		<p><h2>修改成功</h2></p>
		
		</center>
 		
    </div>
    <div id = "foot">
    	<a href="#">返回页面</a>
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