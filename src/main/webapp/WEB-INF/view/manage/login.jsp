<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网-登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/xyw2/static/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/xyw2/static/assets/js/jquery.js"></script>
<script type="text/javascript" src="/xyw2/static/assets/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="/xyw2/static/assets/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="/xyw2/static/assets/js/jquery.validate.js"></script>
<script type="text/javascript" src="/xyw2/static/assets/js/md5.js"></script>
<script type="text/javascript" src="/xyw2/static/assets/js/page_regist.js?lang=zh"></script>
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox">
		
		<div class="login-content">
			<div class="loginbox-title">
				<h3>登录</h3>
			</div>
			<form action="/xyw2/manage/doLogin" method="post" id="signupForm">
			<div class="login-error"></div>
			<div class="row">
				<input type="text" value="" class="input-text-user noPic input-click" name="mname" id="contact" placeholder="用户名">
			</div>
			<div class="row">
				<input type="password" value="" class="input-text-password noPic input-click" name="mpsw" id="password" placeholder="密码">
			</div>
			<div class="row btnArea">
			<input type="submit" value="提交"/>
			<input type="reset" value="重置"/>
			</div>
			</form>
		</div>
	</div>
	</div>
	${msg}
</body>
</html>