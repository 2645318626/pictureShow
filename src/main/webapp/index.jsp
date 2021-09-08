<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <%@include file="/pages/common/head.jsp" %>
    <link href="static/css/index.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/Registered.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/imgimg.css" type="text/css" rel="stylesheet"/>
    <link href="static/css/top.css" type="text/css" rel="stylesheet"/>
    <script src="static/js/js.js"></script>
    <style>
        .box #over{
            left:0px;
        }
    </style>
    <script>
        //取出传回来的参数error并与yes比较
        let errori = '<%=request.getParameter("error")%>';
        if (errori === 'no') {
            alert('用户名或密码不正确！');
        } else if (errori === 'success') {
            alert('注册成功，请登录！');
        }else if (errori === 'failure') {
            alert('失败，请重试！');
        }else if (errori === 'exist'){
            alert('用户名已存在！');
        }else if(errori === 'yes'){
            alert('登陆成功！');
        }
    </script>
</head>
<body>
<%@include file="/pages/common/body.jsp"%>
<!--div
 -------------------------------->
<div id="div">
    <!--login
    -------------------------------->

    <div class="divfont">
        <ul>
            <li><span class="sc" onMouseOver='ctrlover()' onMouseOut='ctrlout()'>收藏本页</span></li>
            <li>|</li>
            <c:if test="${sessionScope.username==null}">
                <li><sqan onclick='RegisteredshowDiv()'>注册</sqan></li>
                <li><span onclick='loginshowDiv()'>登入</span></li>
            </c:if>
            <c:if test="${sessionScope.username!=null}">
                <li><span>${sessionScope.username},欢迎您！</span></li>
            </c:if>
        </ul>
        <div class="bluebg"></div>
        <div id="ctrl">按下<span>Ctrl+D</span>收藏</div>
    </div>
    <!--logo
    -------------------------------->
    <div class="logo"><a href="#"><img src="static/img/logo.png"/></a></div>
    <!--搜索框
    -------------------------------->
    <div class="search">
        <div class="z-index_three">
            <form action="#" name="search">
                <table border="0" cellpadding="0" cellspacing="0" id="search_height">
                    <tr>
                        <td>
                            <input type="text" name="q" title="Search" class="searchinput" id="searchinput"
                                   onKeyDown="if (event.keyCode==13) {}" onBlur="if(this.value=='')value=' 搜你想搜 ';"
                                   onFocus="if(this.value==' 搜你想搜 ')value='';" value=" 搜你想搜 " size="10"/>
                        </td>
                        <td>
                            <a href="photoServlet?action=keySearch" class="button blue">搜索</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="bg"></div>
    </div>
    <!--body
    -------------------------------->
    <div id="body">
        <div class="top">
            <a href="photoServlet?action=keyShow&keyWords=精选">
                <div class="overflow">
                    <div><img src="static/img/bg1.jpg" height="140"/></div>
                    <div class="font">精选</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top1">
            <a href="photoServlet?action=keyShow&keyWords=动漫" >
                <div class="overflow">
                    <div><img src="static/img/bg2.jpg" height="140"/></div>
                    <div class="font">动漫</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top2">
            <a href="photoServlet?action=keyShow&keyWords=植物">
                <div class="overflow">
                    <div><img src="static/img/bg3.jpg" height="140"/></div>
                    <div class="font">植物</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top3">
            <a href="photoServlet?action=keyShow&keyWords=壁纸" >
                <div class="overflow">
                    <div><img src="static/img/bg4.jpg" height="140"/></div>
                    <div class="font">壁纸</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top4">
            <a href="photoServlet?action=keyShow&keyWords=明星" >
                <div class="overflow">
                    <div><img src="static/img/bg5.jpg" height="140"/></div>
                    <div class="font">明星</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top5">
            <a href="photoServlet?action=keyShow&keyWords=美女" >
                <div class="overflow">
                    <div><img src="static/img/bg6.jpg" height="200"/></div>
                    <div class="font">美女</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top6">
            <a href="photoServlet?action=keyShow&keyWords=食物">
                <div class="overflow">
                    <div><img src="static/img/bg7.jpg" height="140"/></div>
                    <div class="font">食物</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top7">
            <a href="photoServlet?action=keyShow&keyWords=萌宠">
                <div class="overflow">
                    <div><img src="static/img/bg8.jpg" height="140"/></div>
                    <div class="font">萌宠</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top8">
            <a href="photoServlet?action=keyShow&keyWords=欧美风格">
                <div class="overflow">
                    <div><img src="static/img/bg9.jpg" height="140"/></div>
                    <div class="font">欧美风格</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <div class="top9">
            <a href="pages/user/all.jsp" >
                <div class="overflow">
                    <div><img src="static/img/bg10.jpg" height="140"/></div>
                    <div class="font">更多</div>
                    <div class="bg"></div>
                </div>
            </a>
        </div>
        <!--透明背景-->
        <div class="bg"></div>
    </div>
    <!--bottom
    -------------------------------->
    <div id="bottom">
        Copyright @ 2013-2014 duo duo photo <br/>
        多多图库 多多有限公司 版权所有
    </div>

    <!--login
    -------------------------------->
    <div id="login">
        <div class="box" id="box">
            <button type="button" id="over" onclick='loginhideDiv()' style="left: 0;">X</button>
            <p class="loginfont" style="left: 54px">Login</p>
            <form method="post" action="userServlet?action=login" style="width: 402px;">
                <table>
                    <tr>
                        <td width="300"><input type="text" class="input" placeholder="帐号" name="logUsername"></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="input" placeholder="密码" name="logPassword"></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" id="login-button">登入</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="loginboxbg"></div>
        <div class="boxbackground"></div>
    </div>
    <!--Registered
    -------------------------------->
    <div id="Registered">
        <div class="box" id="box">
            <button type="button" id="over" onclick='RegisteredhideDiv()' style="left: 0;">X</button>
            <span class="Registeredfont" style="left: 115px">Registered</span>
            <form method="post" action="userServlet?action=register" style="width: 402px;">
                <table>
                    <tr>
                        <td width="300"><input type="text" class="input" placeholder="用户名" name="regUsername"></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="input" placeholder="密码" id="regPassword" name="regPassword"></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="input" placeholder="再次输入密码" name="confirm"></td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" id="login-button">立即注册</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="Registeredboxbg"></div>
        <div class="boxbackground"></div>
    </div>

</div>
</body>
</html>