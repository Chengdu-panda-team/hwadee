
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/27
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猫仔茶唯一官网 加盟热线：xxxx-xxx-xxx</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">

</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js" rel="stylesheet"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.js" rel="stylesheet"></script>

<div id="Head_1">

    <div id="Head_1_Logo">

        <img src="<%=request.getContextPath() %>/resources/images/logo.png" width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome"  >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<%=request.getContextPath()%>/mainPage/homepage" class="active">首页</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/aboutour" class="active">关于我们</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/showAll" class="active">商品展示</a></li>
                <li><a href="<%=request.getContextPath()%>/index/admin">管理员登录</a></li>
                <li><a href="http://120.79.97.34:8080/supernova">友链：超新星杂货铺</a></li>
            </ul>
        </div>
    </div>
    <b style="float: right;padding-right: 1%">猫仔茶</b>
</div>
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active" align="center">
                        <img src="<%=request.getContextPath()%>/resources/images/1.png" alt="First slide" style="width: 100%">
<%--                        <div class="carousel-caption">1</div>--%>

                    </div>
                    <div class="item" align="center">
                        <img src="<%=request.getContextPath()%>/resources/images/2.png" alt="Second slide" style="width: 100%">
<%--                        <div class="carousel-caption">2</div>--%>
                    </div>
                    <div class="item" align="center">
                        <img src="<%=request.getContextPath()%>/resources/images/3.png" alt="Third slide" style="width: 100%">
<%--                        <div class="carousel-caption">3</div>--%>
                    </div>
                    <div class="item" align="center">
                        <img src="<%=request.getContextPath()%>/resources/images/4.png" alt="Fourth slide" style="width: 100%">
<%--                        <div class="carousel-caption">4</div>--%>
                    </div>
                    <div class="item" align="center">
                        <img src="<%=request.getContextPath()%>/resources/images/5.png" alt="Fifth slide" style="width: 100%">
<%--                        <div class="carousel-caption">5</div>--%>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
<%--                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--%>
<%--                    <span class="sr-only">Previous</span>--%>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
<%--                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--%>
<%--                    <span class="sr-only">Next</span>--%>
                </a>
            </div>
<%--    <script>--%>
<%--        $(function () {--%>
<%--            $('.carousel').carousel({--%>
<%--                interval: 2000--%>
<%--            })--%>
<%--        })--%>
<%--    </script>--%>
    </div>
</body>
</html>
