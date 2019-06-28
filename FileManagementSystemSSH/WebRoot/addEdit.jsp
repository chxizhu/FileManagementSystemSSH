<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>企业文件资源管理</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css" media="all">
		<!--自定义样式-->
		<style>
			.mtop {
				margin-top: 70px;
			}
			
			.same {
				padding: 0;
				margin-top: -2px;
				box-sizing: border-box;
				border: 1;
				height: 45px;
			}
			
			.text {
				width: 70%;
			}
			
			.btn {
				margin-left: -4px;
				width: 20%;
			}
			
			.footer {
				margin-top: 550px;
				text-align: center;
			}
			
			.top {
				margin-top: 60px;
			}
			
			.daohan {
				background: #f2f2f2;
			}
			
			.bottom {
				margin-top: 300px;
			}
			
			.line-limit-length {
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap; //文本不换行，这样超出一行的部分被截取，显示...
			}
		</style>

	</head>

	<body>
		<!--导航信息 -->

		<div class="layui-row">
			<div class="layui-col-md12">

				<ul class="layui-nav layui-bg-blue">
					<li class="layui-nav-item ">
						<a href="returnindex.action">文件资源管理系统</a>
					</li>

					<li class="layui-nav-item "><a href="javascript:;">文件上传</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="uplode.jsp">文件上传</a>
						</dd>
						<dd>
							<a href="addEdit.jsp">创建文档<span class="layui-badge-dot layui-bg-blue"> </a>
						</dd>
						
					</dl></li>

					<li class="layui-nav-item ">
						<a href="ownfile.jsp">个人文件管理</a>
					</li>

					<li class="layui-nav-item layui-col-md-offset6">
						<a href="javascript:;">欢迎您：${loginUser.username}</a>
						<dl class="layui-nav-child">
							<!-- 二级菜单 -->
							<dd>
								<a href="UserInformationEdit.jsp">个人信息修改</a>
							</dd>
							<dd>
								<a href="passwordEdit.jsp">密码修改</a>
							</dd>

						</dl>
					</li>

					<li class="layui-nav-item "><button data-method="confirmTrans" id="confirmTrans" class="layui-btn layui-bg-blue">退出</button></li>

				</ul>

			</div>
		</div>

		<!--主要內容-->

		<div class="layui-container">
			<div class="layui-row">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">创建文档</div>
						<div class="layui-card-body">

							<form class="layui-form"  action="addEdit.action">
								<div class="layui-form-item">
									<label class="layui-form-label">文档标题</label>
									<div class="layui-input-block">
										<input type="text" name="filename" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">文档标签</label>
									<div class="layui-input-block">
										<input type="text" name="lable" required lay-verify="required" placeholder="请输入文档标签" autocomplete="off" class="layui-input">
									</div>
									
								</div>
								<div class="layui-form-item">
								<label class="layui-form-label">文档权限</label>
								<div class="layui-input-block">
									<select name="authority_id" lay-filter="aihao">
										<option value=""></option>
										<option value="101" selected="">个人</option>
										<option value="102">部门</option>
										<option value="103">公司</option>

									</select>
								</div>
							</div>

								<textarea id="demo"  name="edit"  style="display: none;"></textarea>

								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
										<button type="reset" class="layui-btn layui-btn-primary">重置</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!--底端-->
			<div class="layui-footer" style="text-align:center;">
				<div class="layui-main">
					<p>
						&copy; 2019
						<a href="javascript:;">文件资源管理系统</a>
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
			<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
   confirmTrans: function(){
      //配置一个透明的询问框
      layer.msg('确定要退出嘛？', {
        time: 20000, //20s后自动关闭
        btn: ['确定', '取消'],
       yes: function(index, layero){ // 默认的是 按钮一
           window.location.href="login.jsp"
         }
      });
    }

  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
});
</script>
			
			<script>
				layui.use('layedit',function() {
					var layedit = layui.layedit;
					
					layedit.set({
						uploadImage: {
							url: 'FileUploadServlet.do' //接口url
								,
							type: '' //默认post
						}
					});
					//注意：layedit.set 一定要放在 build 前面，否则配置全局接口将无效。
					layedit.build('demo'); //建立编辑器
					
				});
			</script>
			
			
			
			
	</body>

</html>