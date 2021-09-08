<%--
  Created by IntelliJ IDEA.
  User: 15312
  Date: 2021/7/3
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>多多图库</title>
    <%@include file="/pages/common/head.jsp" %>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/bottom.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%@include file="/pages/common/body.jsp"%>
<div id="box">
    <c:forEach var="photo" items="${sessionScope.keyPhotosList}" varStatus="status" begin="1" end="5">
            <div class="one">
                <div class="border3">
                    <div class="img"><a href="photoServlet?action=detailShow&id=${photo.getId()}"><img src="${photo.getImgPath()}" height="400"></a></div>
                    <p>标签：<span>${photo.getTips()}</span><span>${photo.getType()}</span></p>
                </div>
            </div>
    </c:forEach>
    <c:forEach var="photo" items="${sessionScope.keyPhotosList}" varStatus="status" begin="6" end="10">
            <div class="tow">
            <div class="border3">
                <div class="img"><a href="photoServlet?action=detailShow&id=${photo.getId()}"><img src="${photo.getImgPath()}" height="400"></a></div>
                <p>标签：<span>${photo.getTips()}</span><span>${photo.getType()}</span></p>
            </div>
            </div>
    </c:forEach>
    <c:forEach var="photo" items="${sessionScope.keyPhotosList}" varStatus="status" begin="11" end="15">
            <div class="tow">
                <div class="border3">
                    <div class="img"><a href="photoServlet?action=detailShow&id=${photo.getId()}"><img src="${photo.getImgPath()}" height="400"></a></div>
                    <p>标签：<span>${photo.getTips()}</span><span>${photo.getType()}</span></p>
                </div>
            </div>
    </c:forEach>
    <c:forEach var="photo" items="${sessionScope.keyPhotosList}" varStatus="status" begin="16" end="20">
            <div class="tow">
                <div class="border3">
                    <div class="img"><a href="photoServlet?action=detailShow&id=${photo.getId()}"><img src="${photo.getImgPath()}" height="400"></a></div>
                    <p>标签：<span>${photo.getTips()}</span><span>${photo.getType()}</span></p>
                </div>
            </div>
    </c:forEach>
</div>
<%@include file="/pages/common/footer.jsp" %>
</body>
</html>
