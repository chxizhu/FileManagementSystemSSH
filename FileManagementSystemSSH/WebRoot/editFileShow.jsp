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
<body >
	<!--导航信息 -->

	<div class="layui-row" class="site-demo-button" id="layerDemo">
		<div class="layui-col-md12">

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
							<a href="addEdit.jsp">创建文档<span class="layui-badge-dot layui-bg-blue"> </a>
						</dd>
						
					</dl></li>

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
				
				<li class="layui-nav-item "><button data-method="confirmTrans" class="layui-btn layui-bg-blue">退出</button></li>

			</ul>

		</div>
	</div>
		
			<!--主要內容-->
		<div class="layui-container mtop">
			<div class="layui-row">
				<div class="layui-col-md10 layui-col-md-offset1 ">
					<div class="layui-card">
												
							<div class="layui-card-header"><p class="fontsize" style="margin-top: 10px;margin-bottom: 10px;">文档信息查看</p></div>
							<div ><p class="fontsize" style="margin-top: 10px;margin-bottom: 10px;text-align:center;">${title }</p></div>
							
							  <div class="layui-card-header"><p  style="text-align:center;">【作者：${author}】    【时间：${date }】</p></div>
							<div class="layui-card-header"><p >标签：${labe}</p></div>
							 <div class="layui-card-body">
							 
							<div class="layui-row">
								  <div class="layui-col-md6 fontsize" style="margin-top: 10px;margin-bottom: 50px;width:600px;">
								    ${edit }
								  </div>
 
							</div>

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
        window.location.href = "loginout.action"
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
	
</body>
</html>