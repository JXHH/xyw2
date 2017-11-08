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
<script type="text/javascript" src="/xyw2/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/xyw2/static/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/xyw2/static/little.ico"/>
<title>校游网-攻略库</title>
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
div.search {padding: 30px 0;float:right;}

		  form {
			position: relative;
			width: 300px;
			margin: 0 auto;
		}

		.aaa, button {
			border: none;
			outline: none;
		}

		.aaa {
			width: 100%;
			height: 42px;
			padding-left: 13px;
		}

		button {
			height: 42px;
			width: 42px;
			cursor: pointer;
			position: absolute;
		}			
		 .bar7 form {
			height: 42px;
		} 
		.bar7 .aaa {
			width: 250px;
			border-radius: 42px;
			border: 2px solid #324B4E;
			background: #F9F0DA;
			transition: .3s linear;
			float: right;
		}
		.bar7 .aaa:focus {
			width: 300px;
		}
		.bar7 button {
			background: none;
			top: -2px;
			right: 0;
		}
		.bar7 button:before{
		  content: "\f002";
		  font-family: FontAwesome;
		  color: #324b4e;
		}			
		
		</style>
</head>
<body>
	<!--条形导航栏-->
<%
   HttpSession u = request.getSession();  
   User user1 = (User)u.getAttribute("crtuser");
%>
<header>
	<div class="top-news">
		   <div class="container-fluid">
				<div class="row"></div>
		   </div>
	   </div>
	   <div class="main-head">
		   <div class="container-fluid">
				<div class="row">
				  <div class="col-md-9 dark-gray-bg no-padding">
				      <div class="add-area text-center"></div>
						   <nav class="navbar navbar-default no-mb">
								  <div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
									  <span class="sr-only">Toggle navigation</span>
									  <span class="icon-bar"></span>
									  <span class="icon-bar"></span>
									  <span class="icon-bar"></span>
									</button>
								  </div>
								  <div id="navbar" class="navbar-collapse collapse no-margin no-padding">
						<ul class="nav navbar-nav">
							<c:choose>
								<c:when test="${crtuid == null}">
									<li class="red-nav"><a class="red-nav" href="/xyw2/index">首页</a></li>

									<li class="dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a target="_blank" href="/xyw2/user/traveltip">攻略库</a></li>
											<li><a target="_blank" href="/xyw2/addTraveltip">发表攻略</a></li>
										</ul></li>
									<li class="sky-blue-nav"><a class="sky-blue-nav" target="_blank" href="/xyw2/user/scene">景点</a></li>
									<li><a target="_blank" class="red-nav" href="/xyw2/queryUser">约游 </a></li>
									<li><a class="green-nav" href="#">住宿</a></li>
									<li><a class="sky-blue-nav" href="#">火车票 </a></li>
									<li><a class="red-nav" href="#">机票</a></li>
									<li><a class="pink-nav" href="/xyw2/user/login">登录</a></li>
									<li><a class="sky-blue-nav" href="/xyw2/user/register">注册</a></li>
								</c:when>
								<c:otherwise>
									<li class="red-nav"><a class="red-nav" href="/xyw2/index">首页</a></li>

									<li class="active dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li ><a target="_blank" href="/xyw2/user/traveltip">攻略库</a></li>
											<li><a target="_blank" href="/xyw2/addTraveltip">发表攻略</a></li>
										</ul></li>
									<li class="sky-blue-nav"><a target="_blank" class="sky-blue-nav" href="/xyw2/user/scene">景点</a></li>
									<li><a target="_blank" class="red-nav" href="/xyw2/queryUser">约游 </a></li>
									<li><a class="green-nav" href="#">住宿</a></li>
									<li><a class="sky-blue-nav" href="#">火车票 </a></li>
									<li><a class="red-nav" href="#">机票</a></li>
									<li><a target="_blank" class="green-nav"
										href="/xyw2/user/person/${crtuid}">个人中心</a></li>
									<li><a target="_blank" class="pink-nav"
										href="/xyw2//user/myInbox">我的消息</a></li>	
 									</ul>
									<a target="_blank" href="/xyw2/user/perCenter">
									<img style="border-radius:15px;float:right;margin:4px 50px 0 0;" src="<%=user1.getUicon() %>" width="60" height="60">
									</a>
								</c:otherwise>
							</c:choose>
					<!-- 	<div class="search bar7">
						<form action="/xyw2/book/search/0" method="post">
						<input type="text" name="keyword" placeholder="请输入您要搜索的内容...">
						<button type="submit"></button>
						</form>
						</div> -->
					</div><!--/.nav-collapse -->
						  </nav>
			      </div>
			 </div>
		   </div>
	   </div>
