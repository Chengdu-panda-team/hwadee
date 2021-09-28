<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猫仔茶基础信息管理系统</title>
    <style>
        body
        {
            margin: 0;
            padding: 0;
            border: 0;
            overflow: hidden;
            height: 100%;
            max-height: 100%;
            <%--background:url("<%=request.getContextPath() %>/resources/images/background2.png");--%>
            background-color: whitesmoke;
        }

        #Top
        {
            border: 0;
            position: absolute;
            top:0;
            left: 0;
            height: 120px;
            width: 100%;
            overflow: hidden;
            vertical-align: middle;
        }

        #Left
        {
            border: 0;
            position: fixed;
            top: 120px;
            left: 0;
            height: 100%;
            width: 250px;
            overflow: hidden;
            vertical-align: top;
        }

        #Right
        {
            border: 0;
            position: absolute;
            left: 250px;
            top: 120px;
            height: 100%;
            width: 100%;
            right: 0;
            bottom: 0;
            overflow: hidden;
        }
    </style>
</head>

<body>
<div>
    <iframe id="Page" ></iframe>
<div>
    <iframe id="Top" src="<%=request.getContextPath()%>/index/top"></iframe>
</div>

<div>
    <iframe id="Left" src="<%=request.getContextPath()%>/index/left"></iframe>
    <iframe id="Right" name="Right" src="<%=request.getContextPath()%>/index/right"></iframe>
</div>
</div>
</body>
</html>
