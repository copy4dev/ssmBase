<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<body>
<h2>Hello World!</h2>
<h3>http://192.168.62.141:8080/ssmBase/page/index.jsp</h3>

<a href="${ctxPage}/index.jsp">page jump</a><br/>
<a href="${ctxPage}/service?test_key=123&method=test">controller jump</a><br/>

</body>
</html>
