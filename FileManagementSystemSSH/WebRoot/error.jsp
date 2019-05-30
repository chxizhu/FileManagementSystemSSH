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
	
	.same {
		padding: 0;
		margin-top: -2px;
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

<title>Insert title here</title>
</head>

<body>
	
	<div class="row">
		<div class="layui-col-md8 layui-col-md-offset2 top">	
		
			<div class="layui-col-md10">											  
			  	<form class="layui-form" action="seek.action">
					<div class="same ">
						<input type="hidden" name="userid" value="${loginUser.userid }">	
						<input type="hidden" name="f_department_id" value="${loginUser.departmentid }">											
						<input type="text" placeholder="${filekeyword }" class="same text " name="filekeyword"><button class="layui-btn layui-btn-normal same btn">搜  索</button>
					</div>
				</form>
			</div>
							 				
		</div>	
		
		<div class="layui-col-md1 top">
			<div class="layui-col-md1" style="width:250px;text-align :center">
				<a href="javascript:;">当前用户:${loginUser.username}</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回首页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp">退出</a>
			</div>
		</div>																				
	</div>
	
	<div class="row">
		<div class="layui-col-md12" style="margin-top:20px">	
			<ul class="layui-nav daohan" lay-filter=""> 				
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=1"><font color="#000">图片</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&typeid=2"><font color="#000">文档</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&typeid=3"><font color="#000">视频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&typeid=4"><font color="#000">音频</font></a></li>
  				<li class="layui-nav-item"><a href="categoryseek.action?userid=${loginUser.userid }&f_department_id=${loginUser.departmentid }&type_id=5"><font color="#000">其他</font></a></li>
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
	 layui.use(['form','element'], function(){
	  var form = layui.form;
	  	  element = layui.element;//导航
	 
		
	}); 
</script>
 
</html>