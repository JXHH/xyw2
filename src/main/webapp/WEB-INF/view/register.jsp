<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网-注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/xyw2/static/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/xyw2/static/js/jquery.js"></script>
<script type="text/javascript" src="/xyw2/static/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="/xyw2/static/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="/xyw2/static/js/jquery.validate.js"></script>
<script type="text/javascript" src="/xyw2/static/js/md5.js"></script>
<script type="text/javascript" src="/xyw2/static/js/page_regist.js?lang=zh"></script>
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox registbox">
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<h3>注册</h3>
			</div>
			<form action="/xyw2/user/doRegister" method="post" id="signupForm">
			<div class="login-error"></div>
			<div class="row">
				<input type="text" value="" class="input-text-user noPic input-click" name="uname" id="uname" placeholder="用户名">
			</div>
			<div class="row">
				<input type="password" value="" class="input-text-password noPic input-click" name="upsw" id="upsw" placeholder="密码">
			</div>
			<div class="row">
				<input type="password" value="" class="input-text-password noPic input-click" name="upsw2" id="upsw2" placeholder="确认密码">
			</div>
			<div class="row">
				<input type="text" value="" class="input-text-user noPic input-click" name="uem" id="uem" placeholder="邮箱">
			</div>
			<div class="row btnArea">
				<input type="submit" value="注册">
			</div>
			</form>
		</div>
		<div class="go-regist">
			已有帐号,请<a href="/xyw2/user/login" class="link">登录</a>
		</div>
	</div>
</div>
${msg}
</body>
</html>