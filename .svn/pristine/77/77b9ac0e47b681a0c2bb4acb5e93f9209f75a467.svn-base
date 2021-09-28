<%--
  Created by IntelliJ IDEA.
  User: 15995
  Date: 2021/7/21
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>滑动验证</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/sliderStyle.js"></script>
</head>
<body>
<div id="slideBar"></div>
<script type="text/javascript">
    var dataList = ["0","1"];
    var options = {
        dataList: dataList,
        success:function(){
            console.log("show");
        },
        fail: function(){
            console.log("fail");
        }
    };
    SliderBar("slideBar", options);
</script>
</body>
</html>