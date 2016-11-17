<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
<meta name="decorator" content="default" />
<title>Index</title>

<link rel="stylesheet" href="${ctxStatic}/mobile/test/css/test.css">
<style>/*css代码*/
</style>

<script src="${ctxStatic}/mobile/test/js/test.js"></script>
<script src="${ctxStatic}/mobile/test/jquery/jquery-3.1.1.js" type="text/javascript"></script>
<script type="text/javascript">
	/*js代码*/
	
	$(document).ready(function(){  
        var range = 50;             //距下边界长度/单位px  
        var elemt = 500;           //插入元素高度/单位px  
        var maxnum = ${page.count};            //设置加载最多次数  
        var num = 1;  
        var totalheight = 0;   
        var main = $("#myContent");                     //主体元素  
        $(window).scroll(function(){  
            var srollPos = $(window).scrollTop();    //滚动条距顶部距离(页面超出窗口的高度)  
              
            //console.log("滚动条到顶部的垂直高度: "+$(document).scrollTop());  
            //console.log("页面的文档高度 ："+$(document).height());  
            //console.log('浏览器的高度：'+$(window).height());  
              
            totalheight = parseFloat($(window).height()) + parseFloat(srollPos);  
            if(($(document).height()-range) <= totalheight  && num != maxnum) {  
//                 main.append("<div style='border:1px solid tomato;margin-top:20px;color:#ac"+(num%20)+(num%20)+";height:"+elemt+"' >hello world"+srollPos+"---"+num+"</div>");  
                
                
// main.append("<div><img class='scrollLoading' xSrc='${modLog.msg}' width='20%' src='${ctxStatic}/mobile/test/img/o_pixel.gif' style='background:url(${ctxStatic}/mobile/test/img/lodding.gif) no-repeat center;' /></div>");
                
                
                
                num++;  
            }  
        });  
    });  
	
</script>
</head>

<body>

	<h1 class="colortest">访问成功</h1>
	<hr>
	<button type="button" onClick="test()">弹窗</button>
	<hr>
	<p>动态加载(不带分页)</p>
	
	
	
<!-- 	 <div id="myContent" style="height:960px">   -->
<!--         <div id="follow">this is a scroll test;<br/>    页面下拉自动加载内容</div>   -->
<!--        	<div> -->
<%-- 			<img class="scrollLoading" xSrc="${modLog.msg}" width="20%" --%>
<%-- 				src="${ctxStatic}/mobile/test/img/o_pixel.gif" --%>
<%-- 				style="background:url(${ctxStatic}/mobile/test/img/lodding.gif) no-repeat center;" /> --%>
<!-- 		</div> -->
<!--     </div>   -->
    
    
	
	

	<c:forEach items="${page.list}" var="modLog">
		<div>
			<img class="scrollLoading" xSrc="${modLog.msg}" width="30%"
				src="${ctxStatic}/mobile/test/img/o_pixel.gif"
				style="background:url(${ctxStatic}/mobile/test/img/lodding.gif) no-repeat center;" />
		</div>
	</c:forEach>

	<script type="text/javascript">
		/* 延时加载 - start */
		var scrollLoad = (function(options) {
			var defaults = (arguments.length == 0) ? {
				src : 'xSrc',
				time : 300
			} : {
				src : options.src || 'xSrc',
				time : options.time || 300
			};
			var camelize = function(s) {
				return s.replace(/-(\w)/g, function(strMatch, p1) {
					return p1.toUpperCase();
				});
			};
			this.getStyle = function(element, property) {
				if (arguments.length != 2)
					return false;
				var value = element.style[camelize(property)];
				if (!value) {
					if (document.defaultView
							&& document.defaultView.getComputedStyle) {
						var css = document.defaultView.getComputedStyle(
								element, null);
						value = css ? css.getPropertyValue(property) : null;
					} else if (element.currentStyle) {
						value = element.currentStyle[camelize(property)];
					}
				}
				return value == 'auto' ? '' : value;
			};
			var _init = function() {
				var offsetPage = window.pageYOffset ? window.pageYOffset
						: window.document.documentElement.scrollTop, offsetWindow = offsetPage
						+ Number(window.innerHeight ? window.innerHeight
								: document.documentElement.clientHeight), docImg = document.images, _len = docImg.length;
				if (!_len)
					return false;
				for (var i = 0; i < _len; i++) {
					var attrSrc = docImg[i].getAttribute(defaults.src), o = docImg[i], tag = o.nodeName
							.toLowerCase();
					if (o) {
						postPage = o.getBoundingClientRect().top
								+ window.document.documentElement.scrollTop
								+ window.document.body.scrollTop;
						postWindow = postPage
								+ Number(this.getStyle(o, 'height').replace(
										'px', ''));
						if ((postPage > offsetPage && postPage < offsetWindow)
								|| (postWindow > offsetPage && postWindow < offsetWindow)) {
							if (tag === "img" && attrSrc !== null) {
								o.setAttribute("src", attrSrc);
							}
							o = null;
						}
					}
				}
				;
				window.onscroll = function() {
					setTimeout(function() {
						_init();
					}, defaults.time);
				}
			};
			return _init();
		});
		scrollLoad();
		/* 延时加载 - end */
	</script>
</body>
</html>