<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
	<title>Index</title>

	<link rel="stylesheet" href="${ctxStatic}/mobile/test/css/test.css">
	<style>/*css代码*/</style>

	
	<script src="${ctxStatic}/mobile/test/js/test.js"></script>
	<script type="text/javascript">/*js代码*/</script>
</head>

<body>

	<h1 class="colortest">访问成功</h1>
	<hr>
	<button type="button" onClick="test()">弹窗</button>
	<hr>
	<p>动态加载(不带分页) </p>
	
	
	<img src="http://www.whyt.Net.cn/net/images/scrollLoading/pixel.gif"
　　　　　style="background:url(${ctxStatic}/mobile/test/img/loading.gif) no-repeat center;"
　　　　　xSrc="http://desk.fd.zol-img.com.cn/t_s960x600c5/g5/M00/01/0E/ChMkJ1bKwbuIRkTlAB9k_fiBF50AALGdABYfnYAH2UV608.jpg"/>
<br/>
	
	
		<c:forEach items="${page.list}" var="modLog">
					${modLog.msg}<br/>
		</c:forEach>
	<script src="${ctxStatic}/mobile/test/js/myscrollLoading.js"></script>
</body>
</html>