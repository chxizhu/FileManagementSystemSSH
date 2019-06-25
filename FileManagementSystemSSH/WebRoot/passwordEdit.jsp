<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<title>企业文件资源管理</title>
<style>
			.mtop {
				margin-top: 30px;
			}
			
			.same {
				padding: 0;
				margin: 0;
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
			
			.footer {
				margin-top: 300px;
				text-align: center;
			}
			
			.bcolor {
				background-color: #dddddd;
			}
			.fontsize{
				font-size: large;
				
			}
		</style>
</head>
<body class="bcolor">
	<!--导航信息 -->

	<div class="layui-row">
		<div class="layui-col-md12" class="site-demo-button" id="layerDemo">

			<ul class="layui-nav layui-bg-blue">
				<li class="layui-nav-item "><a href="returnindex.action">文件资源管理系统</a></li>
				
				<li class="layui-nav-item "><a href="seek.jsp">文件搜索</a></li>

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

				
				<li class="layui-nav-item "><button data-method="confirmTrans" class="layui-btn">退出</button></li>

			</ul>

		</div>
	</div>
				
			<!--主要內容-->
		<div class="layui-container mtop">
			<div class="layui-row">
				<div class="layui-col-md10 layui-col-md-offset1 ">
					<div class="layui-card">								
							<div ><p class="fontsize" style="margin-top: 30px;margin-bottom: 10px;">密码修改</p></div>
							<hr class="layui-bg-blue">
							<form class="layui-form" action="PassdEitsaction.action" onsubmit= "return formCheck() ">
							
							<div class="layui-form-item">
									<label class="layui-form-label">用户账号</label>
									<div class="layui-input-block">
										<input disabled="disabled" value="${loginUser.userid} " type="text" name="userid" lay-verify="title" autocomplete="off"  class="layui-input">
									</div>
								</div>

								
								
								<div class="layui-form-item">
									 <label class="layui-form-label">修改密码</label>
										    <div class="layui-input-inline">
										      <input id="pwd1" type="password" name="pwd" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
										    </div>
										    <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
								</div>
								<div class="layui-form-item">
									 <label class="layui-form-label">确定密码</label>
										    <div class="layui-input-inline">
										      <input id="pwd2" type="password" name="pwd2" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
										    </div>
										    <div class="layui-form-mid layui-word-aux">请再次输入密码</div>
								</div>
								
								
								
								
							
								
								

								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="layui-btn  layui-btn-normal" lay-submit="" lay-filter="demo1">确定修改</button>
										<button type="reset" class="layui-btn layui-btn-primary">重置</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="layui-footer" style="margin-top: 20px;margin-bottom: 30px.;text-align: center;">
			<div class="layui-main">
				<p>&copy; 2019
					<a href="#">文件资源管理系统</a>
				</p>
			</div>
		</div>
		
<script src="layui/layui.js" charset="utf-8"></script>

<script>
layui.use(['form', 'layedit', 'laydate'], function(){
var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //自定义验证规则
  form.verify({
  password: [
      /^[\S]{6,12}$/
      ,'密码必须6到12位，且不能出现空格'
    ]
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
	 //表单初始赋值
  form.val('example', {
    "username": "贤心" // "name": "value"
    ,"password": "123456"
    ,"interest": 1
    ,"like[write]": true //复选框选中状态
    ,"close": true //开关状态
    ,"sex": "女"
    ,"desc": "我爱 layui"
  })
  
  
  
	
});
 function formCheck(){
       var pwd1 = document.getElementById("pwd1").value;
       var pwd2 = document.getElementById("pwd2").value;
       if(pwd1!=pwd2){
       alert("两次输入的密码不一致！");
       return false;
       }
       return true;
    }
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