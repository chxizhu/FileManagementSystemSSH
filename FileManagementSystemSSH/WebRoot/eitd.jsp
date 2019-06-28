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

.fontsize {
	font-size: large;
}
</style>
</head>
<body>
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a>
				</li>

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

				<li class="layui-nav-item "><a href="UserInformationEdit.jsp">用户基础信息修改</a>
				</li>

				<li class="layui-nav-item "><a href="passwordEdit.jsp">密码修改</a>
				</li>
				
				

				<li class="layui-nav-item layui-col-md-offset5" ><button data-method="confirmTrans" class="layui-btn layui-bg-blue">退出</button></li>
				
				

			</ul>

		</div>
	</div>
	<div id="content">
		<center>
			<p>
			<h2>修改成功</h2>
			</p>

		</center>

	</div>
	<div id="foot">
		<a href="seek.jsp">返回页面</a>
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
	
</body>
</html>
