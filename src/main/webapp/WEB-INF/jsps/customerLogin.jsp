<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/27
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
    <style>
        body {
            background:url("<%=request.getContextPath() %>/resources/images/background1.png");
            background-repeat: no-repeat;
            background-size: 100%,100%;
        }
    </style>
</head>
<body>
<div class="login-page about">
    <div>
        <h3 style="text-align:center;color:rgba(255,6,1,0.3);font-size: 70px;font-family:方正粗黑宋简体;top:50px;">登录您的账户</h3>
        <div class="login-agileinfo">
            <form action="<%=request.getContextPath()%>/customer/login" method="post" >
                <%--            <form action="" method="post" >--%>
                <input type="hidden"  name="method" value="submitTable">
                <center> <font color="red" id="message">用户登录</font></center>
                <input class="agile-ltext" type="text" name="customerName" placeholder="请输入用户名" value="" required="">

                <input class="agile-ltext" type="password"  name="password" placeholder="请输入密码"  required="">
                <div class="wthreelogin-text">
                    <ul>
                        <li>
                            <label class="checkbox">
                                <input type="checkbox" name="remember"><i></i>
                                记住我 ?
                            </label>
                        </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
                <input type="submit"style="background-color:rgba(255,6,1,0.3);" value="登录">
            </form>
            <p>没有帐号? <a href=""> 现在注册!</a></p>
        </div>
    </div>
</div>
</body>
</html>
