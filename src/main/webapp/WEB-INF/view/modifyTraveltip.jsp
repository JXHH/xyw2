<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="/xyw2/static/css/form.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="/xyw2/static/img/little.ico"/>
<title>校游网-攻略-修改攻略</title>
</head>
<body>
	<c:if test="${crtuid == null }">
	<script type="text/javascript" language="javascript">
		alert("先登录吧~");
		window.document.location.href="/xyw2/user/login";
	</script>	
	</c:if>
<form name="form" id="form" class="bootstrap-frm">
		<h1>修改攻略
	<span>请填写全部信息~</span>
	</h1>
	<label>
	<span>封面图：</span> <input type="file" name="file" id="file"></input> </label>
	<label><span>城市：</span>
		<input type="text" name="ttcity" id="ttcity" value="${tt.ttcity }"/></label>
		<label><span>攻略标题：</span>
		<input type="text" name="tttitle" id="tttitle"
			value="${tt.tttitle}" /></label>
			<label><span>详情：</span><br><br>
		
		<div id="editor"></div></label>
		<input type="hidden" name="ttuid" id="ttuid" value="${crtuid }">
		<input type="hidden" name="ttid" id="ttid" value="${tt.ttid }">
		<button type="button" id='send' class="button" onclick="javascript:mdfyTt()">
					提交
		</button>
		</form>
		<script type="text/javascript" src="/xyw2/static/js/wangEditor.min.js"></script>
		<script type="text/javascript">
    	var E = window.wangEditor;
        var editor = new E('#editor');
        editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
        document.getElementById("editor").innerHTML='${tt.ttcontent}';
        editor.create();
        function mdfyTt(){
    		var ttcity = document.getElementById("ttcity").value;
    		var ttid = document.getElementById("ttid").value;
    		var ttuid = document.getElementById("ttuid").value;
    		var tttitle = document.getElementById("tttitle").value;
    		alert(tttitle);
    		var ttcontent = editor.txt.html();
    		var formdata=new FormData( ); 
    		formdata.append("file" , $("#file")[0].files[0]);
    		formdata.append ("tttitle" , tttitle);
    		formdata.append ("ttuid" , ttuid);
    		formdata.append ("ttid" , ttid);
    		formdata.append ("ttcity" , ttcity);
    		formdata.append ("ttcontent" , ttcontent);
    		 $.ajax({
    	            url: "/xyw2/traveltip/modify",
    	            type: "post",
    	            data : formdata,
    	            cache : false,
    	            processData : false, // 不处理发送的数据，因为data值是Formdata对象，不需要对数据做处理
    	            contentType : false, // 不设置Content-type请求头
    	        });
    	}
		</script>
</body>
</html>