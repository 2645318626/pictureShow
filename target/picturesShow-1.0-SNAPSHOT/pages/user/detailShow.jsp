<%--
  Created by IntelliJ IDEA.
  User: 15312
  Date: 2021/7/3
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>${requestScope.detailPhoto.getTitle()}图片详情</title>
    <%@include file="/pages/common/head.jsp"%>
    <link href="static/css/bottom.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="static/css/show.css" type="text/css"/>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%@include file="/pages/common/body.jsp"%>
<h1>${requestScope.detailPhoto.getTitle()}</h1>
<div class="gary">图片上传时间：${requestScope.detailPhoto.getDate()}
    来源：${requestScope.detailPhoto.getSource()}
</div>
<hr>
<p style="text-align: center">${requestScope.detailPhoto.getContent()}</p>
<p class="pic"><img src="${requestScope.detailPhoto.getImgPath()}" alt="${requestScope.detailPhoto.getTitle()}"></p>
<p class="footer" style="text-align: center">关键词： ${requestScope.detailPhoto.getType()}
    <br>标签： ${requestScope.detailPhoto.getTips()}</p>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>
