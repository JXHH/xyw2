<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/xyw2/static/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="/xyw2/static/css/all.css"/>
<link rel="stylesheet" type="text/css" href="/xyw2/static/css/art_detail.css"/>
<link rel="stylesheet" href="/xyw2/static/css/bootstrap.css">
<link rel="stylesheet" href="/xyw2/static/css/font-awesome.min.css">
<link rel="stylesheet" href="/xyw2/static/css/owl.carousel.css">
<link rel="stylesheet" href="/xyw2/static/css/owl.theme.css">
<link rel="stylesheet" href="/xyw2/static/css/animate.css">
<link rel="stylesheet" href="/xyw2/static/css/normalize.css">
<link rel="stylesheet" href="/xyw2/static/css/featherlight.css">
<link rel="stylesheet" href="/xyw2/static/css/main.css">
<link rel="stylesheet" href="/xyw2/static/css/responsive.css">
<link type="text/css" rel="stylesheet" href="//q.qunarzz.com/travel_new_plan/prd/styles/css/strategyLib@e9c302fa0ce9e8308ed1112b0c1806b6.css" />
<script type="text/javascript" src="/xyw2/static/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="/xyw2/static/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/xyw2/static/little.ico"/>
<title>校游网-攻略库</title>
<style type="text/css">
			@font-face {
				font-family: font-eng;
				src: url('yw4.ttf');
			}
div.search {padding: 30px 0;float:left;}

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
									<li class="active"><a class="red-nav" href="/xyw2/index">首页</a></li>

									<li class="dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="/xyw2/user/traveltip">攻略库</a></li>
											<li><a href="/xyw2/addTraveltip">发表攻略</a></li>
										</ul></li>

									<li class="dropdown"><a href="#"
										class="sky-blue-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">景点<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="/xyw2/user/scene">热门景点</a></li>
										</ul></li>
									<li><a class="red-nav" href="#">约游 </a></li>
									<li><a class="green-nav" href="#">住宿</a></li>
									<li><a class="sky-blue-nav" href="#">火车票 </a></li>
									<li><a class="red-nav" href="#">机票</a></li>
									<li><a class="pink-nav" href="/xyw2/user/feedback">反馈</a></li>
									<li><a class="pink-nav" href="/xyw2/user/login">登录</a></li>
									<li><a class="sky-blue-nav" href="/xyw2/user/register">注册</a></li>
								</c:when>
								<c:otherwise>
									<li class="active"><a class="red-nav" href="/xyw2/index">首页</a></li>

									<li class="dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="/xyw2/user/traveltip">攻略库</a></li>
											<li><a href="/xyw2/addTraveltip">发表攻略</a></li>
										</ul></li>

									<li class="dropdown"><a href="#"
										class="sky-blue-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">景点<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="/xyw2/user/scene">热门景点</a></li>
										</ul></li>
									<li><a class="red-nav" href="/xyw2/sendMessage">约游 </a></li>
									<li><a class="green-nav" href="#">住宿</a></li>
									<li><a class="sky-blue-nav" href="#">火车票 </a></li>
									<li><a class="red-nav" href="#">机票</a></li>
									<li><a class="pink-nav" href="/xyw2/user/feedback">反馈</a></li>
									<li><a class="green-nav"
										href="/xyw2/user/person/${crtuid}">个人中心</a></li>
									<li><a class="white-nav" href="/xyw2/user/logout">注销</a></li>
									<li>
									<img style="border-radius:50%;" src="${crtuser.uicon}" width="60" height="60">
									<!-- <form action="/xyw2/user/modifyIcon" method="post"
										enctype="multipart/form-data">
										<input type="file" name="file"> <input type="submit" value="修改头像"/>
									</form> -->
									</li>
								</c:otherwise>
							</c:choose>
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
		<input class="aaa" type="text" name="keyword" value="${search.keyword }" placeholder="请输入内容或勾选城市"/>
		<input type="checkbox" name="city" value="北京">北京
		<input type="checkbox" name="city" value="上海">上海
		<input type="checkbox" name="city" value="南京">南京
		<button type="submit" form="search"></button>
		</form>
	</div>
		<!-- /filter_area -->

		<!-- filter_tag -->
		<div class="filter_tag_box">
		<div class="index_type">
			<a class="cur" href="#" data-beacon="sort_hot" rel="nofollow">热度<em class="arrow"></em></a>
			<a href="#" data-beacon="sort_new" rel="nofollow">最新发表<em class="arrow"></em></a>
		</div>
		</div>
	<!--/filter_tag -->
	<c:if test="${crtuid == null }">
		<jsp:forward page="/error"></jsp:forward>
	</c:if>
		<c:forEach items="${ttopList }" var="ttop">
		<div class="row workdiv" style="background-color: white;width: 60%;margin-left: auto;margin-right: auto;">
				<div class="col-md-12">
					<div class="col-md-6">
					<a id="e10" href="/xyw2/traveltipDetail/${ttop.tt.ttid}">
					<img class="workpic" src="${ttop.tt.ttpic}" width="300" height="200"/></a>
					</div>
					<div class="col-md-6">
						<p style="margin-top: 30px;"><c:out value="${ttop.tt.tttitle }"></c:out></p>
					</div>
				</div>
				<div style="clear:both">
				<c:if test="${ttop.tt.ttuid == crtuid }">
				<a href="/xyw2/deleteTraveltip/${ttop.tt.ttid }">删除</a>
				<a href="/xyw2/modifyTraveltip/${ttop.tt.ttid }">修改</a>
				</c:if>
				</div>
				<div class="col-md-12" style="margin-bottom: 20px;">
				<font style="float: right;">
				<c:choose>
			<c:when test="${ttop.like == 0}">
				<th>
				<a href="/xyw2/user/likeTraveltip/${ttop.tt.ttid}">赞(${ttop.tt.ttlike })&nbsp;</a></th>
			</c:when>
			
			<c:otherwise>
				<th><a href="/xyw2/user/unlikeTraveltip/${ttop.tt.ttid}">取消赞(${ttop.tt.ttlike })&nbsp;</a></th>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${ttop.clt == 0}">
				<th><a href="/xyw2/user/cltTraveltip/${ttop.tt.ttid}">收藏&nbsp;</a></th>
			</c:when>
			
			<c:otherwise>
				<th><a href="/xyw2/user/uncltTraveltip/${ttop.tt.ttid}">取消收藏&nbsp;</a></th>
			</c:otherwise>
		</c:choose>
					<img src="/xyw2/static/img/author_work/like.png"/></font>
				</div>
			</div>
			</c:forEach><br><br>
