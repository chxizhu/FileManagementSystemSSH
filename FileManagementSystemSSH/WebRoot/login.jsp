
<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<title>用户登录</title>
</head>

<body>
	<script type="text/javascript" src="blogjs/user.js"></script>
		<div id = "leftimg"></div>
		<div id = "rightimg"></div>
		
        <div id="carven">
        <div id = "main">
    	<form method="post" name="loginform" action = "login.action" onsubmit="return loginValidation()">
    	<table>
        	<tr>
            	<td id = "topic" colspan="4">用 户 登 录</td>
            </tr>
        	<tr>
            	<td width="18%" id="title">用户名：</td>
            	<td width="7%" id="photo"><img src="images/user.png" width="22px" height="22px"/></td>
                <td  colspan="2" id="input"><input class="input1" name="userid" type="text" /></td>
           
            </tr>
            <tr>
            	<td id="title">密码：</td>
                <td id="photo"><img src="images/pwd.png" width="22px" height="22px"/></td>
                <td colspan="2" id="input"><input class="input1" name="pwd" type="password" /></td>
            </tr>
			<tr>
            	<td id="title">验证码：</td>
                <td id="photo"><img src="images/varify.png" width="22px" height="22px"/></td>
                <td id="input"><input  class="input2" name="varify" type="text" size="10" height="24px" />
                </td>
                <td id="varify"> 
                <img src="SafeCode.do" width="90px" height="28px"/>
                </td>
            </tr>
			<tr>
            	<td colspan="4" style="text-align:center">
                
                	<input class = "btn" name="login" type="submit" value="登录" />
                    <input class = "btn" name="reset" type="reset" value="重置" />
                </td>
            </tr>
            <tr>
            	<td colspan="4" style="text-align:center" >
                    <input name="remeberpwd" type="checkbox" style="vertical-align:middle"/> 
                    <span style="vertical-align:middle;">记住密码</span>
                	<span style="margin:50px; vertical-align:middle"><a href="addnormaluser.jsp">免费注册</a></span>
                </td>
            </tr>
        </table>
    	</form>
        </div>
        </div>
        <div class="copyright">
		<p style="color:white">Copyright © 2019 - Software Technology from <a href="http://www.yngsxy.net/" title="云南工商学院" target="_blank">云南工商学院</a></p> 
		</div>
</body>
</html>