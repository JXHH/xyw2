<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.zzkj.xyw.model.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网后台-用户</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="/xyw2/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="/xyw2/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="/xyw2/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="/xyw2/assets/css/admin.css">
<link href="/xyw2/static/css/form.css" rel="stylesheet" type="text/css" />
<script src="/xyw2/assets/js/jquery.min.js"></script>
<script src="/xyw2/assets/js/app.js"></script>
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
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="/xyw2/assets/i/logo.png"></div>
  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">
 <li class="soso">
<p>   
	<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">全部</option>
          <option value="o">预约记录</option>
          <option value="o">攻略</option>
          <option value="o">公告</option>
        </select>
</p>

<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder=" " /></p>
<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
 </li>
      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>
<div class="am-cf admin-main"> 
<div class="nav-navicon admin-main admin-sidebar">
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：<%= crtmng.getMname()%></div>
    <div class="sideMenu">
      <h3 class="am-icon-flag"><em></em>攻略管理</h3>
      <ul>
        <li><a href="/xyw2/manage/traveltip">攻略列表</a></li>
      </ul>
      <h3 class="am-icon-cart-plus"><em></em>预约记录管理</h3>
      <ul>
        <li><a href="/xyw2/manage/doReserveCheck">查看预约记录</a></li>
      </ul>
      <h3 class="am-icon-gears"><em></em><a href="/xyw2/manage/notice/">公告管理</a></h3>
      <ul>
        <li><a href="/xyw2/manage/addNotice">发布公告</a> </li>
        <li><a href="/xyw2/manage/notice/">公告列表</a></li>
      </ul>
        <h3 class="am-icon-gears"><em></em><a href="">景点管理</a></h3>
      <ul>
        <li><a href="/xyw2/manage/scene/add">添加景点</a> </li>
        <li><a href="/xyw2/manage/scene">景点列表</a></li>
      </ul>
      <h3 class="am-icon-users"><em></em>会员管理</h3>
      <ul>
        <li><a href="/xyw2/manage/user">会员列表</a></li>
      </ul>
      <h3 class="am-icon-volume-up"><em></em>信息通知</h3>
      <ul>
        <li><a href="/xyw2/manage/feedback">查看反馈</a> </li>
      </ul>
      <c:if test="${crtmid == 1}">
      <h3 class="am-icon-users"><em></em>员工管理</h3>
      <ul>
      	 <li><a href="/xyw2/manage/manager">管理员一览</a></li>
          <li><a href="/xyw2/manage/register">添加管理员</a></li>
      </ul>
        </c:if>
    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script>     
</div>



		<div class=" admin-content">

			<div class="daohang">
				<input type="submit"
					class="am-btn am-btn-default am-radius am-btn-xs" name="Submit"
					value="首页" onclick="window.location.href='/xyw2/manage/admindex';">
					<input type="submit"
					class="am-btn am-btn-default am-radius am-btn-xs" name="Submit"
					value="修改信息" onclick="window.location.href='modifyinfo.html';">
					<input type="submit"
					class="am-btn am-btn-default am-radius am-btn-xs" name="Submit"
					value="注销" onclick="window.location.href='/xyw2/manage/logout';">
			</div>

			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">会员列表
					</ul>
					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 > 会员管理>
						<a href="noticelist.html">会员列表 </a>
					</dl>
				</div>
 <form name="form" id="form" class="bootstrap-frm">
  <h1>搜索用户</h1>
	            <span>用户名:</span><input style="width:25%" type="text" name="uname" id="uname"/>
	            <span>性别:</span>男 <input name="usex" id="usex" type="radio" value="1"/>
				女 <input name="usex" id="usex" type="radio" value="0"/>
	           <span>年龄:</span>
		<select class="selectpicker" style="width:10%" id="age1" name="age1">
 		 <option>0</option>
		</select>
		——
		<select class="selectpicker" style="width:10%" id="age2" name="age2">
 		 <option>100</option>
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" id='send' class="button" onclick="javascript:queryUser()">
					搜索
		</button>	
	  </form>
	  <script>
	for(var i = 1;i < 101 ; i++)
	{
	    document.getElementById("age1").innerHTML += '<option value="'+i+'">'+i+'</option>';
	}
	</script>
	<script>
	for(var i = 99;i >= 0 ; i--)
	{
	    document.getElementById("age2").innerHTML += '<option value="'+i+'">'+i+'</option>';
	}
	</script>
	 <script type="text/javascript">
	  function queryUser(){
  		var uname = document.getElementById("uname").value;
  		var usex = document.getElementById("usex").value;
  		var age1 = document.getElementById("age1").value;
  		var age2 = document.getElementById("age2").value;
  		var formdata=new FormData( ); 
  		formdata.append ("uname" , uname);
  		formdata.append ("usex" , usex);
  		formdata.append ("age1" , age1);
  		formdata.append ("age2" , age2);
  		 $.ajax({
  	            url: "/xyw2/user/queryUser",
  	            type: "post",
  	            data : formdata,
  	            cache : false,
  	            processData : false, // 不处理发送的数据，因为data值是Formdata对象，不需要对数据做处理
  	            contentType : false, // 不设置Content-type请求头
  	           /*  success: function(msg){
  	                alert(msg);
  	              } */
  	        });
  	}
	 </script> 
				<form class="am-form am-g" action="deleteUser" method="post">
					<table width="100%"
						class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">

						<thead>
							<tr class="am-success">
								<th class="table-id am-text-center" name="uid">ID</th>
								<th class="table-title" name="uname">登录名</th>
								<th class="table-title" name="usex">性别</th>
								<th class="table-type" name="utel">电话</th>
								<th class="table-type" name="uemail">邮箱</th>
								<th class="table-title" name="uisreal">是否实名认证</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${userList}" var="u">
							<tr>
								<td class="am-text-center"><c:out value="${u.uid}" /></td>
								<td><a href="" class="big-image"><c:out value="${u.uname}" /></a></td>
								<td><c:out value="${u.usex}" /></td>
								<td><c:out value="${u.utel}" /></td>
								<td><c:out value="${u.uemail}" /></td>
								<td><c:out value="${u.uisreal}" /></td>
							</tr>
                      </c:forEach>
						</tbody>

					</table>
					<!-- <div class="am-btn-group am-btn-group-xs">
						 <input type="submit" value="删除"/>

					</div> -->
					<hr />
				</form>
	<div style="text-align:center;clear:both">
							共
							<c:out value="${allPages}" />
							页 &nbsp;| &nbsp;当前页：
							<c:out value="${pageNow + 1}" />
							<c:if test="${pageNow > 0}">
								<a href="/xyw2/manage/user/${pageNow - 1}">&nbsp;|&nbsp;上一页</a>
							</c:if>
							<c:if test="${pageNow + 1 < allPages}">
								<a href="/xyw2/manage/user /${pageNow + 1}">&nbsp;|&nbsp;下一页</a>
							</c:if>
							</div>
			</div>
		</div>
	</div>
	
</body>
</html>