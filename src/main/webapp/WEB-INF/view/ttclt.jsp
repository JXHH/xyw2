<%@ page language="java" import="java.util.*,com.zzkj.xyw.model.*,com.zzkj.xyw.service.*" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="org.springframework.web.context.support.*"%>      
<%@page import="org.springframework.context.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/xyw2/static/css/all.css"/>
<link rel="stylesheet" type="text/css" href="/xyw2/static/css/art_detail.css"/>
<link rel="stylesheet" href="/xyw2/static/css/bootstrap.css">
<link rel="stylesheet" href="/xyw2/static/css/font-awesome.min.css">
<link rel="stylesheet" href="/xyw2/static/css/main.css">
<link rel="stylesheet" href="/xyw2/static/css/responsive.css">
<!-- <link type="text/css" rel="stylesheet" href="//q.qunarzz.com/travel_new_plan/prd/styles/css/strategyLib@e9c302fa0ce9e8308ed1112b0c1806b6.css" />
 --><script type="text/javascript" src="/xyw2/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/xyw2/static/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/xyw2/static/little.ico"/>
<title>校游网-我的收藏</title>
<style type="text/css">
			@font-face {
				font-family: font-eng;
				src: url('yw4.ttf');
			}
			
 .p1{
max-height: 180px;
word-break: break-all;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-box-orient: vertical; 
    -webkit-line-clamp: 7;
    overflow: hidden;
}
		</style>
</head>
<body>
	<div style="background-image: url(/xyw2/static/img/bg.jpg);">
	<br><br><br><br>
			</div>
		<!--条形导航栏结束-->
		<div class="container">
	<c:forEach items="${ttopList }" var="ttop">
	<c:set var="ttuid" value="${ttop.tt.ttuid}" scope="request"></c:set>
	<% 
		ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());      
		IUserService userService = (IUserService)ctx.getBean("userService"); 
		int ttuid =(Integer)request.getAttribute("ttuid");
		User user = userService.findById(ttuid);
		%>
		<div class="panel panel-default" style="width:50%;margin: 0 auto;" >
  		<div class="panel-heading">
  		<div style="height:40px;" >
  		<div style="float:left">
  		<a href="/xyw2/user/person/<%=ttuid %>" target="_blank">
		<img style="border-radius:50%" width="50" height="50" src="/usericon/<%=ttuid %>.jpeg"/></a>
		</div>
		<div style="float:center">
		<p style="height:20px;color:gray;font-size:14px;">
		<%=user.getUname() %></p>
		<p style="height:20px;color:gray;font-size:14px;">${ttop.tt.ttime}</p>
		</div>
		</div>
  		<br><p style="font-size:18px;font-weight:bold;text-align:center">${ttop.tt.tttitle }</p>
  		</div>
  		<div class="panel-body">
    	<div class="col-md-6">
		<a id="e10" href="/xyw2/traveltipDetail/${ttop.tt.ttid}">
		<img class="workpic" src="${ttop.tt.ttpic}" width="250" height="200"/></a>
		</div>
		<div class="p1">
		<p class="p1">${ttop.tt.ttcontent}</p></div>……
		<div style="clear:both;">
				<div class="col-md-12" style="margin-bottom: 20px;">
				<font style="float: right;">
		<c:choose>
			<c:when test="${ttop.like == 0}">
				<th>
				<a href="/xyw2/user/likeTraveltip/${ttop.tt.ttid}">
				<img src="/xyw2/static/img/exhibiton1/like.png" />赞(${ttop.tt.ttlike })</a></th>
			</c:when>
			
			<c:otherwise>
				<th><a href="/xyw2/user/unlikeTraveltip/${ttop.tt.ttid}">
				<img src="/xyw2/static/img/exhibiton1/like.png" />取消赞(${ttop.tt.ttlike })</a></th>
			</c:otherwise>
		</c:choose>

				<th><a href="/xyw2/user/uncltTraveltip/${ttop.tt.ttid}">
				<img src="/xyw2/static/img/author_work/like.png"/>取消收藏</a></th>
					</font>
		</div>
		</div>
  		</div>
		</div>
		<br><br>
			</c:forEach><br><br>
<div style="text-align:center;clear:both">
				                              共
							<c:out value="${allPages}" />
							页 &nbsp;| &nbsp;当前页：
							<c:out value="${pageNow + 1}" />
							<c:if test="${pageNow > 0}">
								<a style="color:black;font-size:16px;" href="/xyw2/user/ttclt/${pageNow - 1}">&nbsp;|&nbsp;上一页</a>
							</c:if>
							<c:if test="${pageNow + 1 < allPages}">
								<a style="color:black;font-size:16px;" href="/xyw2/user/ttclt/${pageNow + 1}">&nbsp;|&nbsp;下一页</a>
							</c:if>
							</div>
		</div>
</body>
</html>