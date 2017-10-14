<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>

	<c:choose>
		<c:when test="${crtuid == null}">
			<a href="/xyw2/user/login">登录</a>
			<a href="/xyw2/user/register">注册</a>
		</c:when>

		<c:otherwise>
			<a href="/xyw2/addTraveltip">发表游记</a>
			<a href="/xyw2/user/info">我的账户</a>
			<a href="/xyw2/user/logout">注销</a>
			<img src="${crtuser.uicon}">
			<form action="/xyw2/user/modifyIcon" method="post"
				enctype="multipart/form-data">
				<input type="file" name="file"> <input type="submit" />
			</form>
		</c:otherwise>
	</c:choose>

	<form action="/xyw2/book/search/0" method="post">
		<input name="keyword" /> <input type="submit">
	</form>
</body>
</html>