<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.zzkj.xyw.model.*" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/xyw2/static/css/scene1.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/xyw2/static/css/bootstrap.css">
<link rel="stylesheet" href="/xyw2/static/css/main.css">
<link rel="shortcut icon" href="/xyw2/static/img/little.ico"/>
<title>校游网-热门景点</title>
<style type="text/css">
	img:hover{border:2px gray solid;}  
</style>
</head>
<body>
<%
   HttpSession u = request.getSession();  
   User user = (User)u.getAttribute("crtuser");
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

									<li class="dropdown"><a href="#"
										class="pink-nav dropdown-toggle" data-toggle="dropdown"
										role="button" aria-haspopup="true" aria-expanded="false">攻略<span
											class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a target="_blank" href="/xyw2/user/traveltip">攻略库</a></li>
											<li><a target="_blank" href="/xyw2/addTraveltip">发表攻略</a></li>
										</ul></li>
									<li class="active sky-blue-nav"><a target="_blank" class="sky-blue-nav" href="/xyw2/user/scene">景点</a></li>
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
									<img style="border-radius:15px;float:right;margin:4px 50px 0 0;" src="<%=user.getUicon() %>" width="60" height="60">
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
	<div class="qn_main_box">
		<div class="qn_main_expand clrfix">
			<!-- 首屏焦点区 -->
			<div class="b_focus">
				<!--引导页背景图-->
				<div class="b_guide_bg">
					<img alt="背景图"
						src="/xyw2/static/img/scene2.jpg"
						width="1920" height="480" />
				</div>
				<!--/引导页背景图-->

				<!--搜索框-->
				<div class="b_search_guide">
					<div class="e_searchbox">
						<div class="searchbox_bg"></div>
						<div class="searchbox">
							<div class="searchbox_search clrfix">

								<form action="/xyw2/user/searchScene" id="search" target="_blank" method="post">
									<div class="search_inputbox">
										<input type="text" name="searchScene"
											class="e_search_input" value="搜索城市、国家、目的地…">
									</div>
									<span class="btn_search" title="搜索">
									<button class="btn_search" type="submit" form="search" value="Submit">
										<span>GO</span></button></span>
								</form>
							</div>
							<div class="searchbox_txt clrfix">
							<a href="#">热门搜索：</a>
							<c:forEach var="h" items="${hotSceneList }">
							<a href="/xyw2/user/sceneDetail/${h.sid }">${h.scity }</a>
							</c:forEach>
							<a href="/xyw2/user/scene/all" class="more">全部目的地>></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="qn_main">
			<div class="b_wanttogo" id="js_wanttogo">
				<div class="hd clrfix">
					<div class="tit">❤暖心推荐❤</div>
				</div>
				<div class="ct">
					<ul class="list_item">
						<li class="item current"><a class="imgbox box_01"
							href="/xyw2/user/sceneDetail/237" target="_blank" title="国中贵原，云中丽江"
							data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">丽江</div>
								</div>
								<div class="txtbg"></div> 
								<img alt="丽江" width="350" height="474"
								src="/xyw2/static/img/lj.jpg">
						</a> 
						<a class="imgbox box_02"
							href="/xyw2/user/sceneDetail/3" title="一品黄山,天高云淡"
							target="_blank" data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">黄山</div>
								</div>
								<div class="txtbg"></div> <img alt="黄山" width="214"
								height="207"
								src="/xyw2/static/img/hs.jpg">
						</a> 
						<a class="imgbox box_03"
							href="#" target="_blank" title="神奇的九寨.人间的天堂"
							data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">九寨沟</div>
								</div>
								<div class="txtbg"></div> <img alt="九寨沟" width="214" height="207"
								src="/xyw2/static/img/jzg.jpg">
						</a> 
						<a class="imgbox box_04"
							href="/xyw2/user/sceneDetail/160" title=">行在桂林市，人在画中游"
							target="_blank" data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">桂林山水</div>
								</div>
								<div class="txtbg"></div> <img alt="桂林山水" width="214"
								height="207"
								src="/xyw2/static/img/glss.jpeg">
						</a> 
						<a class="imgbox box_05"
							href="/xyw2/user/sceneDetail/148" title="一起到天涯海角"
							target="_blank" data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">三亚</div>
								</div>
								<div class="txtbg"></div> <img alt="三亚" width="393"
								height="264"
								src="/xyw2/static/img/sy.jpg">
						</a> <a class="imgbox box_06"
							href="#" title="踩着沙滩，漫步在温暖的夕阳下"
							target="_blank" data-beacon="Recommended_theme">
								<div class="txt" data-beacon="Recommended_picture_theme">
									<div class="t">鼓浪屿</div>
								</div>
								<div class="txtbg"></div> <img alt="鼓浪屿" width="252"
								height="264"
								src="/xyw2/static/img/gly.jpg">
						</a></li>
					</ul>
				</div>
			</div>

			<!-- 全部旅行目的地推荐 -->
			<div class="b_destination_recommend">
				<div class="hdbox clrfix">
					<div class="tit">●全部景点●</div>
				</div>
				<div class="ctbox">
					<div class="list current">
						<div class="tagsubbox">
							<div class="tag_bg"></div>
							<div class="tag_ct clrfix">
								<div class="tit">
								<ul class="list_item clrfix">
									<li class="item current" ><a style="font-size:20px;color:black;font-family:youyuan" href="/xyw2/user/scene/all">全部&nbsp;</a></li>
									<li class="item">
									   <c:forEach var="l" items="${letter }">
		                                    <a style="font-size:20px;color:black" href="/xyw2/user/scene/${l }">${l }&nbsp;</a>
	                                   </c:forEach></li>
								</ul>
								</div>
							</div>
						</div>
						
						<div class="contbox current">
						<c:forEach var="all" items="${allCity }">
							<dl class="listbox">
								<dd class="ct">
										<div class="titbox">
											<span class="tit">${all[0].sprovince }:</span>
										</div>
										
										<ul class="list_item patch_pl clrfix">
										<c:forEach var="li" items="${all }">
											<li class="item">
											<a href="/xyw2/user/sceneDetail/${li.sid }"
												class="link" target="_blank">${li.scity }</a>
												</li></c:forEach>
										</ul>
								</dd>
							</dl>
							</c:forEach>
						</div>
						
						<!-- 国内根据字母推荐目的地 -->
						<c:forEach var="c" items="${cityList }">
							<a style="font-size:15px;color:black;font-family:youyuan" href="/xyw2/user/sceneDetail/${c.sid }">${c.scity }|</a>
						</c:forEach>
								
						</div>
					</div>
					</div>
				</div>
			</div>
			<br>
			<br><br><br>
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
	</body>
</html>
