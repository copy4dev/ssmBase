<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Index</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
	<meta name="decorator" content="default" />
    <meta charset="utf-8">
    <meta name="ROBOTS" content="INDEX,FOLLOW">
    <meta name="Keywords" content=",">
    <meta name="Description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-rim-auto-match" content="none">
    
    <link rel="stylesheet" href="${ctxStatic}/mobile/jmjz/css/bottom.css" media="screen" type="text/css"/>

    <!--必要样式-->
    <link type="text/css" href="${ctxStatic}/mobile/jmjz/css/style.css" rel="stylesheet">
    <link href="${ctxStatic}/mobile/jmjz/css/component.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${ctxStatic}/mobile/jmjz/js/jquery.js"></script>
    <script type="text/javascript" src="${ctxStatic}/mobile/jmjz/js/modernizr.custom.js"></script>
    <script type="text/javascript" src="${ctxStatic}/mobile/jmjz/js/jquery.dlmenu.js"></script>

<!--     <link rel="shortcut icon" href="/favicon.ico"> -->
<!--     <link rel="apple-touch-icon" href="/apple-touch-icon.png"> -->
    <script type="text/javascript" src="${ctxStatic}/mobile/jmjz/js/jquery.flexslider-min.js"></script>
    <link rel="stylesheet" href="${ctxStatic}/mobile/jmjz/css/lunbo_nodir.css"/>

    <style>

        *{ margin: 0; padding: 0}
        ul,li{ list-style: none}
        .tabClick{ overflow: hidden}
        .tabClick li{ color: #999999;height:40px; line-height: 40px; width: 25%; float: left;
        text-align: center}
        .tabClick li.active{ color: #099; transition: 0.1s; font-weight: bold}
        .tabCon{ overflow: hidden}
        .tabBox{ position: relative}
        .tabList{word-break: break-all; width:100%;float:left; text-align:center;
        color:#D3D3D3; font-size:36px; font-family: "Arial Black"}
        .lineBorder{ height: 2px; overflow: hidden; border-bottom:1px solid #eaeaea; background:
        #f3f3f3}
        .lineDiv{ background: #099; height: 2px; width: 25%;}


        html {
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%;
        line-height: 1.6
        }

        h1, h2, h3, h4, h5, h6 {
        font-weight: 400;
        font-size: 16px
        }

        * {
        margin: 0;
        padding: 0;
        font-style: normal
        }


        fieldset {
        border: 0 none;
        }

        fieldset img {
        width: 100%;
        max-width: -moz-fit-content;
        max-width: -webkit-fit-content;
        }
    </style>


</head>
<body style="background: #fff url(images/bg.jpg) repeat top left;">

<!--轮播广告-->
<div class="flexslider" style="z-index:0; margin-top:-15px;">
    <ul class="slides" style="margin-top:15px;z-index:0;">
        <li style="z-index:0;">

            <a href="casedetails2.html" style="text-decoration:none;">
                <p style="position: relative;background-image:url(images/s1.jpg);
background-repeat:round;width:100%;min-height:180px;">

                </p>
            </a>

        </li>
        <li>
            <a href="casedetails2.html" style="text-decoration:none;">
                <p style="position: relative;background-image:url(images/s2.jpg);
background-repeat:round;width:100%;min-height:180px;">

                </p>
            </a>
        </li>
        <li>
            <a href="casedetails2.html" style="text-decoration:none;">
                <p style="position: relative;background-image:url(images/s3.jpg);
background-repeat:round;width:100%;min-height:180px;">

                </p>
            </a>
        </li>
        <li>
            <a href="casedetails2.html" style="text-decoration:none;">
                <p style="position: relative;background-image:url(images/s4.jpg);
background-repeat:round;width:100%;min-height:180px;">

                </p>
            </a>
        </li>

    </ul>
</div>

<script type="text/javascript">
$(document).ready(function(){
    $('.flexslider').flexslider({
        directionNav: true,
        pauseOnAction: false
    });
});




</script>



<!--免费设计-->
<section
        style="margin-top:-5px; padding-top:10px;padding-left:10px;padding-right:10px;padding-bottom:10px;
             border: 0px none; padding: 0px;">
    <section class="layout" style="margin:0 auto;">
        <section
                style=" box-sizing: border-box; width: 50%; float: left; padding: 0px; color: inherit;"
                data-width="50%">
            <img src="images/price2.jpg"
                 style="float: left; width: 100%; padding-top:1px; border-top:1px solid #DEDEDE;border-bottom:1px solid #DEDEDE;border-right:1px solid #DEDEDE;"
                 width="100%" height="" opacity="" mapurl="" title="" alt="" data-width="100%"/>
        </section>
        <a href="order.html" style="text-decoration:none;">
        <section style="border-box; width: 50%; float: right;padding: 0px; color: inherit;"
                 data-width="50%">
            <img src="images/design2.jpg"
                 style="float: left; width: 100%; height: auto !important;border-top:1px solid #DEDEDE;border-bottom:1px solid #DEDEDE;"
                 width="100%" height="auto" opacity="" mapurl="" title="" alt="" data-width="100%"/>
        </section>
            </a>
        <section style="clear:both;width:0;height:0;"></section>
    </section>
</section>

<!--代金券-->

<p>
    <img src="images/daijinjuan3.jpg" height="auto" width="100%"  alt="561220f2c60a1.jpg" style="border:1px solid #DEDEDE;"/>
</p>

<p>
    <img src="images/seletor2.jpg" height="auto" width="100%"  alt="561220f2c60a1.jpg" style="border:1px solid #DEDEDE;"/>
</p>

<!--<section style="width:20em;margin: auto;text-align: center;padding-top:5px;" data-width="20em">-->
    <!--<section style="padding: 6px;background-color: #4e82f7;-->
<!--color: white;transform: rotate(360deg);-webkit-transform: rotate(360deg);-moz-transform: rotate(360deg);-o-transform: rotate(360deg);">-->
        <!--<section style="border: 1px dashed white;padding: 10px;">-->
            <!--<span class="135brush" data-brushtype="text">装修效果图</span>-->
        <!--</section>-->
    <!--</section>-->
    <!--<section style="background-image: url(http://image2.135editor.com/cache/remote/aHR0cHM6Ly9tbWJpei5xbG9nby5jbi9tbWJpei96OTQzM3JBR1REZDM2MnN2aWJ3Zk5UMzVOOHI5aHMzZWxNU2hlaEx0TzFyVFJ4QWFmRGpqYndQMzBIU043UHMxSmd1QzZHa0lnRGw3aWNMM25iZU9jRlJRLzA/d3hfZm10PXBuZw==);-->
        <!--background-repeat: no-repeat;background-size: 100% auto;width: 20em;height: 3em;margin-top: -1.8em;" data-width="20em">-->

    <!--</section>-->
<!--</section>-->

<!--找灵感图库-->
<div class="wrap" id="wrap" style="margin-bottom:20px;background: rgba(255, 255, 255, 0.4);">
    <ul class="tabClick" style="background: rgba(255, 255, 255, 0.4);">
        <li class="active" style="font-size:16px;">风格</li>
        <li style="font-size:16px;">户型</li>
        <li style="font-size:16px;">局部</li>
        <li style="font-size:16px;">颜色</li>
    </ul>
    <div class="lineBorder">
        <div class="lineDiv"><!--移动的div--></div>
    </div>
    <div class="tabCon">
        <div class="tabBox">
            <div class="tabList">
                <section
                        style="margin:0 auto; border: 0px; box-sizing: border-box; width: 100%; clear: both; overflow: hidden; padding: 0px;"
                        data-width="100%">
                    <section
                            style="box-sizing: border-box; width: 50%; float: left; padding: 0px 0.1em 0px 0px;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                    <section
                            style="box-sizing: border-box; width: 50%; float: right; padding: 0px 0px 0px 0.1em;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                </section>

                <a href="piclist2.html" style="text-decoration:none;">

                <section style="margin:0px 0px; padding:15px; display: inline-block; width: 100%;
                    " data-width="100%">
                    <span  style="font-size:16px;color: #787878;margin-left:10px;margin-top: -3px; margin-bottom: -3px;display: inline-block; width: 88.0295%;"
                             data-width="88.0295%">
                        更多风格 &nbsp;<strong><span style="color: #CD661D;">&gt;&gt;</span></strong>
                    </span>
                </section>
                </a>

            </div>
            <div class="tabList">
                <section
                        style="margin:0 auto; border: 0px; box-sizing: border-box; width: 100%; clear: both; overflow: hidden; padding: 0px;"
                        data-width="100%">
                    <section
                            style="box-sizing: border-box; width: 50%; float: left; padding: 0px 0.1em 0px 0px;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                    <section
                            style="box-sizing: border-box; width: 50%; float: right; padding: 0px 0px 0px 0.1em;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                </section>

                <a href="piclist2.html" style="text-decoration:none;">

                    <section style="margin:10px 0px; padding-bottom:5px; display: inline-block; width: 100%;
                    " data-width="100%">
                    <span  style="font-size:16px;color: #787878;margin-left:10px;margin-top: -3px; margin-bottom: -3px;display: inline-block; width: 88.0295%;"
                           data-width="88.0295%">
                        更多户型 &nbsp;<strong><span style="color: #CD661D;">&gt;&gt;</span></strong>
                    </span>
                    </section>
                </a>

            </div>
            <div class="tabList">
                <section
                        style="margin:0 auto;border: 0px; box-sizing: border-box; width: 100%; clear: both; overflow: hidden; padding: 0px;"
                        data-width="100%">
                    <section
                            style="box-sizing: border-box; width: 50%; float: left; padding: 0px 0.1em 0px 0px;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                    <section
                            style="box-sizing: border-box; width: 50%; float: right; padding: 0px 0px 0px 0.1em;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                </section>

                <a href="piclist2.html" style="text-decoration:none;">

                    <section style="margin:10px 0px; padding-bottom:5px; display: inline-block; width: 100%;
                    " data-width="100%">
                    <span  style="font-size:16px;color: #787878;margin-left:10px;margin-top: -3px; margin-bottom: -3px;display: inline-block; width: 88.0295%;"
                           data-width="88.0295%">
                        更多局部 &nbsp;<strong><span style="color: #CD661D;">&gt;&gt;</span></strong>
                    </span>
                    </section>
                </a>

            </div>
            <div class="tabList">
                <section
                        style="margin:0 auto;border: 0px; box-sizing: border-box; width: 100%; clear: both; overflow: hidden; padding: 0px;"
                        data-width="100%">
                    <section
                            style="box-sizing: border-box; width: 50%; float: left; padding: 0px 0.1em 0px 0px;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                    <section
                            style="box-sizing: border-box; width: 50%; float: right; padding: 0px 0px 0px 0.1em;"
                            class="layout" data-width="50%">
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>
                        <section
                                style="border:1px solid rgb(221,221,220);padding:5px;border-radius:10px;margin-bottom: 5px;">
                            <div style="position:relative;">
                                <p style="line-height:0em;">
                                    　　<img
                                        src="http://sem.g3img.com/g3img/xr201609/c2_20161009182406_67983.jpg"
                                        style="padding: 2px; border: 1px dashed rgb(221, 221, 220); width: 100%; margin: 0px; background-color: rgb(255, 255, 255);"
                                        width="100%" height="" border="0" opacity=""
                                        mapurl=""
                                        title="" alt="" data-width="100%"/>
                                <div style="margin-left:8px; background-color:rgba(0, 0, 0, 0.4);font-size: 12px; color: #D8D8D8;position:absolute; z-index:0; float:bottom; bottom:8px;">
                                    <span style="padding:5px;font-size: 12px; color: #ffffff;">简约</span>
                                </div>
                                </p>
                            </div>

                        </section>

                    </section>
                </section>

                <a href="piclist2.html" style="text-decoration:none;">

                    <section style="margin:10px 0px; padding-bottom:5px; display: inline-block; width: 100%;
                    " data-width="100%">
                    <span  style="font-size:16px;color: #787878;margin-left:10px;margin-top: -3px; margin-bottom: -3px;display: inline-block; width: 88.0295%;"
                           data-width="88.0295%">
                        更多颜色 &nbsp;<strong><span style="color: #CD661D;">&gt;&gt;</span></strong>
                    </span>
                    </section>
                </a>

            </div>
        </div>
    </div>
</div>
<script charset="utf-8">
	window.onload = function (){
        var windowWidth = document.body.clientWidth; //window 宽度;
		var wrap = document.getElementById('wrap');
        var tabClick = wrap.querySelectorAll('.tabClick')[0];
        var tabLi = tabClick.getElementsByTagName('li');

        var tabBox =  wrap.querySelectorAll('.tabBox')[0];
        var tabList = tabBox.querySelectorAll('.tabList');

        var lineBorder = wrap.querySelectorAll('.lineBorder')[0];
        var lineDiv = lineBorder.querySelectorAll('.lineDiv')[0];

        var tar = 0;
        var endX = 0;
        var dist = 0;

        <!--var tarY = 0;-->
        <!--var distY = 0;-->

        tabBox.style.overflow='hidden';
        tabBox.style.position='relative';
        tabBox.style.width=windowWidth*tabList.length+"px";

        for(var i = 0 ;i<tabLi.length; i++ ){
              tabList[i].style.width=windowWidth+"px";
              tabList[i].style.float='left';
              tabList[i].style.float='left';
              tabList[i].style.padding='0';
              tabList[i].style.margin='0';
              tabList[i].style.verticalAlign='top';
              tabList[i].style.display='table-cell';
        }

        for(var i = 0 ;i<tabLi.length; i++ ){
            tabLi[i].start = i;
            tabLi[i].onclick = function(){
                var star = this.start;
                for(var i = 0 ;i<tabLi.length; i++ ){
                    tabLi[i].className='';
                };
                tabLi[star].className='active';
                init.lineAnme(lineDiv,windowWidth/tabLi.length*star)
                init.translate(tabBox,windowWidth,star);
                endX= -star*windowWidth;
            }
        }

        function OnTab(star){
            if(star<0){
                star=0;
            }else if(star>=tabLi.length){
                star=tabLi.length-1
            }
            for(var i = 0 ;i<tabLi.length; i++ ){
                tabLi[i].className='';
            };

             tabLi[star].className='active';
            init.translate(tabBox,windowWidth,star);
            endX= -star*windowWidth;
        };

        tabBox.addEventListener('touchstart',chstart,false);
        tabBox.addEventListener('touchmove',chmove,false);
        tabBox.addEventListener('touchend',chend,false);
        //按下
        function chstart(ev){
            ev.preventDefault;
            var touch = ev.touches[0];
            tar=touch.pageX;
            <!--tarY=touch.pageY;-->
            tabBox.style.webkitTransition='all 0s ease-in-out';
            tabBox.style.transition='all 0s ease-in-out';
        };
        //滑动
        function chmove(ev){
            var stars = wrap.querySelector('.active').start;
            ev.preventDefault;
            var touch = ev.touches[0];
            var distance = (touch.pageX-tar) / 20;

            dist = distance;
            init.touchs(tabBox,windowWidth,tar,distance,endX);
            init.lineAnme(lineDiv,-dist/tabLi.length-endX/4);
        };
        //离开
        function chend(ev){
            var str= tabBox.style.transform;
            var strs = JSON.stringify(str.split(",",1));
            endX = Number(strs.substr(14,strs.length-18));

            <!--var touch = ev.touches[0];-->
            <!--distY = (touch.pageY-tarY);-->

            if(endX>0){
                init.back(tabBox,windowWidth,tar,0,0,0.3);
                endX=0
            }else if(endX<-windowWidth*tabList.length+windowWidth){
                endX=-windowWidth*tabList.length+windowWidth
                init.back(tabBox,windowWidth,tar,0,endX,0.3);
            }else if(dist<-5  ){
                 OnTab(tabClick.querySelector('.active').start+1);
                 init.back(tabBox,windowWidth,tar,0,endX,0.3);
            }else if(dist>5  ){
                 OnTab(tabClick.querySelector('.active').start-1);
            }else{
                 OnTab(tabClick.querySelector('.active').start);
            }
            var stars = wrap.querySelector('.active').start;
            init.lineAnme(lineDiv,stars*windowWidth/4);

        };
	};

    var init={
        translate:function(obj,windowWidth,star){
            obj.style.webkitTransform='translate3d('+-star*windowWidth+'px,0,0)';
            obj.style.transform='translate3d('+-star*windowWidth+',0,0)px';
            obj.style.webkitTransition='all 0.3s ease-in-out';
            obj.style.transition='all 0.3s ease-in-out';
        },
        touchs:function(obj,windowWidth,tar,distance,endX){
            obj.style.webkitTransform='translate3d('+(distance+endX)+'px,0,0)';
            obj.style.transform='translate3d('+(distance+endX)+',0,0)px';
        },
        lineAnme:function(obj,stance){
            obj.style.webkitTransform='translate3d('+stance+'px,0,0)';
            obj.style.transform='translate3d('+stance+'px,0,0)';
            obj.style.webkitTransition='all 0.1s ease-in-out';
            obj.style.transition='all 0.1s ease-in-out';
        },
        back:function(obj,windowWidth,tar,distance,endX,time){
            obj.style.webkitTransform='translate3d('+(distance+endX)+'px,0,0)';
            obj.style.transform='translate3d('+(distance+endX)+',0,0)px';
            obj.style.webkitTransition='all '+time+'s ease-in-out';
            obj.style.transition='all '+time+'s ease-in-out';
        },
    }


</script>


<!--本周推荐攻略-->
<div style="margin-top: -8px;margin-left:8px;margin-bottom: 8px;margin-right:10px;">

    <section style="width:20em;margin: auto;text-align: center;" data-width="20em">
        <section style="padding: 6px;background-color: #4e82f7;
color: white;transform: rotate(360deg);-webkit-transform: rotate(360deg);-moz-transform: rotate(360deg);-o-transform: rotate(360deg);">
            <section style="border: 1px dashed white;padding: 10px;">
                <span class="135brush" data-brushtype="text">本周精荐攻略</span>
            </section>
        </section>
        <section style="background-image: url(http://image2.135editor.com/cache/remote/aHR0cHM6Ly9tbWJpei5xbG9nby5jbi9tbWJpei96OTQzM3JBR1REZDM2MnN2aWJ3Zk5UMzVOOHI5aHMzZWxNU2hlaEx0TzFyVFJ4QWFmRGpqYndQMzBIU043UHMxSmd1QzZHa0lnRGw3aWNMM25iZU9jRlJRLzA/d3hfZm10PXBuZw==);
        background-repeat: no-repeat;background-size: 100% auto;width: 20em;height: 3em;margin-top: -1.8em;" data-width="20em">

        </section>
    </section>

    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; background: rgba(255, 255, 255, 0.4);
        margin-top: -5px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">
            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; margin-top:10px;background: rgba(255, 255, 255, 0.4);
      margin-top: 7px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">

            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; margin-top:10px;background: rgba(255, 255, 255, 0.4);
      margin-top: 7px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">

            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; margin-top:10px;background: rgba(255, 255, 255, 0.4);
      margin-top: 7px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">

            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; margin-top:10px;background: rgba(255, 255, 255, 0.4);
      margin-top: 7px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">

            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    <a href="gldetails.html" style="text-decoration:none;">
        <section style="overflow: hidden;margin: 0.5em 0px; margin-top:10px;background: rgba(255, 255, 255, 0.4);
      margin-top: 7px;border: 1px solid #EBEBEB;  vertical-align: middle; box-sizing: border-box;">

            <p>
                <img style="width: 100%; margin: 0px;"
                     src="http://imgs.bzw315.com/UploadFiles/image/2016/11/3/201611031616255472.jpg"
                     width="100%" height="" border="0" opacity="" mapurl="" title="" alt=""
                     data-width="100%"/>
            </p>

            <section class="layout" style="margin: 0px auto; padding:10px; ">
                <p style="margin-bottom:10px; font-size: 17px; font-weight: bold; border-color: rgb(157, 180, 194); color: #388E8E;">
                    舒雅大方新古典宅
                </p>
                <p style="color: #7D7D7D;font-size: 13px;">
                    日本的设计师提出过一个配色黄金比例，是70：25：5，其中的70%为大面积使用的主色，25%为辅助色，5%为点缀色。
                </p>
            </section>

        </section>
    </a>
    </br>
    </br>
    </br>

</div>

<!--头部-->
<!--<header class="header" style="width:100%; position:fixed; top:0px;z-index:999;">-->

    <!--<a href="http://www.17sucai.com/" style="text-decoration:none;">-->
        <!--<p style="position:absolute; padding-top:14px;padding-left:30px;">-->
            <!--<span style=" color: #ffffff; font-size: 18px;">聚美家装</span>-->
        <!--</p>-->
    <!--</a>-->

    <!--<a href="http://www.17sucai.com/" class="search"-->
       <!--style="margin-right:20px;"><span>目的地搜索</span></a>-->
    <!--<div id="dl-menu" class="dl-menuwrapper" style="padding-right:10px;">-->
        <!--<button id="dl-menu-button" style="margin-right:10px; padding-right:10px;">Open Menu-->
        <!--</button>-->
        <!--<ul class="dl-menu" style="width:220px; position:right; right:0px;">-->
            <!--<li><a href="home2.html">首页</a></li>-->
            <!--<li><a href="piclist2.html">找灵感</a></li>-->
            <!--<li><a href="clist2.html">找公司</a></li>-->
            <!--<li><a href="gonglue2.html">找攻略</a></li>-->
            <!--<li>-->
                <!--<a href="Line">更多</a>-->
                <!--<ul class="dl-submenu" style="width:220px; position:right; right:0px;">-->
                    <!--<li class="dl-back"><a href="#">返回上一级</a></li>-->
                    <!--<li><a href="http://www.baidu.com/">帮助中心</a></li>-->
                    <!--<li><a href="http://www.baidu.com/">关于我们</a></li>-->
                    <!--<li><a href="http://www.baidu.com/">联系我们</a></li>-->
                    <!--<li><a href="http://www.baidu.com/">法律声明</a></li>-->
                <!--</ul>-->
            <!--</li>-->
        <!--</ul>-->
    <!--</div>-->
<!--</header>-->

<!--底部-->
<div class="container" style="z-index:888;">
    <div class="row" style="position:fixed; bottom:0px;">
			<span class="btn btn-medium info33">
			<img src="images/home3.png" width="20px" height="20px" border="0" mapurl="" title=""
                 alt="" style="border: 0px; vertical-align: middle;"/>
			首页
			</span>

        <a href="piclist2.html" style="text-decoration:none;">

			<span
                    class="btn btn-medium info2">
				<img src="images/pics2.png" width="20px" height="20px" border="0"
                     style="border: 0px; vertical-align: middle;"/>
				找灵感

				</span>
        </a>
        <a href="clist2.html" style="text-decoration:none;">

                    <span
                            class="btn btn-medium info3">
				<img src="images/coms2.png" width="20px" height="20px" border="0"
                     style="border: 0px; vertical-align: middle;"/>
				找公司</span>
        </a>

        <a href="gonglue2.html" style="text-decoration:none;">

				<span
                        class="btn btn-medium info4">
				<img src="images/gonglue2.png" width="20px" height="20px" border="0"
                     style="border: 0px; vertical-align: middle;"/>
				找攻略</span>
        </a>
    </div>
</div>

<script type="text/javascript">
var pagebase_div = document.getElementById('pageBase_Div');
var pagebase_iframe = document.getElementById('pageBase_iframe');
pagebase_div.style.display = "block";
pagebase_iframe.style.width = pagebase_div.offsetWidth;
pagebase_iframe.style.height = pagebase_div.offsetHeight;
pagebase_iframe.style.top = pagebase_div.style.top;
pagebase_iframe.style.left = pagebase_div.style.left;
pagebase_iframe.style.zIndex = pagebase_div.style.zIndex - 1;
pagebase_iframe.style.display = "block";





</script>

<script type="text/javascript">
$(function(){
	$( '#dl-menu' ).dlmenu();
});




</script
>

</body>
</html>