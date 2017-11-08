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
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/xyw2/static/img/little.ico"/>
<title>校游网-攻略-攻略详情</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/xyw2/static/js/jquery.js"></script>
<link rel="stylesheet" href="/xyw2/static/css/ttdetail.css" type="text/css">
</head>
<body>
<c:if test="${crtuid == null }">
	<script type="text/javascript" language="javascript">
		alert("先登录吧~");
		window.document.location.href="/xyw2/user/login";
	</script>	
	</c:if>
<%
  int crtuid = (Integer) session.getAttribute("crtuid");
	User crtuser = (User)session.getAttribute("crtuser");
%>
<div class="q_skin">
		<div class="topmenu">
			<div class="b_cover">
			<!-- class="cover_img" -->
				<img width="100%" src="/traveltippic/${ttop.tt.ttid }.jpeg"/>
				<!-- <div class="loading">
					<div class="loading_gif"></div>
					<div class="loading_text">头图加载中</div>
				</div> -->
				<div class="b_crumb">
					<div class="b_crumb_cover"></div>
					<p class="b_crumb_cont">
						<a title="旅行" href="#">攻略</a> &nbsp; <span class="arr">&gt;</span>
						&nbsp;<span><c:out value="${ttop.tt.tttitle }"></c:out></span>
					</p>
				</div>
			</div>

<div class="cover_title">
				<div class="container">
					<img class="user_head" width="107" height="107"
						src="/usericon/${user.uid }.jpeg"> <a class="link_userspace js_user"
						href="/xyw2/user/person/1" target="_blank"></a>
				</div>
			</div>

<div class="b_main_info clrfix">
				<div class="fix_box">
					<div class="fix-title"><c:out value="${ttop.tt.tttitle }"></c:out></div>
					<div class="e_line2">
						<ul class="clrfix">
						
							<li class="head">${user.uname }</li>
							<li class="date">创建于<span><c:out value="${ttop.tt.ttime }"></c:out></span></li>
						</ul>
						<c:if test="${ttop.tt.ttuid == crtuid }">
		<a href="/xyw2/traveltip/delete/${ttop.tt.ttid }">删除</a>
	</c:if>
	<c:choose>
		<c:when test="${ttop.like == 0}">
			<th>
			<a href="/xyw2/user/likeTraveltip/${ttop.tt.ttid}">赞(${ttop.tt.ttlike })</a></th>
		</c:when>
		<c:otherwise>
			<th><a href="/xyw2/user/unlikeTraveltip/${ttop.tt.ttid}">取消赞(${ttop.tt.ttlike })</a></th>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${ttop.clt == 0}">
			<th><a href="/xyw2/user/cltTraveltip/${ttop.tt.ttid}">收藏</a></th>
		</c:when>
		
		<c:otherwise>
			<th><a href="/xyw2/user/uncltTraveltip/${ttop.tt.ttid}">取消收藏</a></th>
		</c:otherwise>
	</c:choose>
					</div>
				</div>
			</div>
		</div>

<div class="container main-container">
			<div class="main_box clrfix">
				<div class="main_leftbox">
					<div class="b_panel_schedule">
						<div class="e_main">
							<div class="e_day day_style0 day-19326602">
								<h4 class="period_hd">
									<dl class="day_title">
										<dt class="clrfix">
											<div class="text"><c:out value="${ttop.tt.tttitle }"></c:out></div>
										</dt>
									</dl>
								</h4>
								<!-- period_ct start -->
								<div class="period_ct">
									<div class="b_poi_info b_poi_item">
										<div class="top">
											<h5 class="type spot">
 												<p>
													<script type="text/javascript">
       												 document.write('${ttop.tt.ttcontent}');
													</script> 
													</p>
 											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

