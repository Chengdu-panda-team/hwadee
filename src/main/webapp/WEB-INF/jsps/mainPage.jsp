<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/27
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品展示</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <style>

        .title{
            margin:0  auto;
            width:777px;
            background-color:#08cae2;
            height:40px;
            display: inline-block;
            padding: 1em 1em;
        }
        .product-top h4 {
            font-size: 1.3em;
            color: #fff;
            float: left;
        }
        .middle
        {
            margin:0  auto;
            width:777px;
        }
        .block {
            float:left;
            clear:right;
            width:259px;
            background-color:#eeefff;
            height:270px;
            /*padding:0em 2em;*/
            /*border:1px solid antiquewhite;*/
            border-bottom:10px solid lightpink;

        }
        .imgShow {
            width:200px;
            height:200px;
            vertical-align: middle;
        }
        .agile-product-text {
            /*background: #08cae2;*/
            padding: 1em 0em;
            text-align: center;
            width:100%;
            height:60px;
        }
        .clearfix {
            width:100%;
            height:20px;
            background-color: white;
        }

    </style>
</head>
<body>
<div id="Head_1">

    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath()%>/resources/images/logo.png"width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome" >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right" >
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
    <div class="container">
        <div class="middle">
            <form action="<%=request.getContextPath()%>/mainPage/queryGoods" method="post">
                <section class="mtb">
                    <select class="select" name="goodsQueryCategory" hidden="hidden">
                        <option <c:if test="${goodsQuery.goodsQueryCategory == null}">selected="selected"</c:if>>选择种类</option>
                        <option <c:if test="${goodsQuery.goodsQueryCategory.equals('果茶')}">selected="selected"</c:if>>果茶</option>
                        <option <c:if test="${goodsQuery.goodsQueryCategory.equals('奶茶')}">selected="selected"</c:if>>奶茶</option>
                        <option <c:if test="${goodsQuery.goodsQueryCategory.equals('冷萃茶')}">selected="selected"</c:if>>冷萃茶</option>
                        <option <c:if test="${goodsQuery.goodsQueryCategory.equals('烧仙草')}">selected="selected"</c:if>>烧仙草</option>
                        <option <c:if test="${goodsQuery.goodsQueryCategory.equals('咖啡')}">selected="selected"</c:if>>咖啡</option>
                    </select>
<%--                    <input type="hidden" name="goodsQueryCategory" value="${goodsQuery.goodsQueryCategory}"/>--%>
                    <input type="text" class="textbox textbox_225" name="goodsQueryName" placeholder="输入商品名称关键词" <c:if test="${goodsQuery.goodsQueryName != null}">value="${goodsQuery.goodsQueryName}"</c:if>/>
                    <input type="text" class="textbox textbox_225" name="goodsQueryLowPrice" placeholder="输入期望最低价格" <c:if test="${goodsQuery.goodsQueryLowPrice != null}">value="${goodsQuery.goodsQueryLowPrice}"</c:if>/>
                    <input type="text" class="textbox textbox_225" name="goodsQueryHighPrice" placeholder="输入期望最高价格" <c:if test="${goodsQuery.goodsQueryHighPrice != null}">value="${goodsQuery.goodsQueryHighPrice}"</c:if>/>
                    <input type="submit" value="查询" class="btn"/>
            </section>
            </form>
        </div>

        <div class="middle">
            <div class="title">
                <h4 style="color:white;">种类：
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=选择种类&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${goodsQuery.goodsQueryCategory != null}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory == null}">blue</c:if>;">全部</a>
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=奶茶&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${!goodsQuery.goodsQueryCategory.equals('奶茶')}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory.equals('奶茶')}">blue</c:if>;">奶茶</a>
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=果茶&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${!goodsQuery.goodsQueryCategory.equals('果茶')}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory.equals('果茶')}">blue</c:if>">果茶</a>
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=冷萃茶&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${!goodsQuery.goodsQueryCategory.equals('冷萃茶')}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory.equals('冷萃茶')}">blue</c:if>;">冷萃茶</a>
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=烧仙草&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${!goodsQuery.goodsQueryCategory.equals('烧仙草')}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory.equals('烧仙草')}">blue</c:if>;">烧仙草</a>
                    <a href="<%=request.getContextPath()%>/mainPage/queryGoods?goodsQueryCategory=咖啡&goodsQueryName=${goodsQuery.goodsQueryName}&goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}" class="product-top" style="color:<c:if test="${!goodsQuery.goodsQueryCategory.equals('咖啡')}">white</c:if><c:if test="${goodsQuery.goodsQueryCategory.equals('咖啡')}">blue</c:if>;">咖啡</a>
                </h4>
            </div>
            <div class="clearfix"></div>
        <c:forEach items="${goodsList}" var="goods">
            <div class="block" align="center">
                <img src="<%=request.getContextPath()%>/resources/images/${goods.goodsImg}" title="${goods.goodsInf}" class="imgShow"/>
                <div class="agile-product-text">
                 <h5>${goods.goodsName}</h5>
<%--                 <h5>${goods.goodsCategory}</h5>--%>
<%--                 <h5>用料：${goods.goodsInf}</h5>--%>
                 <h5>${goods.goodsPrice}￥</h5>
                </div>
            </div>
        </c:forEach>
        </div>

    </div>
</div>

<%--左侧图片展示--%>
<div>

</div>

</body>
</html>
