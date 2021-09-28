    <%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
</head>
<body>
<div id="Head_1">

    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/logo.png" width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome" >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right" >
                <li><a href="<%=request.getContextPath()%>/admin/backToHome"  target="_parent" class="active">回到首页</a></li>
                <li><a href="#" class="active">欢迎管理员</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/logout"  target="_parent" class="active">退出登录</a></li>

            </ul>
        </div>
    </div>
    <b style="float: right;padding-right: 5%">猫仔茶基础信息管理</b>
</div>
</body>
</html>
