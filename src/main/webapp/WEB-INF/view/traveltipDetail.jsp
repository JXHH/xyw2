<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>校游网-攻略-攻略详情</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/xyw2/static/css/list.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/xyw2/static/js/jquery.js"></script>
</head>
<body>
<%int crtuid = (Integer) session.getAttribute("crtuid"); %>
<div class="box7">
       <h1><c:out value="${ttop.tt.tttitle }"></c:out></h1>   
        <p>
		<script type="text/javascript">
        document.write('${ttop.tt.ttcontent}');
		</script>       
		</p>
        <br/>
       	用户ID：<c:out value="${ttop.tt.ttuid }"></c:out>
       	发布时间：<c:out value="${ttop.tt.ttime }"></c:out>
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
	评论如下：
	<br/>
	<c:forEach items="${ttDetailList }" var="ttd">
		<table id="table-7" align="center" height="80%" width="80%">
		<tr>
			<th><c:out value="${ttd.tpc.tpcontent }"></c:out> 
			<c:if test="${ttd.tpc.tpuid == crtuid }">
					<a href="/xyw2/user/deleteTopic/${ttd.tpc.tpid }">删除</a>
				</c:if>
				<button type="button" class="btn" style="float:right;" data-toggle="modal"
					data-target="#myModal1" 
					onclick="openDialog(${crtuid},${ttd.tpc.tpuid},${ttd.tpc.tpid},${ttop.tt.ttid })">回复</button> <br />
				</th>
				</tr>
			<tbody>
<c:forEach items="${ttd.rmk }" var="rmk">
			<tr>
			<td><c:out value="${rmk.rcontent }"></c:out>
			<c:if test="${rmk.ruid == crtuid }">
					<a href="/xyw2/user/deleteRemark/${rmk.rid }">删除</a>
					</c:if>
			<button type="button" class="btn" style="float:right;"
			data-toggle="modal" data-target="#myModal1" 
			onclick="openDialog(${crtuid},${rmk.ruid},${ttd.tpc.tpid},${ttop.tt.ttid })">回复</button>
	</td>
</tr>
</c:forEach>
			</tbody>
		</table>
	</c:forEach>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel1">回复${rmk.ruid}</h4></div>
			<div class="modal-body">
				<input id="rcontent" name="rcontent" type='text'>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn" data-dismiss="modal">关闭</button>
				<button type="button" id='send' class="btn" onclick="javascript:reply()">发送</button></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<br/>
	<div style="text-align:center;">
	评论：
	<form action="/xyw2/user/addTopic" method="post">
		<input type="text" name="tpcontent" style="width:80%"/>
		<input type="hidden" name="tpuid"  value="${crtuid }"/>
		<input type="hidden" name="tpttid"  value="${ttop.tt.ttid}"/>
		<input type="submit" class="btn" value="提交"/>
	</form>	
	共
	<c:out value="${allPages}" />
	页&nbsp;|&nbsp;
	 当前页：
	<c:out value="${pageNow + 1}" />&nbsp;|&nbsp;
	<c:if test="${pageNow > 0}">
		<a href="/xyw2/traveltipDetail/${ttop.tt.ttid}/${pageNow - 1}">上</a>&nbsp;|&nbsp;
	</c:if>
	<c:if test="${pageNow + 1 < allPages}">
		<a href="/xyw2/traveltipDetail/${ttop.tt.ttid}/${pageNow + 1}">下</a>
	</c:if>
	</div>	
</body>
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
</html>