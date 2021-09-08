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
    <%@include file="/pages/common/head.jsp"%>
    <title>编辑图片</title>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/newspages.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="static/css/edit.css" type="text/css">
</head>
<body>
<%@include file="/pages/common/body.jsp"%>
<div class="container">
    <div class="news-list">
        <div class="news-list-left" style="width: 168px">
            <div class="about">
                <h4></h4>
                <div class="about-des">
                    <p><a href="photoServlet?action=editPhotos">编辑图片</a></p>
                    <p><a href="pages/admin/addPhotos.jsp">增加图片</a></p>
                </div>
            </div>
        </div>

        <div class="news-list-right" style="width: 1167px;">
            <c:if test="${applicationScope.photosList.size()==0}">
                <p>暂无可编辑的图片，请添加图片！</p>
            </c:if>
            <c:if test="${applicationScope.photosList.size()>0}">
                <div class="news-list-item">
                    <form id="operate_form" method="post">
                        <table id="showTable">
                            <tr>
                                <th>序号</th>
                                <th style="width: 428px">标签</th>
                                <th>来源</th>
                                <th class="overEllipsis">标题</th>
                                <th colspan="4">操作</th>
                            </tr>
                            <c:forEach items="${applicationScope.photosList}" var="photo" varStatus="status">
                                <tr>
                                    <td>${status.index+1}.<img src="${requestScope.list.getImgPath()}"
                                                            style="width：16px；height:18px;"></td>
                                    <td>${photo.getTips()}</td>
                                    <td>${photo.getSource()}</td>
                                    <td class="overEllipsis item" title="${photo.getTitle()}">
                                            ${photo.getTitle()}
                                    </td>
                                    <td>
                                        <a href="photoServlet?action=detailShow&id=${photo.getId()}"
                                           class="editBtn" id="detailsBtn">详情</a>
                                        <a href="photoServlet?action=deletePhotos&id=${photo.getId()}"
                                           class="editBtn" id="deleteBtn">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </form>
                </div>
            </c:if>
        </div>

        <footer class="copyright">
        </footer>
    </div>
</div>
</body>
</html>
