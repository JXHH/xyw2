<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/xyw2/static/css/form.css" rel="stylesheet" type="text/css" />
<title>校游网-个人信息</title>
</head>
<body>
	<c:if test="${crtuid == null }">
		<jsp:forward page="/error"></jsp:forward>
	</c:if>
	<form action="/xyw2/user/modify" method="post" class="bootstrap-frm">

		utel:<input type="text" name="utel" value="${crtuser.utel}" /><br>
		uemail:<input type="text" name="uemail" readonly="readonly"
			value="${crtuser.uemail}" /><br>
		ubirth:<input type="text" name="ubirth" value="${crtuser.ubirth}" /><br> 
		usignature:<textarea rows="" cols=""name="usignature" value="${crtuser.usignature}"></textarea>
		<input type="submit" />
	</form>
</body>
</html>