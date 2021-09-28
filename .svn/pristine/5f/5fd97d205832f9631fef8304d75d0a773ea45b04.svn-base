<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/22
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加产品信息</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">
    <style>
        /*body{*/
        /*    background-color: #d1e7ed;*/
        /*}*/
    </style>
</head>
<body>
<div>
    <h1 style="color: burlywood;font-family: 方正粗黑宋简体 ">新增产品信息</h1>
    <form action="<%=request.getContextPath()%>/product/addProduct">
        <table width="500px" height="300px">
            <tr>
                <td class="item_name">产品名称</td>
                <td><input type="text" name="productName" class="textinput"required="required"></td>
            </tr>
            <tr>
                <td class="item_name">产品价格</td>
                <td><input type="text" name="productPrice" class="textinput"required="required"></td>
            </tr>
            <tr>
                <td class="item_name">产品库存</td>
                <td><input type="text" name="productNum" class="textinput"required="required"></td>
            </tr>
            <tr>
                <td class="item_name">生产日期</td>
                <td><input type="date" name="productODateString" class="textinput"></td>
            </tr>
            <tr>
                <td class="item_name">截止日期</td>
                <td><input type="date" name="productDDateString"class="textinput"required="required"></td>
            </tr>
            <tr>
                <td class="item_name">供应商</td>
                <td>
                <select name="supplierIDAndName" class="textinput">
                    <c:forEach items="${suppliers}" var="supplier">
                        <option>${supplier}</option>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" class="btn" value="提交">
                    <input type="button" class="btn" value="取消" onclick="history.go(-1)">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
