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
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回首页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp">退出</a>
			</div>
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