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
	
	
	
	
		<c:forEach items="${page.list}" var="modLog">
		
		
		<div class="list">
		<img class="scrollLoading" 
		xSrc="${modLog.msg}" 
		src="http://images.cnblogs.com/cnblogs_com/Darren_code/302725/o_pixel.gif" 
		width="200" height="250"
		 style="background:url(http://images.cnblogs.com/cnblogs_com/Darren_code/302725/o_108.gif) no-repeat center;" />
		 </div>
		
		
		
		
		
		
		
					${modLog.msg}
					<br/>
		</c:forEach>
		
		<script type="text/javascript">
		/* 滚动加载 - start */
    var scrollLoad = (function (options) {
        var defaults = (arguments.length == 0) ? { src: 'xSrc', time: 300} : { src: options.src || 'xSrc', time: options.time ||300};
        var camelize = function (s) {
            return s.replace(/-(\w)/g, function (strMatch, p1) {
                return p1.toUpperCase();
            });
        };
        this.getStyle = function (element, property) {
            if (arguments.length != 2) return false;
            var value = element.style[camelize(property)];
            if (!value) {
                if (document.defaultView && document.defaultView.getComputedStyle) {
                    var css = document.defaultView.getComputedStyle(element, null);
                    value = css ? css.getPropertyValue(property) : null;
                } else if (element.currentStyle) {
                    value = element.currentStyle[camelize(property)];
                }
            }
            return value == 'auto' ? '' : value;
        };
        var _init = function () {
            var offsetPage = window.pageYOffset ? window.pageYOffset : window.document.documentElement.scrollTop,
                offsetWindow = offsetPage + Number(window.innerHeight ? window.innerHeight : document.documentElement.clientHeight),
                docImg = document.images,
                _len = docImg.length;
            if (!_len) return false;
            for (var i = 0; i < _len; i++) {
                var attrSrc = docImg[i].getAttribute(defaults.src),
                    o = docImg[i], tag = o.nodeName.toLowerCase();
                if (o) {
                    postPage = o.getBoundingClientRect().top + window.document.documentElement.scrollTop + window.document.body.scrollTop; postWindow = postPage + Number(this.getStyle(o, 'height').replace('px', ''));
                    if ((postPage > offsetPage && postPage < offsetWindow) || (postWindow > offsetPage && postWindow < offsetWindow)) {
                        if (tag === "img" && attrSrc !== null) {
                            o.setAttribute("src", attrSrc);
                        }
                        o = null;
                    }
                }
            };
            window.onscroll = function () {
                setTimeout(function () {
                    _init();
                }, defaults.time);
            }
        };
        return _init();
    });
    scrollLoad();
    /* 滚动加载 - end */
</script> 
		
</body>
</html>