<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
  <title>Index</title>
  <link rel="stylesheet" type="text/css" href="${ctxStatic}/mobile/test/css/style.css">
  <script src="${ctxStatic}/mobile/test/jquery/jquery-2.0.3.js"></script>
  <script src="${ctxStatic}/mobile/test/js/script.js"></script>
</head>
<body>
  <h1 style="margin:150px auto 50px auto; text-align:center;">jQuery</h1>
  
  <div id="main">
  <c:forEach items="${page.list}" var="modLog">
    <div class="box">
      <div class="pic">
        <img src="${modLog.msg}">
      </div>
    </div>
  </c:forEach>
  </div>

<script type = "text/javascript" >

$(window).on('load',function(){
	waterFall();
	var imgURLs=[{"src":"0.jpg"},{"src":"1.jpg"},{"src":"2.jpg"},{"src":"3.jpg"}];
	var dataInt={"data":imgURLs};
	$(window).on('scroll',function(){
		if(checkScrollSlide()){
			$.each(dataInt.data,function(key,value){
				var oBox=$('<div>').addClass('box').appendTo($('#main'));
				var oPic=$('<div>').addClass('pic').appendTo(oBox);
				$('<img>').attr('src','images/'+$(value).attr('src')).appendTo(oPic);
			});
			waterFall();
		}
	});
});

</script>

</body>
</html>