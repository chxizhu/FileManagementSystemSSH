<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.advancedtop {
	margin-top: 10px;
	margin-left: -30px;
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
	margin-left: -4px;
	width: 20%;
}
.footer {
	margin-top: 27px;
	text-align: center;
}
.top {
	margin-top: 60px;
}
.daohan {
	background: #f2f2f2;
}
.bottom {
	margin-top: 300px;
}
.line-limit-length {
	text-overflow: ellipsis; /* 溢出的部分显示省略符号来代替 */
	white-space: nowrap; /* 文本不会换行，文本会在在同一行上继续，直到遇到 <br> 标签为止。 */
	overflow: hidden; /* 溢出隐藏 */
	width: 320px;
	display: block;
}
.cardtop {
	margin-top: 11px;
}
</style>
</head>
<body>
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">
			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>
				<li class="layui-nav-item "><a href="javascript:;">文件上传</a>
					<dl class="layui-nav-child">
						<!-- 二级菜单 -->
						<dd>
							<a href="uplode.jsp">文件上传</a>
						</dd>
						<dd>
							<a href="addEdit.jsp">创建文档<span
								class="layui-badge-dot layui-bg-blue"></a>
						</dd>
					</dl></li>
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
				<li class="layui-nav-item "><button data-method="confirmTrans"
						class="layui-btn layui-bg-blue">退出</button></li>
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
						<input type="hidden" name="f_department_id"
							value="${loginUser.departmentid }"> <input type="text"
							placeholder="请输入标题" class="same text " name="filekeyword">
						<button class="layui-btn layui-btn-normal same btn">搜 索</button>
					</div>
				</form>
			</div>
			<div class="layui-col-md1 advancedtop">
				<a href="advancedSeek.jsp">高级搜索</a>
			</div>
		</div>
	</div>
	<div class="layui-row layui-col-md-offset1">
		<div class="layui-col-md11 mtop layui-col-space15">

			<div class="layui-col-md6">
				<div class="layui-card daohan">
					<div class="layui-card-header">
						个人文件<span style="float:right"><a href="ownfile.jsp">更多</a></span>
					</div>
					<div class="layui-card-body">
						<table class="layui-table" lay-skin="line">
							<colgroup>
								<col width="320">
								<col width="100">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<c:forEach items="${privatefilelist }" var="file" begin="0"
									end="3" step="1">
									<tr>
										<td class="line-limit-length"><a
											href="downloadAction.action?fileid=${file.fileid}">${file.filename}</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">
												<script>
													document
															.write("${file.uptime}"
																	.substring(
																			0,
																			10));
												</script>
										</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">${file.username}</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="layui-col-md6">
				<div class="layui-card daohan">
					<div class="layui-card-header">
						部门文件<span style="float:right"><a href="departmentfile.jsp">更多</a></span>
					</div>
					<div class="layui-card-body">
						<table class="layui-table" lay-skin="line">
							<colgroup>
								<col width="320">
								<col width="100">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<c:forEach items="${departmentlist }" var="file" begin="0"
									end="3" step="1">
									<tr>
										<td class="line-limit-length"><a
											href="downloadAction.action?fileid=${file.fileid}">${file.filename}</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">
												<script>
													document
															.write("${file.uptime}"
																	.substring(
																			0,
																			10));
												</script>
										</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">${file.departmentname}</a></td>
									</tr>
								</c:forEach>
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
					<div class="layui-card-header">
						公司文件<span style="float:right"><a href="companyfile.jsp">更多</a></span>
					</div>
					<div class="layui-card-body">
						<table class="layui-table" lay-skin="line">
							<colgroup>
								<col width="320">
								<col width="100">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<c:forEach items="${companylist }" var="file" begin="0" end="3"
									step="1">
									<tr>
										<td class="line-limit-length"><a
											href="downloadAction.action?fileid=${file.fileid}">${file.filename}</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">
												<script>
													document
															.write("${file.uptime}"
																	.substring(
																			0,
																			10));
												</script>
										</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">${file.departmentname}</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="layui-col-md6">
				<div class="layui-card daohan">
					<div class="layui-card-header">
						文件下载排行<span style="float:right"><a href="downloadfile.jsp">更多</a></span>
					</div>
					<div class="layui-card-body">
						<table class="layui-table" lay-skin="line">
							<colgroup>
								<col width="320">
								<col width="100">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<c:forEach items="${showfilelist }" var="file" begin="0" end="3"
									step="1">
									<tr>
										<td class="line-limit-length"><a
											href="downloadAction.action?fileid=${file.fileid}">${file.filename}</a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}"><script>
											document.write("${file.uptime}"
													.substring(0, 10));
										</script></a></td>
										<td><a href="downloadAction.action?fileid=${file.fileid}">下载次数:${file.downloads}</a></td>
									</tr>
								</c:forEach>

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
	<script>
		layui.use('layer', function() { //独立版的layer无需执行这一句
			var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
			//触发事件
			var active = {
				confirmTrans : function() {
					//配置一个透明的询问框
					layer.msg('确定要退出嘛？', {
						time : 20000, //20s后自动关闭
						btn : [ '确定', '取消' ],
						yes : function(index, layero) { // 默认的是 按钮一
							sessionStorage.clear()
							window.location.reload()
							window.location.href = "loginout.action"
						}
					});
				}
			};

			$('#layerDemo .layui-btn').on('click', function() {
				var othis = $(this), method = othis.data('method');
				active[method] ? active[method].call(this, othis) : '';
			});
		});
	</script>
</body>
</html>