</header>
		<!--条形导航栏结束-->
		<div class="container">
		<div class="search bar7">
		<form action="/xyw2/search" id="search" method="post">
		<input class="aaa" type="text" name="keyword" value="${search.keyword }" placeholder="请输入关键字"/>
		<button type="submit" form="search"></button>
		</form>
		<p style="float:right;">
		<%
		 HttpSession u1 = request.getSession();
		String sort = null;
		if(u.getAttribute("sort") != null){
			sort = (String)u1.getAttribute("sort");
		}
		   if("11".equals(sort)){
		%>
		<a href="/xyw2/search?sort=10" style="font-size:15px">热度<img src="/xyw2/static/img/up.png"></a>&nbsp;&nbsp;
		<%
		   }
		   else{
		%>
		<a href="/xyw2/search?sort=11" style="font-size:15px">热度<img src="/xyw2/static/img/down.png"></a>&nbsp;&nbsp;
		<%
		   }
		    if("01".equals(sort)){
		%>
		<a href="/xyw2/search?sort=00" style="font-size:15px">发表时间<img src="/xyw2/static/img/up.png"></a></p>
		<%
		   }
		    else{
		%>
		<a href="/xyw2/search?sort=01" style="font-size:15px">发表时间<img src="/xyw2/static/img/down.png"></a></p>
		<%
		  }
		%>
	</div>
<%-- 	<c:if test="${crtuid == null }">
		<jsp:forward page="/error"></jsp:forward>
	</c:if> --%>
	<br><br><br><br><br><br>
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
				<c:if test="${ttop.tt.ttuid == crtuid }">&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/xyw2/deleteTraveltip/${ttop.tt.ttid }">删除</a>
				<a href="/xyw2/modifyTraveltip/${ttop.tt.ttid }">编辑</a>
				</c:if>
				
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
		
		<c:choose>
			<c:when test="${ttop.clt == 0}">
				<th><a href="/xyw2/user/cltTraveltip/${ttop.tt.ttid}">
				<img src="/xyw2/static/img/author_work/like.png"/>收藏</a></th>
			</c:when>
			
			<c:otherwise>
				<th><a href="/xyw2/user/uncltTraveltip/${ttop.tt.ttid}">
				<img src="/xyw2/static/img/author_work/like.png"/>取消收藏</a></th>
			</c:otherwise>
		</c:choose>
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
								<a style="color:black;font-size:16px;" href="/xyw2/user/traveltip/${pageNow - 1}">&nbsp;|&nbsp;上一页</a>
							</c:if>
							<c:if test="${pageNow + 1 < allPages}">
								<a style="color:black;font-size:16px;" href="/xyw2/user/traveltip/${pageNow + 1}">&nbsp;|&nbsp;下一页</a>
							</c:if>
							</div>
		</div>
		<br><br>
<footer>
	<div class="upperfooter">
		<div class="container">
			<div class="row mt-70">
				<div class="col-md-5 col-sm-6">  
					<div class="fbt">   
						<h3 class="white text-uppercase text-bold hr-b mt-30"> 
						<a class="white" style="font-size:22px" href="/xyw2/user/feedback">联系我们</a> </h3>
						<p class="mt-40 f-gray">
							电话：15638232505
							地址：河南省郑州市高新区科学大道100号
							<br>
							e-mail：ieliangshuang@163.com
						</p>
					</div>
				</div>
				<div class="col-md-5 col-sm-6 col-md-offset-1">
					<div class="fbt">
						<div class="row">
							<h3 style="font-size:20px" class="white text-uppercase text-bold hr-b mt-30"> 景点 </h3>
							<div class="popular-tags mt-50">
								<a href="#" class="btn btn-gray">北京</a>
								<a href="#" class="btn btn-gray">上海</a>
								<a href="#" class="btn btn-gray">武汉</a> 
								<a href="#" class="btn btn-gray">三亚</a>
								<a href="#" class="btn btn-gray">云南</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
</body>
</html>