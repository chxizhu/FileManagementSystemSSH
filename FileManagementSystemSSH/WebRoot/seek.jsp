<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">

<style type="text/css">

	.top{
		margin-top:20px;
	}

	.DLBtn{
		margin-left:1000px;
		margin-top:-38px;
	}
	
	.daohan{
		background:#f2f2f2;
	}
	
	.line-limit-length {
		overflow: hidden;		
		text-overflow: ellipsis;		
		white-space: nowrap; //文本不换行，这样超出一行的部分被截取，显示...
}
		
</style>

<title>Insert title here</title>
</head>

<body>
	
	<div class="row top">
		<div class="layui-col-md8 layui-col-md-offset1">	
		
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
		
		<div class="layui-col-md1 layui-col-md-offset1 top">
			<div class="layui-col-md1" style="width:250px;text-align :center"><a href="">当前用户:${loginUser.username}</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp">退出</a>
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
	
	<div class="row top">
		<div class="layui-col-md6 layui-col-md-offset3 top">	
			
		 <c:forEach items="${filelist }" var="forum" begin="0" end="6" step="1">
			
			<div class="layui-card daohan">						
			
			  <div class="layui-card-header">文件标题：${forum.filename}</div>

			   <div class="layui-card-body line-limit-length">详细说明：${forum.dscribe}</div>
			  
			   <div class="layui-card-body line-limit-length">
			   	<a href="">上传用户:${forum.username}</a>
			   	<span style="margin-left:80px"><a href="">上传时间:${forum.uptime}</a></span>
			   	<span style="margin-left:80px"><a href="">文件大小:${forum.filesize}</a></span>
			  </div>			  			  
			  
			</div>
			
			</c:forEach>
			
			<!-- <div class="layui-card daohan">						
			
			  <div class="layui-card-header">文章</div>
 			 <div class="layui-card-body line-limit-length">
			    卡片式面板面板通常用于非白色背景色的主体内从而映衬出边框投影这几天心里颇不宁静。今晚在院子里坐着乘凉，忽然想起日日走过的荷塘，在这满月的光里，总该另有一番样子吧。月亮渐渐地升高了，墙外马路上孩子们的欢笑，已经听不见了；妻在屋里拍着闰儿⑴，迷迷糊糊地哼着眠歌。我悄悄地披了大衫，带上门出去。
				沿着荷塘，是一条曲折的小煤屑路。
			  </div>
			  
			   <div class="layui-card-body line-limit-length"></div>
			  
			   <div class="layui-card-body line-limit-length">
			   	<a href="">上传用户:是的</a>
			   	<span style="margin-left:80px"><a href="">上传时间:2019-8-1</a></span>
			   	<span style="margin-left:80px"><a href="">文件大小:20kb</a></span>
			  </div>			  			  
			  
			</div> -->
			
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