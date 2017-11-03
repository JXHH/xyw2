<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<c:if test="${crtmid == null }">
		<jsp:forward page="/error"></jsp:forward>
	</c:if>

<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="assets/i/logo.png"></div>
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
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：校游网</div>
    <div class="sideMenu">
           <h3 class="am-icon-flag"><em></em>攻略管理</h3>
      <ul>
        <li><a href="traveltip.html">攻略列表</a></li>
      </ul>
      <h3 class="am-icon-cart-plus"><em></em>预约记录管理</h3>
      <ul>
        <li><a href="reservation.html">查看预约记录</a></li>
      </ul>
      <h3 class="am-icon-gears"><em></em><a href="">公告管理</a></h3>
      <ul>
        <li><a href="/xyw2/manage/addNotice">发布公告</a> </li>
        <li><a href="/xyw2/manage/notice/">公告列表</a></li>
      </ul>
        <h3 class="am-icon-gears"><em></em><a href="">景点管理</a></h3>
      <ul>
        <li><a href="/xyw2/addScene">添加景点</a> </li>
        <li><a href="/xyw2/manage/scene">景点列表</a></li>
      </ul>
      <h3 class="am-icon-users"><em></em>会员管理</h3>
      <ul>
        <li><a href="/manage/user">会员列表</a></li>
      </ul>
      <h3 class="am-icon-volume-up"><em></em>信息通知</h3>
      <ul>
        <li><a href="/manage/feedback">查看反馈</a> </li>
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
					value="修改信息" onclick="window.location.href='modifyinfo.html';">
					<input type="submit"
					class="am-btn am-btn-default am-radius am-btn-xs" name="Submit"
					value="注销" onclick="window.location.href='/xyw2/manage/logout';">
			</div>

			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">攻略列表
					</ul>
					<dl class="am-icon-filter">
					
					   <form action="/xyw2/manage/traveltip" method="post">
		                                                      查看未审核<input type="radio" name="isCheck" value="0">
		                                                     查看全部<input type="radio" name="isCheck" value="1">
		                     <input type="submit">
	                    </form>
	                         <!--    筛选<select>
					  		<option value ="all">全部</option>
  							<option value ="yes">已审核</option>
 							<option value ="no">未审核</option>
							</select></dl> -->
					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 > 攻略管理>
						<a href="traveltip.html">攻略列表</a>
					</dl>
					<!--这里打开的是新页面-->
				</div>
				<form class="am-form am-g" action="/xyw2/manage/deleteTraveltip" method="post">
					<table width="100%"
						class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
						<thead>
							<tr class="am-success">
								<th class="table-check">
								<input type="checkbox" onclick="swapCheck()"/></th>
								<th class="table-id" name="ttid">ID</th>
								<th class="table-id" name="ttuid">用户id</th>
								<th class="table-author am-hide-sm-only" name="ttime">发布时间</th>
								<th class="table-author am-hide-sm-only" name="tttitle">标题</th>
								<th class="table-title" name="ttview">浏览量</th>
								<th class="table-title" name="ttlike">点赞量</th>
								<th class="table-title" name="tttsmt">转发量</th>
								<th class="table-title" name="ttcmt">评论数</th>
								<th class="table-author am-hide-sm-only" name="osta">审核状态</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${traveltipList}" var="tt">
							<tr>
								<td><input type="checkbox" name="ttid" value="${tt.ttid}"></td>

								<td><c:out value="${tt.ttid}" /></td>
								<td><c:out value="${tt.ttuid}" /></td>
								<td><c:out value="${tt.ttime}" /></td>
								<td><a href="ttdetail.html" target="blank"><c:out value="${tt.tttitle}" /></a></td>
								<td class="am-hide-sm-only"><c:out value="${tt.ttid}" /></td>
								<td><c:out value="${tt.ttview}" /></td>
								<td><c:out value="${tt.ttlike}" /></td>
								<td><c:out value="${tt.ttcmt}" /></td>
								<td class="am-hide-sm-only"><c:out value="${tt.ttischeck}" /></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="am-btn-group am-btn-group-xs">
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-trash-o"></span>删除
						</button>
					</div>
					<ul class="am-pagination am-fr">
						<li class="am-disabled"><a href="#">«</a></li>
						<li class="am-active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">»</a></li>
					</ul>
					<hr />
				</form>
				共
	<c:out value="${allPages}" />
	页
	<br> 当前页：
	<c:out value="${pageNow + 1}" />
	<br>
	<c:if test="${pageNow > 0}">
		<a href="/xyw2/manage/traveltip/${pageNow - 1}">上</a>
	</c:if>

	<c:if test="${pageNow + 1 < allPages}">
		<a href="/xyw2/manage/traveltip/${pageNow + 1}">下</a>
	</c:if>
				</div>
				</div>
				</div>
		<script src="assets/js/amazeui.min.js"></script>
		<script type="text/javascript"  
        src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>  
  
    <script type="text/javascript">  
        //checkbox 全选/取消全选  
        var isCheckAll = false;  
        function swapCheck() {  
            if (isCheckAll) {  
                $("input[type='checkbox']").each(function() {  
                    this.checked = false;  
                });  
                isCheckAll = false;  
            } else {  
                $("input[type='checkbox']").each(function() {  
                    this.checked = true;  
                });  
                isCheckAll = true;  
            }  
        }   
    </script>  
</body>

