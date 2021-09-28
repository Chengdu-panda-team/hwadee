<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/23
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新商品信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">
    <style>
        img {
            page-break-inside: avoid;
        }
        img {
            max-width: 100% !important;
        }
    </style>
</head>
<body>
<div>
    <h1 style="color: burlywood;font-family: 方正粗黑宋简体 ">更新商品信息</h1>
    <form action="<%=request.getContextPath()%>/goods/saveUpdate/${curPage}/${goods.goodsID}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>" enctype="multipart/form-data" method="post">
        <table  width="500px" height="300px">
            <tr>
                <td class="item_name" >商品名称</td>
                <td><input type="text" name="goodsName" class="textinput" value="${goods.goodsName}"></td>
            </tr>
            <tr>
                <td class="item_name">商品价格</td>
                <td><input type="text" name="goodsPrice" class="textinput" value="${goods.goodsPrice}"></td>
            </tr>
            <tr>
                <td class="item_name">商品种类</td>
                <td>
                    <select name="goodsCategory" class="textinput">
                        <option <c:if test="${goods.goodsCategory.equals('null')}">selected="selected"</c:if>>选择种类</option>
                        <option <c:if test="${goods.goodsCategory.equals('果茶')}">selected="selected"</c:if>>果茶</option>
                        <option <c:if test="${goods.goodsCategory.equals('奶茶')}">selected="selected"</c:if>>奶茶</option>
                        <option <c:if test="${goods.goodsCategory.equals('冷萃茶')}">selected="selected"</c:if>>冷萃茶</option>
                        <option <c:if test="${goods.goodsCategory.equals('烧仙草')}">selected="selected"</c:if>>烧仙草</option>
                        <option <c:if test="${goods.goodsCategory.equals('咖啡')}">selected="selected"</c:if>>咖啡</option>
                    </select>
                </td>
            </tr>
            <td class="item_name">商品图片</td>
            <td><label> <img src="<%=request.getContextPath()%>/resources/images/${goods.goodsImg}" width="100" height="100"/>更新图片</label></td>
            <td><label class="uploadImg"><input type="file" name="goodsImgFile"/>
                <span><img src="<%=request.getContextPath()%>/resources/images/book.png"></span></label></td>
            <tr>
            </tr>
            <td class="item_name">用料详情</td>
            <td>
                <textarea name="goodsInf" row="5" class="textinput">${goods.goodsInf}</textarea>
            </td>
            <tr>
                <td> </td>
                <td>
                    <input type="submit" value="提交" class="btn">
                    <input type="button" value="取消" class="btn" onclick="history.go(-1)">
                </td>
            </tr>
        </table>
        <input type="hidden" name="oldImg" value="${goods.goodsImg}">
    </form>
</div>
</body>
</html>
