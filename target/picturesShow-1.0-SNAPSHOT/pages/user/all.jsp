<%--
  Created by IntelliJ IDEA.
  User: 15312
  Date: 2021/7/3
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>更多分类</title>
    <%@include file="/pages/common/head.jsp" %>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/bottom.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/all.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<%@include file="/pages/common/body.jsp" %>
<div id="bg" style="position:relative;z-index: 2">
    <div class="readme">
        <h1>More classification</h1>
        <div class="lrtk">
            <a href="photoServlet?action=keyShow&keyWords=美女" class="box01"><span class="font">美女</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=动漫" class="box02"><span class="font">动漫</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=小清新" class="box03"><span class="font">小清新</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=创意设计" class="box04"><span class="font">创意设计</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=唯美" class="box05"><span class="font">唯美</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=游戏" class="box06"><span class="font">游戏</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=壁纸" class="box07"><span class="font">壁纸</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=明星" class="box08"><span class="font">明星</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=欧美风格" class="box09"><span class="font">欧美风格</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=云" class="box10"><span class="font">云</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=水果" class="box11"><span class="font">水果</span>
                <div class="opacity"></div>
            </a>
            <a href="photoServlet?action=keyShow&keyWords=森林" class="box12"><span class="font">森林</span>
                <div class="opacity"></div>
            </a>
        </div>
        <div id="bottom">
            Copyright @ 2013-2014 duo duo photo <br/>
            多多图库 多多有限公司 版权所有
        </div>
    </div>
</div>
</body>
</html>
