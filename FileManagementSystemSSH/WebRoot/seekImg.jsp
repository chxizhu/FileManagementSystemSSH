<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
			<div class="layui-col-md1" style="width:250px;text-align :center"><a href="">当前用户:XXX</a></div>
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
		<div class="layui-col-md12 top">	
						
			<!-- <div style="width:200px; height:200px">
				<a><img src="images/hg.jpg" width="100%" height="200px"></a>
			</div>   
			<div style="width:200px; height:200px">
				<a><img src="images/hg.jpg" width="100%" height="200px"></a>
			</div>  
			<div style="width:200px; height:200px">
				<a><img src="images/hg.jpg" width="100%" height="200px"></a>
			</div>  
			<div style="width:200px; height:200px">
				<a><img src="images/hg.jpg" width="100%" height="200px"></a>
			</div>   -->
			
			<!--  <table class="layui-table">			 
			  <tbody>
			    <tr>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			      <td><img src="images/hg.jpg" width="100%" height="200px"></td>
			    </tr>			 
			  </tbody>
			</table> -->
			
			<div class=" layui-fluid">  		  
		  	  <div class="layui-row layui-col-space10">
		    	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>	
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>	
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>	
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>	
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>	
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
		  	 	</div>		
		  	 	<div class="layui-col-md2">
		     		<img src="images/hg.jpg" width="100%" height="200px">
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