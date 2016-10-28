<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/frontPage/res/include/taglib.jsp"%>
<html>
<title>前端测试页面</title>
<body>
<h2>前端测试页面：webapp/frontPage/index.jsp</h2>
<hr>
<h2>相关环境变量</h2>
ctx=${ctx}<br/>
ctxStatic=${ctxStatic }<br/>
ctxFront=${ctxFront }
<hr>
<h2>页面跳转</h2>
<a href="modules/llc/llcList.jsp">llcList.jsp</a>
</body>
</html>
