<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.zzkj.xyw.model.*" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="shortcut icon" href="/xyw2/static/img/little.ico"/>
<title>校游网-首页</title>
<style type="text/css">
			@font-face {
				font-family: font-eng;
				src: url('yw4.ttf');
			}
			img:hover{border:2px gray solid;}  
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/xyw2/static/css/bootstrap.css">
<link rel="stylesheet" href="/xyw2/static/css/font-awesome.min.css">
<link rel="stylesheet" href="/xyw2/static/css/owl.carousel.css">
<link rel="stylesheet" href="/xyw2/static/css/owl.theme.css">
<link rel="stylesheet" href="/xyw2/static/css/animate.css">
<link rel="stylesheet" href="/xyw2/static/css/normalize.css">
<link rel="stylesheet" href="/xyw2/static/css/featherlight.css">
<link rel="stylesheet" href="/xyw2/static/css/main.css">
<link rel="stylesheet" href="/xyw2/static/css/responsive.css">
<script src="/xyw2/static/js/modernizr-2.8.3.min.js"></script>
</head>
<body>
<%-- 
 <%
   HttpSession u = request.getSession();  
   User user = (User)u.getAttribute("crtuser");
%> --%>
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
									<li class="active"><a class="red-nav" href="/xyw2/index">首页</a></li>

									<li class="dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a target="_blank" href="/xyw2/user/traveltip">攻略库</a></li>
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
										href="/xyw2/user/myInbox">我的消息</a></li>	
 									</ul>
									<a target="_blank" href="/xyw2/user/perCenter">
									<img style="border-radius:15px;float:right;margin:4px 50px 0 0;" src="${crtuser.uicon }" width="60" height="60">
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

<div class="main-slider">
	<div class="item">
		<div class="row">
			<div class="col-md-12">
				<div class="m-slider-img">
					<img class="img-responsive" src="/xyw2/static/img/s1.jpg" alt="">
					<div class="m-slider-overlay">
						
					</div>
					<div class="m-slider-content">
						
						<h1 class="text-bold text-uppercase title white ls-2">校游网</h1>
						
				  </div>
				</div>
			</div>
		</div>
	</div>
	<div class="item">
		<div class="row">
			<div class="col-md-12">
				<div class="m-slider-img">
					<img class="img-responsive" src="/xyw2/static/img/s1.jpg" alt="">
					<div class="m-slider-overlay">
						
					</div>
					<div class="m-slider-content">
						
						<h1 class="text-bold text-uppercase title white ls-2">互助游，一场随心的旅行。</h1>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="item">
		<div class="row">
			<div class="col-md-12">
				<div class="m-slider-img">
					<img class="img-responsive" src="/xyw2/static/img/s1.jpg" alt="">
					<div class="m-slider-overlay">
						
					</div>
					<div class="m-slider-content">
						
						<h1 class="text-bold text-uppercase title white ls-2">互助游，一场随心的旅行。</h1>

					</div>
				</div>
			</div>
		</div>
	</div>
</div> 

