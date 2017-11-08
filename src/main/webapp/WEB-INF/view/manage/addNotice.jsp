<%@ page language="java" contentType="text/html; charset=UTF-8"  import="com.zzkj.xyw.model.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网后台-公告-添加公告</title>
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
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：<%= crtmng.getMname()%> </div>
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
					value="注销" onclick="window.location.href='/xyw2/manage/logout';">
			</div>

			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">发布公告
					</ul>
					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 > 公告管理>
						<a href="addnotice.html">发布公告</a>
					</dl>
					<!--这里打开的是新页面-->
				</div>
				<div class="fbneirong">
				<form name="form" id="form" method="post">
						<div class="am-form-group am-cf">
							<div class="zuo">标题：</div>
							<div class="you">
								<input type="text" class="ntitle" id="ntitle"
									name="ntitle" placeholder="请输入标题">
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">内容：</div>
							<br><br>
							<div id="editor">
    						</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="you">
								<input type="hidden" name="nmid" id="nmid" value="${crtmid }">
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="you" style="margin-left: 11%;">
							<button type="button" id='send' class="am-btn am-btn-success am-radius" onclick="javascript:addNotice()">
										发布
							</button>
							</div>
						</div>
			
					</form>
					<script type="text/javascript" src="/xyw2/static/js/wangEditor.min.js"></script>
    <script type="text/javascript">
    	var E = window.wangEditor;
        var editor = new E('#editor');
        editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
        editor.customConfig.showLinkImg = false
        editor.create();
        function addNotice(){
    		var nmid = document.getElementById("nmid").value;
    		var ntitle = document.getElementById("ntitle").value;
    		var ncontent = editor.txt.html();
    		var formdata=new FormData( ); 
    		formdata.append ("nmid" , nmid);
    		formdata.append ("ntitle" , ntitle);
    		formdata.append ("ncontent" , ncontent);
    		 $.ajax({
    	            url: "/xyw2/manage/notice/add",
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
				</div>
				</div>
				</div>
				</div>
	<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>
</body>
</html>