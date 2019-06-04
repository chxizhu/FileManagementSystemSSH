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
 .seekbtn{
	margin-left:733px;
	margin-top:-38px;
	}	
		
</style>

<title>企业文件资源管理</title>
</head>

<body>
	
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
		
	<div class="row top">
		<div class="layui-col-md8 layui-col-md-offset2">	
		
			<div class="layui-col-md10">				
				<form class="layui-form" action="categoryseek.action">
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <input type="hidden" name="userid" value="${loginUser.userid }">	
					  <input type="hidden" name="f_department_id" value="${loginUser.departmentid }">		
				      <input type="text" name="filekeyword" lay-verify="title" autocomplete="off" value="${filekeyword }" placeholder="" class="layui-input" id="seekinput">
				      <button class="layui-btn layui-btn-normal seekbtn">搜索一下</button>
				    </div>
				  </div>
			  </form>				
			</div>
																							
	</div>
	
	<div class="row">
		<div class="layui-col-md12">			
			<%--  <ul class="layui-nav daohan" lay-filter=""> 				
  				<li class="layui-nav-item"><a href="seekimg.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=1&filekeyword=${filekeyword }"><font color="#000">图片</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=2"><font color="#000">文档</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=3"><font color="#000">视频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=4"><font color="#000">音频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=5"><font color="#000">其他</font></a></li>
			</ul>  --%>
			
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
	
	<div class="row top">
		<div class="layui-col-md8 layui-col-md-offset2 top">	
			
		 <c:forEach items="${filelist }" var="forum" >
			
			<div class="layui-card daohan">						
			
			  <div class="layui-card-header"><a href="downloadAction.action?fileid=${forum.fileid}">文件标题：${forum.filename}</a></div>

			   <div class="layui-card-body line-limit-length"><a href="downloadAction.action?fileid=${forum.fileid}">详细说明：${forum.dscribe}</a></div>
			  
			   <div class="layui-card-body line-limit-length"><a href="downloadAction.action?fileid=${forum.fileid}">标签：${forum.lable}</a></div>
			   
			   <div class="layui-card-body line-limit-length">
			   	<a href="downloadAction.action?fileid=${forum.fileid}">上传用户:${forum.username}</a>
			   	<span style="margin-left:20px"><a href="downloadAction.action?fileid=${forum.fileid}">上传时间:${forum.uptime}</a></span>
			   	<span style="margin-left:20px"><a href="downloadAction.action?fileid=${forum.fileid}">文件大小:${forum.filesize}</a></span>	
			    <span style="margin-left:20px"><a href="downloadAction.action?fileid=${forum.fileid}">文件权限:${forum.authorityname}</a></span>
			   	<span style="margin-left:20px"><a href="downloadAction.action?fileid=${forum.fileid}">所属部门:${forum.departmentname}</a></span>		   
			  </div>				 	  			  
			  
			</div>
			
			</c:forEach>
									
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
	
	
	
</script>

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
   
</html>