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
	
	
	<table>
		<thead>
			<tr>
				<th>记录类型</th>
				<th>模块类型</th>
				<th>实体编号</th>
				<th>业务编号</th>
				<th>摘要</th>
				<th>生成时间</th>
				<th>是否处理</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="modLog">
			<tr>
				<td><a href="${ctx}/log/modLog/form?id=${modLog.id}">
					${modLog.logType}
				</a></td>
				<td>
					${modLog.moduleType}
				</td>
				<td>
					${modLog.entityId}
				</td>
				<td>
					${modLog.bisId}
				</td>
				<td>
					${modLog.notes}
				</td>
				<td>
					<fmt:formatDate value="${modLog.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${fns:getDictLabel(modLog.delFlag, 'yes_no', '')}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	
</body>
</html>