<div style="text-align:center">
	共
	<c:out value="${allPages}" />
	页
	<br> 当前页：
	<c:out value="${pageNow + 1}" />
	<br>
	<c:if test="${pageNow > 0}">
		<a href="/xyw2/user/traveltip/${pageNow - 1}">上</a>
	</c:if>

	<c:if test="${pageNow + 1 < allPages}">
		<a href="/xyw2/user/traveltip/${pageNow + 1}">下</a>
	</c:if>
		</div>
		</div>
	<footer>
		<div class="upperfooter">
			<div class="container">
				<div class="row mt-70">
					<div class="col-md-5 col-sm-6">
						<div class="fbt">
							<h3 class="white text-uppercase text-bold hr-b mt-30">联系我们</h3>
							<p class="mt-40 f-gray">电话：15638232505 地址：河南省郑州市高新区科学大道100号
								e-mail：ieliangshuang@163.com</p>
						</div>
					</div>
					<div class="col-md-5 col-sm-6 col-md-offset-1">
						<div class="fbt">
							<div class="row">
								<h3 class="white text-uppercase text-bold hr-b mt-30">景点</h3>

								<div class="popular-tags mt-50">
									<a href="#" class="btn btn-gray">北京</a> <a href="#"
										class="btn btn-gray">上海</a> <a href="#" class="btn btn-gray">武汉</a>
									<a href="#" class="btn btn-gray">三亚</a> <a href="#"
										class="btn btn-gray">云南</a>
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