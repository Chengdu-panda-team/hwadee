<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/21
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <style>
        body {
            background:url("<%=request.getContextPath() %>/resources/images/background1.png");
            background-repeat: no-repeat;
            background-size: 100%,100%;
        }
    </style>
</head>

<body>
<div id="Head_1">

    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/logo.png" width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome" >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right" >
                <li><a href="<%=request.getContextPath()%>/mainPage/homepage" class="active">首页</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/aboutour" class="active">关于我们</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/showAll" class="active">产品展示</a></li>
                <li><a href="<%=request.getContextPath()%>/index/admin">管理员登录</a></li>
<%--                <li><a href="">退出</a></li>--%>
                <li><a href="http://120.79.97.34:8080/supernova">友链：超新星杂货铺</a></li>
            </ul>
        </div>
    </div>
    <b style="float: right;padding-right: 1%">登录您的账户</b>
</div>
<div class="login-page about">
    <div>
        <div class="login-agileinfo">
            <form action="<%=request.getContextPath()%>/admin/login" method="post" onsubmit="return check()">
                <input type="hidden"  name="method" value="submitTable">
                <center> <font color="red" id="message">管理员登录</font></center>
                <input class="agile-ltext" type="text" id="loginname" name="loginname" placeholder="请输入用户名" value="" required="">
                <input class="agile-ltext" type="password"  id="password" name="password" placeholder="请输入密码"  required="">
                <div class="wthreelogin-text">
                    <ul>
                        <li>
                            <label class="checkbox" style="padding-left: 20px">
                                <input type="checkbox" name="remember"><i></i>
                                记住我 ?
                            </label>
                        </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
                <input type="submit" style="background-color:rgba(255,6,1,0.3);" value="登录">
                <script>
                    function check() {
                        var username = document.getElementById('loginname').value;
                        var password = document.getElementById('password').value;
                        if (username == 'panda' && password == '001') {
                            return true;
                        }
                        else {
                            alert("登录失败！");
                            return false;
                        }
                    }
                </script>
            </form>
            <p>没有帐号? <a href=""> 现在注册!</a></p>
        </div>
    </div>
</div>

</body>
</html>