<section class="highlights no-margin">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4 class="title text-uppercase white text-bold">旅游摄影</h4>
			</div>
		</div>
		<div class="high-slider">
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">香港</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">繁华的都市</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h2.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase pink mt-20">上海</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">快节奏的城市</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h3.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">动物园</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">神奇的动物在哪里</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">广州</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">人山人海</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h2.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase pink mt-20">重庆</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">火锅，热！！！！</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h3.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">云南</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">热带雨林的气候</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">郑州</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">厚重的文化底蕴</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h2.jpg" alt="" class="img-responsive">
						</div>
					  <h6 class="title text-uppercase pink mt-20">山西</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">吃一碗老碗面</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h3.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">武汉</h6>
						<h4 class="text-uppercase dark-gray text-bold mt-20">樱花林，走起</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="section mb-100">
	<div class="container">
		<div class="row">
			<div class="new-steps">
				<div class="item" data-hash="1">
					<div class="col-md-12">
						<div class="new-step-img">
							<img class="img-responsive" src="/xyw2/static/img/step2.jpg" alt="">
							<div class="new-step-content text-center">
								<h1 class="text-uppercase d-black text-bold">旅游攻略</h1>
								<p class="mt-25">提供全方位的旅游攻略，让你找到适合的互助游方式</p>
								<div class="mt-25">
									<a href="#" class="btn btn-black text-uppercase text-bold ls-2">更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item" data-hash="2">
					<div class="col-md-12">
						<div class="new-step-img">
							<img class="img-responsive" src="/xyw2/static/img/step2.jpg" alt="">
							<div class="new-step-content text-center">
								<h1 class="text-uppercase d-black text-bold">旅游攻略</h1>
								<p class="mt-25">提供全方位的旅游攻略，让你找到适合的互助游方式</p>
								<div class="mt-25">
									<a href="#" class="btn btn-black text-uppercase text-bold ls-2">更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item" data-hash="3">
					<div class="col-md-12">
						<div class="new-step-img">
							<img class="img-responsive" src="/xyw2/static/img/step2.jpg" alt="">
							<div class="new-step-content text-center">
								<h1 class="text-uppercase d-black text-bold">旅游攻略</h1>
								<p class="mt-25">提供全方位的旅游攻略，让你找到适合的互助游方式</p>
								<div class="mt-25">
									<a href="#" class="btn btn-black text-uppercase text-bold ls-2">更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="item" data-hash="4">
					<div class="col-md-12">
						<div class="new-step-img">
							<img class="img-responsive" src="/xyw2/static/img/step2.jpg" alt="">
							<div class="new-step-content text-center">
								<h1 class="text-uppercase d-black text-bold">旅游攻略</h1>
								<p class="mt-25">提供全方位的旅游攻略，让你找到适合的互助游方式</p>
								<div class="mt-25">
									<a href="#" class="btn btn-black text-uppercase text-bold ls-2">更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="url-hash">
					<a href="#1">
						<img class="img-responsive" src="/xyw2/static/img/new-thumb1.jpg" alt="">
						<h5 class="text-uppercase white">黄河之路</h5>
					</a>
					<a href="#2">
						<img class="img-responsive" src="/xyw2/static/img/new-thumb2.jpg" alt="">
						<h5 class="text-uppercase white">探索重庆古城</h5>
					</a>
					<a href="#3">
						<img class="img-responsive" src="/xyw2/static/img/new-thumb3.jpg" alt="">
						<h5 class="text-uppercase white">骑行到西藏</h5>
					</a>
					<a href="#4">
						<img class="img-responsive" src="/xyw2/static/img/new-thumb4.jpg" alt="">
						<h5 class="text-uppercase white">怎样找到适合的互助游对象</h5>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="products-main">
	<div class="container">
		
		<div class="row">
			<div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/tec.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-violet-t text-uppercase">重庆</a>
						<h5 class="title text-uppercase d-black text-bold">山城</h5>
						<p class="mt-20 mb-20">热！！！！！，山城导游</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/ent2.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-pink text-uppercase">郑州</a>
						<h5 class="title text-uppercase d-black text-bold">新兴城市</h5>
						<p class="mt-20 mb-20">游览郑州的攻略</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/political.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-green text-uppercase">郑州</a>
						<h5 class="title text-uppercase d-black text-bold">新兴城市</h5>
						<p class="mt-20 mb-20">游览郑州的攻略</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/political1.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-green text-uppercase">郑州</a>
						<h5 class="title text-uppercase d-black text-bold">新兴城市</h5>
						<p class="mt-20 mb-20">带你游览郑州</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/sports1.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-orange-t text-uppercase">郑州</a>
						<h5 class="title text-uppercase d-black text-bold">新兴城市</h5>
						<p class="mt-20 mb-20">带你游览郑州</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
			 <div class="col-md-4 col-sm-6 mt-20">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/tec1.jpg" alt="">
					<div class="product-p-content product-p-content-small text-center white-bg">
						<a href="#" class="btn btn-violet-t text-uppercase">郑州</a>
						<h5 class="title text-uppercase d-black text-bold">新兴城市</h5>
						<p class="mt-20 mb-20">带你游览郑州</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</section>
