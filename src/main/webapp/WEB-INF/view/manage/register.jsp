<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.zzkj.xyw.model.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网后台-注册员工</title>
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
					value="首页" onclick="window.location.href='admindex.html';">
					<input type="submit"
					class="am-btn am-btn-default am-radius am-btn-xs" name="Submit"
					value="注销" onclick="window.location.href='/xyw2/manage/logout';">
			</div>
			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">信息通知
					</ul>
					<dl class="am-icon-home" style="float: right;">
							当前位置： 首页 > 员工管理> 注册员工
					</dl>
	</div>
	 <div class="fbneirong"> 
        <form action="doRegister" method="post" class="am-form">
          <div class="am-form-group am-cf">
          <div class="zuo">用户名：</div>
          <div class="you">
            <input type="text" class="am-input-sm" id="doc-ipt-email-1" name="mname">
          </div>
          </div>
          
           <div class="am-form-group am-cf">
          <div class="zuo">电话：</div>
          <div class="you">
            <input type="text" class="am-input-sm" id="doc-ipt-email-1" name="mtel">
          </div>
          </div>
          
            <div class="am-form-group am-cf">
          <div class="zuo">email：</div>
          <div class="you">
            <input type="text" class="am-input-sm" id="doc-ipt-email-1" name="memail">
          </div>
          </div>

          <div class="am-form-group am-cf">
          <div class="zuo">密码：</div>
          <div class="you">
            <input type="password" class="am-input-sm" id="doc-ipt-email-1" name="mpsw">
          </div>
          </div>

          <div class="am-form-group am-cf">
          <div class="zuo">确认密码：</div>
          <div class="you">
            <input type="password" class="am-input-sm" id="doc-ipt-email-1" name="mpsw2">
          </div>
          </div>
          
          <div class="am-form-group am-cf">
          <div class="you" style="margin-left: 11%;">
              <button type="submit" class="am-btn am-btn-success am-btn-block">提交</button>

          </div>
        </div>
	</form>
	
		</div>
			</div>
			</div>
</body>
</html>