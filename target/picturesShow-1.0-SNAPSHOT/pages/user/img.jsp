<%--
  Created by IntelliJ IDEA.
  User: 15312
  Date: 2021/7/3
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>热门专题</title>
    <%@include file="/pages/common/head.jsp"%>
    <link href="static/css/img.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/bottom.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%@include file="/pages/common/body.jsp"%>
<!--body
---------------------------------------------------------->
<div class="clear"></div>
<div class="box">
    <div class="content">
        <div class="ph1"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_4.jpg"><img src="static/img/photo_4.jpg" height="358"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                                          class="imgbg"
                                                                                                          target="_blank">高清无码</a></a>
        </div>
        <div class="ph2"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_4.jpg"><img src="static/img/13.jpg" height="358"/><a href="photoServlet?action=keyShow&keyWords=云"
                                                                                         class="imgbg">云</a></a></div>
        <div class="ph2"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_4.jpg"><img src="static/img/photo_3.jpg" height="358"/><a href="photoServlet?action=keyShow&keyWords=小清新"
                                                                                              class="imgbg">小清新</a></a>
        </div>
        <div class="topnav">
            <div class="nav1">热搜词</div>
            <a href="photoServlet?action=keyShow&keyWords=美女写真" class="nav2">美女写真</a>
            <a href="photoServlet?action=keyShow&keyWords=风景" class="nav3">风景</a>
            <a href="photoServlet?action=keyShow&keyWords=壁纸" class="nav4">壁纸</a>
            <a href="photoServlet?action=keyShow&keyWords=纸蒲公英" class="nav3">纸蒲公英</a>
            <a href="photoServlet?action=keyShow&keyWords=赫本" class="nav3">赫本</a>
            <a href="photoServlet?action=keyShow&keyWords=海贼王" class="nav2">海贼王</a>
            <a href="photoServlet?action=keyShow&keyWords=范冰冰" class="nav5">范冰冰</a>
            <a href="photoServlet?action=keyShow&keyWords=美女" class="nav2">美女</a>
            <a href="photoServlet?action=keyShow&keyWords=情侣头像" class="nav2">情侣头像</a>
            <a href="photoServlet?action=keyShow&keyWords=未闻花见" class="nav3">未闻花见</a>
            <a href="photoServlet?action=keyShow&keyWords=热血海贼王" class="nav2">热血海贼王</a>
            <a href="photoServlet?action=keyShow&keyWords=欧美" class="nav3">欧美风</a>
        </div>
    </div>
    <div class="body">
        <table width="230" height="342" class="table1">
            <tr>
                <td colspan="3">
                    <div class="navbt"></div>
                </td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=甜美" class="colorone">甜美</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=写真" class="colortow">写真</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=泳装" class="colorone">泳装</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=优雅" class="colortow">优雅</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=惊艳" class="colorone">惊艳</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=养眼" class="colortow">养眼</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=模特" class="colorone">模特</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=时尚" class="colortow">时尚</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=气质" class="colorone">气质</a></td>
            </tr>
        </table>
        <div class="ph"><a name="meinv" href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_1.jpg"><img src="static/img/pho_1.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=小清新"
                                                                                                        class="imgbg">小清新</a></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_2.jpg"><img src="static/img/pho_2.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=小清新"
                                                                                           class="imgbg">小清新</a></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_3.jpg"><img src="static/img/pho_3.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=校园" class="imgbg">校园</a></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_4.jpg"><img src="static/img/pho_4.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="clear"></div>
    </div>

    <div class="body">
        <table width="230" height="342" class="table2">
            <tr>
                <td colspan="3">
                    <div class="navbt"></div>
                </td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=" class="colorone">优质</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=" class="colortow">唯美</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=" class="colorone">可爱</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=" class="colortow">动漫</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=" class="colorone">高清</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=" class="colortow">动物</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=" class="colorone">萌宠</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=" class="colortow">风景</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=" class="colorone">景物</a></td>
            </tr>
        </table>
        <div class="bigph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_1.jpg" target="_blank" name="bizi"><img src="static/img/photo_1.jpg"
                                                                                    height="342"/><a href="photoServlet?action=keyShow&keyWords=唯美"
                                                                                                     class="imgbg">唯美</a></a>
        </div>
        <div class="smallph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_2.jpg" target="_blank"><img src="static/img/photo_2.jpg"
                                                                          height="165"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="smallph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_3.jpg" target="_blank"><img src="static/img/photo_3.jpg"
                                                                          height="165"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="smallph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_4.jpg" target="_blank"><img src="static/img/photo_4.jpg"
                                                                          height="165"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="smallph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/photo_5.jpg" target="_blank"><img src="static/img/photo_5.jpg"
                                                                          height="165"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="clear"></div>
    </div>

    <div class="body">
        <table width="230" height="342" class="table3">
            <tr>
                <td colspan="3">
                    <div class="navbt"></div>
                </td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=detailByImgPath&imgPath=avril_ramona_lavigne-007.jpg" name="mingxing" class="colorone">艾薇儿</a></td>
                <td><a href="photoServlet?action=detailByImgPath&imgPath=dongfang_shenqi-003.jpg" class="colortow">东方神起</a></td>
                <td><a href="photoServlet?action=detailByImgPath&imgPath=g_dragon-004.jpg" class="colorone">权志龙</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=吴秀波" class="colortow">章子怡</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=张馨予" class="colorone">范冰冰</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=张韵艺" class="colortow">赫本</a></td>
            </tr>
        </table>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_5.jpg"><img src="static/img/pho_5.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=章子怡"
                                                                                           class="imgbg">章子怡</a></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_6.jpg"><img src="static/img/pho_6.jpg" height="360"/></a></div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_7.jpg"><img src="static/img/pho_7.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=高清无码"
                                                                                           class="imgbg">高清无码</a></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_8.jpg"><img src="static/img/pho_8.jpg" height="360"/><a href="photoServlet?action=keyShow&keyWords=吴彦祖"
                                                                                           class="imgbg">吴彦祖</a></a>
        </div>
        <div class="clear"></div>
    </div>

    <div class="body">
        <table width="230" height="342" class="table4">
            <tr>
                <td colspan="3">
                    <div class="navbt"></div>
                </td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=蛋疼" class="colorone">蛋疼</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=雷人" class="colortow">雷人</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=情侣" class="colorone">情侣</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=无聊" class="colortow">无聊</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=校园" class="colorone">校园</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=牛人" class="colortow">牛人</a></td>
            </tr>
            <tr>
                <td height="60"><a href="photoServlet?action=keyShow&keyWords=屌丝" class="colorone">屌丝</a></td>
                <td width="76"><a href="photoServlet?action=keyShow&keyWords=邪恶" class="colortow">邪恶</a></td>
                <td><a href="photoServlet?action=keyShow&keyWords=霸气" class="colorone">霸气</a></td>
            </tr>
        </table>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_9.jpg"><img src="static/img/pho_9.jpg" height="360"/><span class="imgbg">自行车也能这样停</span></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_10.jpg"><img src="static/img/pho_10.jpg" height="360"/><span class="imgbg">大妈你怎么不高兴</span></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_11.jpg"><img src="static/img/pho_11.jpg" height="360"/><span class="imgbg">来根烟</span></a>
        </div>
        <div class="ph"><a href="photoServlet?action=detailByImgPath&imgPath=static/img/pho_12.jpg"><img src="static/img/pho_12.jpg" height="360"/><span class="imgbg">冲击波</span></a>
        </div>
        <div class="clear"></div>
    </div>
    <%@include file="/pages/common/footer.jsp"%>
</div>
</body>
</html>