<section class="trending-news mt-80">
	<span class="start"></span>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="text-uppercase text-bold white mt-20 mb-20">旅游达人</h1>
			</div>
		</div>
		<div class="trending-slider">
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend2.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase pink mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend2.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase pink mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="row">
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase orange mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/trend2.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase pink mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
					<div class="col-sm-4 text-center mt-40">
						<div class="high-slider-img">
							<img src="/xyw2/static/img/h1.jpg" alt="" class="img-responsive">
						</div>
						<h6 class="title text-uppercase violet mt-20">郑州</h6>
						<h4 class="text-uppercase white text-bold mt-20">等你来</h4>
						<span class="sep"></span>
						<span class="add v-light-gray text-uppercase">Oct 12, 2016  /  5 Comments</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="funfacts">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="fun-numbers">
					<div class="fun-n">
						<h5 class="d-black">1<span class="text-upperccase">目的地</span></h5>
						<span class="text-uppercase">可以通过网站的景点查询</span>
					</div>
					<div class="fun-n">
						<h5 class="d-black">2<span class="text-upperccase">达人“地主”</span></h5>
						<span class="text-uppercase">可以看看旅游达人</span>
					</div>
					<div class="fun-n">
						<h5 class="d-black">3<span class="text-upperccase">约游</span></h5>
						<span class="text-uppercase">预约出行，保障你的旅途愉快</span>
					</div>
				</div>
			</div>
			
			<div class="col-md-8">
				<div class="row">
					<h2 class="title text-uppercase d-black text-bold">怎样互助游</h2>
					<p class="mt-20">互助游是一个省钱，结交朋友的随心旅行。以下的方法将帮助你更好的使用我们的网站 </p>
				</div>
				
				<div class="row">
					<div class="more-facts mt-60">
						<div class="col-md-4 col-sm-4">
							<div class="twitter-fact twitter-bg">
								<h6 class="title white text-uppercase text-bold pull-left">Just Now</h6>
								<i class="pull-right fa fa-twitter fa-lg white"></i>
								<div class="clearfix"></div>
								<p class="white mt-20"> “确定好目的地”</p>
							</div>
							<div class="fb-fact fb-bg mt-20">
								<h6 class="title white text-uppercase text-bold pull-left">30 mins ago</h6>
								<i class="pull-right fa fa-facebook fa-lg white"></i>
								<div class="clearfix"></div>
								<p class="white mt-20">和提供互助游帮助的“地主”交流</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="fact-img">
								<img src="/xyw2/static/img/cars.jpg" class="img-responsive" alt="">
								<div class="fact-overlay">
									<h3 class="white text-uppercase text-bold">满意的住宿条件</h3>
								</div>   
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="fact-img">
								<img src="/xyw2/static/img/bike.jpg" class="img-responsive" alt="">
								<div class="fact-overlay">
									<h3 class="white text-uppercase text-bold">适合的出行工具</h3>
								</div>   
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
</section>
<section class="section">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/sports2.jpg" alt="">
					<div class="product-p-content text-center white-bg">
						<a href="#" class="btn btn-orange-t text-uppercase">美食</a>
						<h5 class="title text-uppercase d-black text-bold mt-10">丰富的美食</h5>
						<p class="mt-20 mb-20">美食一直是旅行中必不可少的快乐</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="product-p-img">
					<img class="img-responsive" src="/xyw2/static/img/ent3.jpg" alt="">
					<div class="product-p-content text-center white-bg">
						<a href="#" class="btn btn-pink text-uppercase">民宿</a>
						<h5 class="title text-uppercase d-black text-bold mt-10">住宿也是我们旅行中的考量</h5>
						<p class="mt-20 mb-20">各种住宿环境</p>
						<span class="add v-light-gray text-uppercase">
							Oct 12, 2016  /  5 Comments
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

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
							<h3 class="white text-uppercase text-bold hr-b mt-30"> 景点 </h3>
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
<script src="/xyw2/static/js/jquery-1.11.3.min.js"></script>
<script src="/xyw2/static/js/bootstrap.min.js"></script>
<script src="/xyw2/static/js/owl.carousel.js"></script>
<script src="/xyw2/static/js/featherlight.js"></script>
<script src="/xyw2/static/js/jquery.vimeo.api.min.js"></script>
<script src="/xyw2/static/js/wow.js"></script>
<script src="/xyw2/static/js/main.js"></script>
</body>
</html>