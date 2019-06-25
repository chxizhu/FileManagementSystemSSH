<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>企业文件资源管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<style>
.top {
	margin-top: 30px;
}

.blogUser-con .layui-table-view {
	border: none;
}

.blogUser-con .layui-table-box {
	margin-top: 10px;
}

.blogUser-con {
	padding: 0 0 0 0;
	margin-bottom: 50px;
}

.blogUser-con  .layui-table-tool-self {
	display: none;
}

.blogUser-con .not_border_left {
	border-left: none !important;
}

.blogUser-con .blogUser dl dd.layui-this {
	background-color: #1E9FFF !important;
}

.blogUser-con .hide {
	display: none;
}

.blogUser-con .show {
	display: block;
}

.blogUser-con .btn_size {
	height: 28px !important;
	line-height: 28px !important;
}

.blogUser-con .layui-table-body table tbody .layui-table-hover {
	background: #fffdd3 !important;
}

.blogUser-con .layui-table-body table tbody .layui-table-click {
	background: #fdef9b !important;
}

.blogUser-con .layui-table, .layui-table-view {
	border: none;
	margin-top: 0;
}

#add-blogUser {
	display: none;
	z-index: 999 !important;
}

#add-blogUser .artTypeLayer {
	width: 90%;
	margin-left: auto;
	margin-right: auto;
	padding-top: 20px;
}


.daohan {
	background: #f2f2f2;
}

.filetop{
	background: #f2f2f2;
	height:70px;
	text-align:center;
	line-height: 70px;
}
</style>
</head>
<body>

	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

				<li class="layui-nav-item "><a href="uplode.jsp">文件上传</a></li>

				<li class="layui-nav-item "><a href="ownfile.jsp">个人文件管理</a></li>


				<li class="layui-nav-item layui-col-md-offset6"><a
					href="javascript:;">欢迎您：${loginUser.username}</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="UserInformationEdit.jsp">个人信息修改</a>
						</dd>
						<dd>
							<a href="passwordEdit.jsp">密码修改</a>
						</dd>

					</dl></li>


				<li class="layui-nav-item "><button data-method="confirmTrans" class="layui-btn">退出</button></li>

			</ul>

		</div>
	</div>
	
	<div class="layui-row filetop top">
		<div class="layui-col-md12">
		
			<form class="layui-form" action="advancedseek.action">
				
				<input type="hidden" name="userid" value="${loginUser.userid }">
				<input type="hidden" name="f_department_id" value="${loginUser.departmentid }"> 	
				
				<div class="layui-input-inline">
					<input type="text" name="filename" id="filename"
						placeholder="请输入文件标题" class="layui-input" autocomplete="off">
				</div>
				
				<div class="layui-input-inline">
					<input type="text" name="lable" id="lable"
						placeholder="请输入文件标签" class="layui-input" autocomplete="off">
				</div>
				
				<div class="layui-input-inline">
					<input type="text" name="dscribe" id="dscribe"
						placeholder="请输入文件详细说明" class="layui-input" autocomplete="off">
				</div>
				
				<div class="layui-inline"> 
				  	<input type="text" class="layui-input" name="beginTime" id="beginTime" placeholder="yyyy-MM-dd">
				</div>
				
				<div class="layui-inline"> 
				  	<input type="text" class="layui-input" name="endTime" id="endTime" placeholder="yyyy-MM-dd">
				</div>
				
				<div class="layui-inline">
					<!-- <button id="btnselfrontinfo" 
						class="layui-btn layui-bg-blue">查询</button> -->
						<button class="layui-btn layui-bg-blue">查询</button>
				</div>

			</form>
		
		</div>
	</div>
		
		<div class="row top">
		 <div class="layui-col-md8 layui-col-md-offset2">
		
			<c:forEach items="${filelist }" var="forum">

				<div class="layui-card daohan" >

					<div class="layui-card-header">
						<a href="downloadAction.action?fileid=${forum.fileid}">文件标题：${forum.filename}</a>
					</div>

					<div class="layui-card-body line-limit-length">
						<a href="downloadAction.action?fileid=${forum.fileid}">详细说明：${forum.dscribe}</a>
					</div>

					<div class="layui-card-body line-limit-length">
						<a href="downloadAction.action?fileid=${forum.fileid}">标签：${forum.lable}</a>
					</div>

					<div class="layui-card-body line-limit-length">
						<a href="downloadAction.action?fileid=${forum.fileid}">上传用户:${forum.username}</a>
						<span style="margin-left:20px"><a
							href="downloadAction.action?fileid=${forum.fileid}">上传时间:${forum.uptime}</a></span>
						<span style="margin-left:20px"><a
							href="downloadAction.action?fileid=${forum.fileid}">文件大小:${forum.filesize}</a></span>
						<span style="margin-left:20px"><a
							href="downloadAction.action?fileid=${forum.fileid}">文件权限:${forum.authorityname}</a></span>
						<span style="margin-left:20px"><a
							href="downloadAction.action?fileid=${forum.fileid}">所属部门:${forum.departmentname}</a></span>
					</div>

				</div>

			</c:forEach> 
			
           </div>
		</div>
	
	<script src="js/jquery-2.1.1.min.js" charset="utf-8"></script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<!-- <script>
	$('#btnselfrontinfo').on('click',function(){
	alert("aaa");
	});
	</script> -->
	<script>
		layui.use([ 'table', 'form', 'layer', 'laytpl', 'element','laydate' ],
						function() {
							var table = layui.table, form = layui.form, 
							layer = layui.layer, $ = layui.jquery, 
							element = layui.element,laydate = layui.laydate;
							
							laydate.render({
    							elem: '#beginTime' //开始日期
  						    });
  						    
  						    laydate.render({
    							elem: '#endTime' //结束日期
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