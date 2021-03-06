<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<link rel="stylesheet" type="text/css" href="errorcss/main.css">

<style type="text/css">

	.top{
		margin-top:40px;
	}
	
	.advancedtop{
	margin-top: 56px;
	margin-left:-150px;
   }
	
	.daohan{
		background:#f2f2f2;
	}	
	
	.color{
		color:#FF0000
	}
	
	.same {
		padding: 0;
		margin-top: -1px;
		margin-left: -1px;
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
		
}
		
</style>

<title>企业文件资源管理</title>
</head>

<body>
	
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">

			<ul class="layui-nav layui-bg-blue" >
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

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
	
	<div class="row">
		<div class="layui-col-md8 layui-col-md-offset2 top">	
		
			<div class="layui-col-md10">											  
			  	<form class="layui-form" action="seek.action">
					<div class="same ">
						<input type="hidden" name="userid" value="${loginUser.userid }">	
						<input type="hidden" name="f_department_id" value="${loginUser.departmentid }">											
						<input type="text" value="${filekeyword }" placeholder="" class="same text " name="filekeyword" id="seekinput"><button class="layui-btn layui-btn-normal same btn">搜  索</button>
					</div>
				</form>
			</div>
							 				
		</div>	
		
		<div class="layui-col-md1 advancedtop"><a href="advancedSeek.jsp"><span style="font-size:15px">高级搜索</span></a></div>
																			
	</div>
	
	<div class="row">
		<div class="layui-col-md12" style="margin-top:20px">	
			<ul class="layui-nav daohan" lay-filter=""> 	
			    <li class="layui-nav-item" id="zero"><a><font color="#000">全部</font></a></li>				
  				<li class="layui-nav-item" id="one"><a><font color="#000">图片</font></a></li>
  				<li class="layui-nav-item" id="two"><a><font color="#000">文档</font></a></li>
  				<li class="layui-nav-item" id="three"><a><font color="#000">视频</font></a></li>
  				<li class="layui-nav-item" id="four"><a><font color="#000">音频</font></a></li>
  				<li class="layui-nav-item" id="five"><a><font color="#000">其他</font></a></li>
			</ul> 
		</div>
	</div>
	
	<div class="row">
		<div class="layui-col-md12">	
			<div id="wrapper"><a class="logo" href="/"></a>
	  			<div id="main">
				    <header id="header">   
				      <h1><span class="icon">!</span>404<span class="sub">page not found</span></h1>
				    </header>
				    <div id="content">				      
				       <h2>很抱歉，没有找到与“<span class="color">${filekeyword }</span>”相关的网页。</h2>
				      <p>温馨提示：<br>
				        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请检查您的输入是否正确<br>
				        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如网页未收录或者新站未收录，请提交网址给我们<br>
				        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如有任何意见或建议，请及时反馈给我们</p>
				     </div>
	  			</div>
			</div>
		</div>
	</div>
	
	
</body>
<script src="layui/layui.js" charset="utf-8"></script>
 
 <script>
	 layui.use(['form','element','jquery'], function(){
	  var form = layui.form;
	  	  element = layui.element;//导航
	  	   $ = layui.jquery;
	 
	     //按时间搜索全部
	  	   $("#zero").click(function(){
	  	  	window.location.href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=6";	  	 	
	  	  })   	  
	  	  
	  	 // 图片搜索
	  	   $("#one").click(function(){
	  	  	window.location.href="seekimg.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=1&filekeyword=" + $("#seekinput").val();	  	 	
	  	  }) 
	  	  
	  	   // 文档搜索
	  	   $("#two").click(function(){
	  	  	window.location.href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=2&filekeyword=" + $("#seekinput").val();	  	 	
	  	  }) 
	  	  
	  	   // 视频搜索
	  	   $("#three").click(function(){
	  	  	window.location.href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=3&filekeyword=" + $("#seekinput").val();	  	 	
	  	  }) 
	  	  
	  	   // 音频搜索
	  	   $("#four").click(function(){
	  	  	window.location.href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=4&filekeyword=" + $("#seekinput").val();	  	 	
	  	  }) 
	  	  
	  	   // 其他搜索
	  	   $("#five").click(function(){
	  	  	window.location.href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=5&filekeyword=" + $("#seekinput").val();	  	 	
	  	  }) 
		
	}); 
	
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
	
 
</html>
