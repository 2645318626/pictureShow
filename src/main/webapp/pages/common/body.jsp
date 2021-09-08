<%--
  Created by IntelliJ IDEA.
  User: 15312
  Date: 2021/7/3
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!--top
---------------------------------------------------------->
<div id="top"><img src="static/img/logo.png"/><span>我们既是图片的生产者，也是图片的搬运工</span></div>
<!--nav
---------------------------------------------------------->
<div class="nav">
    <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="pages/user/img.jsp">热门专题</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=图说新闻">图说新闻</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=家居">家居</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=萌宠">萌宠</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=壁纸">壁纸</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=植物">植物</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=动漫">动漫</a></li>
        <li><a href="photoServlet?action=keyShow&keyWords=欧美风格">欧美风格</a></li>
        <li><a href="pages/user/all.jsp">更多</a></li>
        <c:if test="${sessionScope.username!=null}">
            <li><a href="photoServlet?action=editPhotos">编辑图片</a></li>
        </c:if>
    </ul>
</div>
