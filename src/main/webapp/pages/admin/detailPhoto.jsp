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
    <%@include file="/pages/common/head.jsp" %>
    <title>编辑图片</title>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="static/css/edit.css" type="text/css">
    <style>
        body{
            font: 16px/28px 'Microsoft YaHei';
        }
        h1{
            /* 文字不加粗 */
            font-weight: 400;
            /* 让h1里面的文字水平居中对齐 */
            text-align: center;
        }
        a{
            text-decoration: none;
        }
        .gary{
            color: #888888;
            font-size: 12px;
            text-align: center;
        }
        .search{
            color: #666666;
            width: 170px;

        }
        .btn{
            font-weight: 700;
        }
        p{
            /* 首行缩进两个距离 */
            text-indent: 2em;
        }
        .pic{
            /* 想要图片居中对齐，要加在他的父亲上 */
            text-align: center;
        }
        .footer{
            color: #888888;
        }

    </style>
</head>
<body>
<%@include file="/pages/common/body.jsp" %>
<div class="container">
    <div class="news-list">
        <div class="news-list-left">
            <div class="about">
                <h4></h4>
                <div class="about-des">
                    <p><a href="photoServlet?action=editPhotos">编辑图片</a></p>
                    <p><a href="/pages/admin/addPhotos.jsp">增加图片</a></p>
                    <p>图片详细信息</p>
                </div>
            </div>
        </div>

        <div class="news-list-right">
            <div class="news-list-item">
                <h1>${requestScope.detailPhoto.getTitle()}</h1>
                <div class="gary">图片上传时间：${requestScope.detailPhoto.getDate()}
                    来源：${requestScope.detailPhoto.getSource()}
                </div>
                <hr>
                <p>${requestScope.detailPhoto.getContent}</p>
                <p class="pic"><img src="${requestScope.detailPhoto.getImgPath()}"
                                    alt="${requestScope.detailPhoto.getTitle()}"></p>
                <p class="footer">关键词： ${requestScope.detailPhoto.getType()}
                    <br>标签： ${requestScope.detailPhoto.getTips()}</p>
                <%@include file="/pages/common/footer.jsp" %>
            </div>
        </div>

        <footer class="copyright">
        </footer>
    </div>
</div>
</body>
</html>
