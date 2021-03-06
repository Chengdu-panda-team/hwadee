<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/23
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新用户信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">
    <style>
        /*body{*/
        /*    background-color: #d1e7ed;*/
        /*}*/
    </style>
</head>
<body>
<div>
    <h1 style="color: burlywood;font-family: 方正粗黑宋简体 ">更新用户信息</h1>
    <form action="<%=request.getContextPath()%>/customer/saveUpdate/${curPage}/${customer.customerID}?<c:if test="${customerQueryName!=null}">customerQueryName=${customerQueryName}&</c:if><c:if test="${customerQuerySex!=null}">customerQuerySex=${customerQuerySex}&</c:if>" method="post">
        <table width="500px" height="300px">
            <tr>
                <td class="item_name">用户名称</td>
                <td><input type="text" name="customerName"class="textinput" value="${customer.customerName}"></td>
            </tr>
            <tr>
                <td class="item_name">性别</td>
                <td>
                    <input type="radio" name="customerSex" id="nan" value="男" <c:if test="${customer.customerSex.equals('男')}">checked="checked"</c:if>> <label for="nan" class="item_name">男</label>
                    <input type="radio" name="customerSex" id="nv" value="女" <c:if test="${customer.customerSex.equals('女')}">checked="checked"</c:if>> <label for="nv" class="item_name">女</label>
                </td>
            </tr>
            <tr>
                <td class="item_name">电话</td>
                <td><input type="text" name="customerTel" value="${customer.customerTel}" class="textinput"
                           pattern="\d{11}" oninvalid="setCustomValidity('必须填写11位的电话号码');"
                           oninput="setCustomValidity('');"></td>
            </tr>
            <tr>
                <td class="item_name">地址</td>
                <td><input type="text" name="customerAddress"value="${customer.customerAddress}" class="textinput"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit"class="btn" value="提交">
                    <input type="button" class="btn"value="取消" onclick="history.go(-1)">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
