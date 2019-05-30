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
	
	.seekbtn{
	margin-left:742px;
	margin-top:-38px;
	}	
	
}
		
</style>

<title>Insert title here</title>
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
						<a href="login.jsp">退出</a>
					</li>

				</ul>

			</div>
		</div>
	
	<div class="row top">
		<div class="layui-col-md8 layui-col-md-offset2">	
		
			<div class="layui-col-md10">				
				<form class="layui-form" action="">
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <input type="hidden" name="userid" value="${loginUser.userid }">	
					  <input type="hidden" name="f_department_id" value="${loginUser.departmentid }">		
				      <input type="text" name="filekeyword" lay-verify="title" autocomplete="off" placeholder="${filekeyword }" class="layui-input">
				      <button class="layui-btn layui-btn-normal seekbtn">搜索一下</button>
				    </div>
				  </div>
			  </form>				
			</div>
			
			<!-- <div class="layui-col-md1"><button class="layui-btn layui-btn-normal">搜索一下</button></div>		 -->								
		</div>	
																						
	</div>
	
	<div class="row">
		<div class="layui-col-md12">	
			<ul class="layui-nav daohan" lay-filter=""> 				
  				<li class="layui-nav-item"><a href="seekimg.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=1"><font color="#000">图片</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=2"><font color="#000">文档</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=3"><font color="#000">视频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=4"><font color="#000">音频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=5"><font color="#000">其他</font></a></li>
			</ul>
		</div>
	</div>
	
	<div class="row top">
		<div class="layui-col-md12 top">										
			
			<div class=" layui-fluid">  		  
		  	  <div class="layui-row layui-col-space10">
		  	   <c:forEach items="${filelist }" var="forum" begin="0" end="1000" step="1">
		    	<div class="layui-col-md2">
		     		<a href="downloadAction.action?fileid=${forum.fileid}">
		     		 <img src="/upload2/${forum.filename}" width="100%" height="200px">
		     		 </a>
		  	 	</div>	
		  	 	</c:forEach>	  	 	
		 	 </div>
			
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