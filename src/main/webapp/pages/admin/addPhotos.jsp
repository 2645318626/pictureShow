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
    <link href="static/css/newspages.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="static/css/edit.css" type="text/css">
    <script>
        function PreviewImage(imgFile) {
            const pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;
            if (!pattern.test(imgFile.value)) {
                alert("系统仅支持jpg/jpeg/png/gif/bmp格式的照片！");
                imgFile.focus();
            }
            const path = URL.createObjectURL(imgFile.files[0]);
            document.getElementById("imgPreview").innerHTML = "<img src='" + path + "' style='width:227px; height:130px;' />";
        };
        let errori = '<%=request.getParameter("error")%>';
        if (errori === 'no') {
            alert('添加失败！');
        } else if (errori === 'yes') {
            alert('添加成功！');
        }
    </script>
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
                <form action="photoServlet?action=addPhotos" method="post"
                      enctype="multipart/form-data">
                    <%--                    <input type="hidden" name="action" value="add">--%>
                    <h1 id="h1style">
                        <span id="addTitle"><img src="static/img/addnews.png" id="addimg">添加图片</span>
                    </h1>
                    <p>
                        <span class="addNewsForm">标题 :</span>
                        <input id="title" type="text" name="title" class="addSerier" required>
                    </p>
                    <p>
                        <span class="addNewsForm">来源 :</span>
                        <input id="author" type="text" name="source" class="addSerier">
                    </p>
                    <p>
                        <span class="addNewsForm">内容 :</span>
                        <textarea id="message" name="content" required></textarea>
                    </p>
                    <p>
                        <span class="addNewsForm">标签 :</span>
                        <input id="keyWords" type="text" name="tips" class="addSerier" placeholder="热点、搞笑、水果、明星名字、美女等">
                    </p>
                    <p>
                        <span class="addNewsForm">类型 :</span>
                        <select name="type">
                            <option value="图说新闻">图说新闻</option>
                            <option value="家居">家居</option>
                            <option value="植物">植物</option>
                            <option value="壁纸">壁纸</option>
                            <option value="明星">明星</option>
                            <option value="欧美风格">欧美风格</option>
                            <option value="动漫">动漫</option>
                            <option value="游戏">游戏</option>
                            <option value="风景">风景</option>
                            <option value="国际">国际</option>
                            <option value="国家">国家</option>
                            <option value="其他">其他</option>
                        </select>
                    </p>
                    <p>
                        <br/><span class="addNewsForm">图片 :</span>
                    <div id="imgPath">
                        <input type="file" name="imgPath" onchange='PreviewImage(this)' required/>
                        <div id="imgPreview"></div>
                    </div>
                    </p>
                    <p>
                        <button type="submit" class="button" id="addBtn">发布</button>
                    </p>

                </form>

            </div>
        </div>

        <footer class="copyright">
        </footer>
    </div>
</div>
</body>
</html>
