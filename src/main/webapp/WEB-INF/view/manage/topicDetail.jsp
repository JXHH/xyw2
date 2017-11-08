<%@page import="com.zzkj.xyw.service.IManagerService"%>
<%@page import="com.zzkj.xyw.service.IUserService,com.zzkj.xyw.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   HttpSession u = request.getSession();  
   Manager crtmng = (Manager)u.getAttribute("crtmng");
   int crtmid = (Integer)u.getAttribute("crtmid");
%>
<c:if test="${crtmid == null }">
<script type="text/javascript" language="javascript">
		alert("先登录吧~");
		window.document.location.href="/xyw2/manage/login";
	</script>	</c:if>
	<c:out value="${topic.tid }"></c:out>
	<form action="/ebook/manage/addRemark" method="post">
		<input type="text" name="rcontent" /> <input type="hidden"
			name="rtid" value="${topic.tid }"> <input type="submit"
			value="回复">
	</form>

	<c:forEach items="${allRemark}" var="r">
		<c:if test="${r.rsta == 1 }">


管理员:<c:out value="${r.rtoid }:"></c:out>
		</c:if>

		<c:if test="${r.rsta == 0 }">

用户:<c:out value="${r.rtoid }:"></c:out>
		</c:if>
		<c:out value="${r.rcontent }"></c:out>
		</br>
		<c:out value="${r.rtime }"></c:out>
		</br>
	</c:forEach>

</body>
</html>