<!-- 评论start -->
<div class="b_comment_main">
						<div class="hd">
							<h3 class="e_hd no_bottomborder">评论</h3>
						</div>
						<div class="e_ct">
							<dl class="e_comment_add clrfix js_commentbox">
								<dt class="e_ct_l">
									<a class="author_img js_user"
										href="/xyw2/user/person/1"
										target="_blank" data-beacon="comment_user_name"><img
										width="44" height="44"
										src="/usericon/<%=crtuid %>.jpeg"></a><%=crtuser.getUname() %>
								</dt>
								<dd class="e_ct_r">
								<form action="/xyw2/user/addTopic" method="post">
									<div class="textarea_box">
										<textarea maxlength="300"
											placeholder="要不。。。发条评论？"
											class="PLACEHOLDER-INPUT" rows="" cols="" name="tpcontent"
											data-placeholder-css="font-size:14px"></textarea>
										<div class="num_dom"></div>
									</div>
									<div class="ops_btn">
									
										<input type="hidden" name="tpuid"  value="${crtuid }"/>
										<input type="hidden" name="tpttid"  value="${ttop.tt.ttid}"/>
										<input type="submit" class="btn" value="评论"/>
										</div>
									</form>	
								</dd>
							</dl>
							<div class="e_comment_list js_commentlist">
							<c:forEach items="${ttDetailList }" var="ttd">
							<c:set var="tpuid" value="${ttd.tpc.tpuid }" scope="request"></c:set>
							<% 
							  ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());      
			                   IUserService userService = (IUserService)ctx.getBean("userService"); 
			                   int tpuid =(Integer)request.getAttribute("tpuid");
			                   User user = userService.findById(tpuid);
							%>
								<dl class="e_comment_item js_item clrfix">
									<dt class="e_ct_l">
										<a class="js_user"
											href="/xyw2/user/person/<%=tpuid %>"
											target="_blank" data-beacon="commentList_user_name"><img
											width="40" height="40"
											src="/usericon/<%=tpuid %>.jpeg"/></a>
									</dt>
									<dd class="e_ct_r">
										<div class="bodystr">
											<a class="author js_user"
												href="/xyw2/user/person/<%=tpuid %>"
												target="_blank" data-beacon="comment_user_name"><%=user.getUname() %>&nbsp;：
											</a><c:out value="${ttd.tpc.tpcontent }"></c:out> 
											<c:if test="${ttd.tpc.tpuid == crtuid }">
					<a href="/xyw2/user/deleteTopic/${ttd.tpc.tpid }">删除</a>
				</c:if>
										</div>
										<div class="opts meta_bottom clrfix">
											<div class="opts_l clrfix">
												<div class="c_time"><c:out value="${ttd.tpc.tptime }"></c:out></div>
											</div>
				<button type="button" class="btn" style="float:right;" data-toggle="modal"
					data-target="#myModal1" 
					onclick="openDialog(${crtuid},${ttd.tpc.tpuid},${ttd.tpc.tpid},${ttop.tt.ttid })">回复</button> 
										</div>
										<div class="js_replycontainer">
											<div class="e_comment_r_expand js_replyroot">
												<div class="js_reply_dom">
													<!——从这里开始是一条子评论的结构 ——>
													<c:forEach items="${ttd.rmk }" var="rmk">
													<c:set var="ruid" value="${rmk.ruid }" scope="request"></c:set>
													<c:set var="rduid" value="${rmk.rduid }" scope="request"></c:set>
													<%
													   int ruid = (Integer)request.getAttribute("ruid");
													 int rduid = (Integer)request.getAttribute("rduid");
													   User user2 = userService.findById(ruid);
													   User user3 = userService.findById(rduid);
													%>
													<div class="js_replylst replylst_last">
														<dl class="q_box clrfix">
															<dt class="q_box_l">
																<a class="js_user" href="/xyw2/user/person/<%=ruid %>"
																	target="_blank" data-beacon="commentList_user_name"><img
																	width="40" height="40"
																	src="/usericon/<%=ruid %>.jpeg"/></a>
															</dt>
															<dd class="q_box_r">
																<div class="q_box_r_author">
																	<a class="js_user" href="/xyw2/user/person/<%=ruid %>"
																		target="_blank" data-beacon="reply_user_name"><%=user2.getUname() %></a>
																	<span class="text">回复</span> <a class="js_user"
																		href="/xyw2/user/person/<%=rduid %>"
																		target="_blank" data-beacon="reply_user_name"><%=user3.getUname() %>&nbsp;：</a>
																	<c:out value="${rmk.rcontent }"></c:out>
			<c:if test="${rmk.ruid == crtuid }">
					<a href="/xyw2/user/deleteRemark/${rmk.rid }">删除</a>
					</c:if>
																</div>
																<div class="q_box_r_attribute clrfix">
																	<div class="e_attribute_l">
																		<div class="c_time"><c:out value="${rmk.rtime }"></c:out></div>
																	</div>
																	<button type="button" class="btn" style="float:right;"
			data-toggle="modal" data-target="#myModal1" 
			onclick="openDialog(${crtuid},${rmk.ruid},${ttd.tpc.tpid},${ttop.tt.ttid })">回复</button>
																</div>
															</dd>
														</dl>
													</div>
													</c:forEach>
													<!——/到这里结束该条子评论的结构 ——>
												</div>
											</div>
										</div>
									</dd>
								</dl>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- 评论 end -->
	
				</div>
			</div>
		</div>
	<div style="text-align:center;">
	共
	<c:out value="${allPages}" />
	页&nbsp;|&nbsp;
	 当前页：
	<c:out value="${pageNow + 1}" />&nbsp;|&nbsp;
	<c:if test="${pageNow > 0}">
		<a href="/xyw2/traveltipDetail/${ttop.tt.ttid}/${pageNow - 1}">上一页</a>&nbsp;|&nbsp;
	</c:if>
	<c:if test="${pageNow + 1 < allPages}">
		<a href="/xyw2/traveltipDetail/${ttop.tt.ttid}/${pageNow + 1}">下一页</a>
	</c:if>
	</div>	
	</div>
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" data-toggle="modal"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel1">回复${rmk.ruid}</h4></div>
			<div class="modal-body">
			<div class="input-group input-group-lg">
  			<input type="text" id="rcontent" name="rcontent" class="form-control" aria-describedby="basic-addon1">
			</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-lg active btn-sm" data-dismiss="modal">关闭</button>
				<button type="button" id='send' class="btn btn-primary btn-lg active btn-sm" onclick="javascript:reply()">发送</button></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<script type="text/javascript">
		let ruid, rduid, rtpid, rttid;
		let murl;
		// 点击回复时打开模态框
		function openDialog(uid, duid, tpid, ttid) {
			// 设置模态框标题
			$('#myModalLabel1').text('回复' + duid);
			ruid = uid;
			rduid = duid;
			rtpid = tpid;
			rttid = ttid;
		}
		function reply() {
					let rcontent = $('#rcontent').val();
					$.ajax({
						//提交数据的类型 POST
						type:'POST',
						//提交的网址
						url: murl="/xyw2/user/addRemark",
						/* 回复的数据 */
						data: {ruid: ruid, rduid: rduid, rtpid: rtpid, rttid: rttid, rcontent: rcontent},
						/* 服务器响应后的回调函数 */
						/* success: (data) => {
						} */
					})
				}
	</script>
</body>
</html>
