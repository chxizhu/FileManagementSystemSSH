<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>企业文件资源管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!--自定义样式-->
<style>
.mtop {
	margin-top: 30px;
}

.same {
	padding: 0;
	margin-top: -2px;	
	box-sizing: border-box;
	border: 1;
	height: 45px;
}

.text {
	width: 70%;
}

.btn {
	margin-left:-4px;
	width: 20%;
}

.footer {
	margin-top: 27px;
	text-align: center;
}
.top{
margin-top: 60px;
}

.daohan{
		background:#f2f2f2;
	}
	
	.bottom{
	margin-top: 300px;
	}
	
	.line-limit-length {
	text-overflow:ellipsis;/* 溢出的部分显示省略符号来代替 */
	white-space:nowrap;/* 文本不会换行，文本会在在同一行上继续，直到遇到 <br> 标签为止。 */
	overflow:hidden;/* 溢出隐藏 */
	width:320px;
	display:block;
}
.cardtop{
margin-top:11px;
}
	
</style>

</head>

<body>
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

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

	<!--主要內容-->
	<div class="layui-container top">
		<div class="layui-row">
			<div class="layui-col-md6 layui-col-md-offset3 ">
				<form class="layui-form" action="seek.action">
					<div class="same ">
						<input type="hidden" name="userid" value="${loginUser.userid }">
						<input type="hidden" name="f_department_id" value="${loginUser.departmentid }"> 
						<input type="text" placeholder="请输入标题" class="same text " name="filekeyword">
						<button class="layui-btn layui-btn-normal same btn">搜 索</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="layui-row layui-col-md-offset1">
		<div class="layui-col-md11 mtop layui-col-space15">
		
			<div class="layui-col-md6">
				<div class="layui-card daohan">
				  <div class="layui-card-header">个人文件<span style="float:right">更多</span></div>				
				   <div class="layui-card-body">
				 		<table class="layui-table" lay-skin="line">
						  <colgroup>
						    <col width="320">
						    <col width="100">
						    <col width="100">
						    <col>
						  </colgroup>
						  <tbody>
						    <a href=""><tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr></a>	
						       <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						      <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>
						     <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>					   
						  </tbody>
						</table>
													  					  
					 </div>
				 </div>			
			  </div>
			  
			  <div class="layui-col-md6">
				<div class="layui-card daohan">
				  <div class="layui-card-header">部门文件<span style="float:right">更多</span></div>				
				   <div class="layui-card-body">
				 		<table class="layui-table" lay-skin="line">
						  <colgroup>
						    <col width="320">
						    <col width="100">
						    <col width="100">
						    <col>
						  </colgroup>
						  <tbody>
						    <a href=""><tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr></a>	
						       <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						      <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>
						     <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>					   
						  </tbody>
						</table>
													  					  
					 </div>
				 </div>			
			  </div>
		  
		</div>
	</div>
	
	<div class="layui-row layui-col-md-offset1">
		<div class="layui-col-md11 layui-col-space15 cardtop">
		
			<div class="layui-col-md6">
				<div class="layui-card daohan">
				  <div class="layui-card-header">公司文件<span style="float:right">更多</span></div>				
				   <div class="layui-card-body">
				 		<table class="layui-table" lay-skin="line">
						  <colgroup>
						    <col width="320">
						    <col width="100">
						    <col width="100">
						    <col>
						  </colgroup>
						  <tbody>
						    <a href=""><tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr></a>	
						       <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						      <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						     <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>				   
						  </tbody>
						</table>
													  					  
					 </div>
				 </div>			
			  </div>
			  
			  <div class="layui-col-md6">
				<div class="layui-card daohan">
				  <div class="layui-card-header">个人文件下载排行<span style="float:right">更多</span></div>				
				   <div class="layui-card-body">
				 		<table class="layui-table" lay-skin="line">
						  <colgroup>
						    <col width="320">
						    <col width="100">
						    <col width="100">
						    <col>
						  </colgroup>
						  <tbody>
						    <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>
						       <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						      <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>	
						      <tr>
						      <td class="line-limit-length">扬之水，不流束薪。彼其之子，不与我戍申。怀哉怀哉，曷月予还归哉！扬之水，不流束楚。彼其之子，不与我戍</td>
						      <td>2016-06-06</td>
						       <td>王一博</td>
						    </tr>					   
						  </tbody>
						</table>
													  					  
					 </div>
				 </div>			
			  </div>
		  
		</div>
	</div>

	<div class="layui-footer footer">
		<div class="layui-main">
			<p>
				&copy; 2019 <a href="javascript:;">文件资源管理系统</a>
			</p>
		</div>
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

</body>

</html>




<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>企业文件资源管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!--自定义样式-->
<style>
.mtop {
	margin-top: 70px;
}

.same {
	padding: 0;
	margin-top: -2px;	
	box-sizing: border-box;
	border: 1;
	height: 45px;
}

.text {
	width: 70%;
}

.btn {
	margin-left:-4px;
	width: 20%;
}

.footer {
	margin-top: 550px;
	text-align: center;
}
.top{
margin-top: 60px;
}

.daohan{
		background:#f2f2f2;
	}
	
	.bottom{
	margin-top: 300px;
	}
	
	.line-limit-length {
		overflow: hidden;		
		text-overflow: ellipsis;		
		white-space: nowrap; //文本不换行，这样超出一行的部分被截取，显示...
}
	
</style>

</head>

<body>
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>

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

	<!--主要內容-->
	<div class="layui-container mtop">
		<div class="layui-row">
			<div class="layui-col-md6 layui-col-md-offset3 ">
				<form class="layui-form" action="seek.action">
					<div class="same ">
						<input type="hidden" name="userid" value="${loginUser.userid }">
						<input type="hidden" name="f_department_id" value="${loginUser.departmentid }"> 
						<input type="text" placeholder="请输入标题" class="same text " name="filekeyword">
						<button class="layui-btn layui-btn-normal same btn">搜 索</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="row top">
		<div class="layui-col-md8 layui-col-md-offset2 ">	
		<div class="layui-card-header daohan down"><a href="javascript:;">下载排行 ：TOP${count }</a></div>			
		 <c:forEach items="${showfilelist }" var="file" begin="0" end="6" step="1">
			
			<div class="layui-card daohan">										
			  <div class="layui-card-header">
			  	<a href="downloadAction.action?fileid=${file.fileid}">文件标题：${file.filename}</a>
				<span style="float:right"><a href="downloadAction.action?fileid=${file.fileid}">下载次数:${file.downloads}</a></span>
			  </div>			  
			   
			 <div class="layui-card-body line-limit-length">
			   	<a href="downloadAction.action?fileid=${file.fileid}">上传用户:${file.username}</a>
			   	<span style="margin-left:50px"><a href="downloadAction.action?fileid=${file.fileid}">上传时间:${file.uptime}</a></span>	
			    <span style="margin-left:50px"><a href="downloadAction.action?fileid=${file.fileid}">文件权限:${file.authorityname}</a></span>
			   	<span style="margin-left:50px"><a href="downloadAction.action?fileid=${file.fileid}">所属部门:${file.departmentname}</a></span>	
			    <span style="margin-left:50px"><a href="downloadAction.action?fileid=${file.fileid}">下载次数:${file.downloads}</a></span>	   
			  </div>		 	  			  
			  
			</div>
			
			</c:forEach>
									
		</div>
	</div>

	<div class="layui-footer footer">
		<div class="layui-main">
			<p>
				&copy; 2019 <a href="javascript:;">文件资源管理系统</a>
			</p>
		</div>
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

</body>

</html> --%>