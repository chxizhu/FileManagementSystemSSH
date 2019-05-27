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
	
	.daohan{
		background:#f2f2f2;
	}	
	
	.color{
		color:#FF0000
	}
}
		
</style>

<title>Insert title here</title>
</head>

<body>
	
	<div class="row">
		<div class="layui-col-md8 layui-col-md-offset2 top">	
		
			<div class="layui-col-md10">				
				<form class="layui-form" action="">
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入搜索关键字" class="layui-input">
				    </div>
				  </div>
			  </form>				
			</div>
			
			<div class="layui-col-md1"><button class="layui-btn layui-btn-normal">搜索一下</button></div>										
		</div>	
		
		<div class="layui-col-md1 top">
			<div class="layui-col-md1" style="width:250px;text-align :center">
				<a href="javascript:;">当前用户:${loginUser.username}</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp">退出</a>
			</div>
		</div>																				
	</div>
	
	<div class="row">
		<div class="layui-col-md12">	
			<ul class="layui-nav daohan" lay-filter="">
  				<li class="layui-nav-item"><a href=""><font color="#000">视频</font></a></li>
  				<li class="layui-nav-item"><a href=""><font color="#000">图片</font></a></li>
  				<li class="layui-nav-item"><a href=""><font color="#000">文档</font></a></li>
  				<li class="layui-nav-item"><a href=""><font color="#000">其他</font></a></li>
			</ul>
		</div>
	</div>
	
	<div id="wrapper"><a class="logo" href="/"></a>
	  <div id="main">
	    <header id="header">
	      <h1><span class="icon">!</span>404<span class="sub">page not found</span></h1>
	    </header>
	    <div id="content">
	      <!-- <h2>很抱歉，没有找到与您搜索相关的网页。</h2> -->
	       <h2>很抱歉，没有找到与“<span class="color">${filekeyword }</span>”相关的网页。</h2>
	      <p>温馨提示：<br>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请检查您的输入是否正确<br>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如网页未收录或者新站未收录，请提交网址给我们<br>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如有任何意见或建议，请及时反馈给我们</p>
	     </div>
	  </div>
	</div>
	
	
</body>
<script src="layui/layui.js" charset="utf-8"></script>
 
 <script>
	 layui.use(['form','element'], function(){
	  var form = layui.form;
	  	  element = layui.element;//导航
	 
		
	}); 
</script>
 
</html>