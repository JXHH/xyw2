<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/ebook/user/modify" method="post" >
		uname:<input type="text" name="uname" value="${user.uname}"/><br>
		utel:<input type="text" name="utel" value="${user.utel}"/><br>
		uem:<input type="text" name="uem" value="${user.uem}"/><br>
		uad:<input type="text" name="uad" value="${user.uad}"/><br>
		<input type="submit"/>
	</form>
</body>
</html>