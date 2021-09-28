<%@ page import="com.sun.org.apache.xpath.internal.operations.Bool" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/23
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateProduct</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">
</head>
<body>
<div>
    <h1 style="color: burlywood;font-family: 方正粗黑宋简体 ">修改产品信息</h1>
    <form action="<%=request.getContextPath()%>/product/saveUpdate/${curPage}/${product.productID}<c:if test="${productQueryName != null}">?productQueryName=${productQueryName}</c:if>">
        <table width="500px" height="300px">
            <tr>
                <td class="item_name">产品名称</td>
                <td><input type="text" name="productName" class="textinput" value="${product.productName}"></td>
            </tr>
            <tr>
                <td class="item_name">产品价格</td>
                <td><input type="text" name="productPrice" class="textinput" value="${product.productPrice}"></td>
            </tr>
            <tr>
                <td class="item_name">产品库存</td>
                <td><input type="text" name="productNum" class="textinput" value="${product.productNum}"></td>
            </tr>
            <tr>
                <td class="item_name">生产日期</td>
                <td><input type="date" name="ODateString" class="textinput" value="${product.productODate}"></td>
            </tr>
            <tr>
                <td class="item_name">截止日期</td>
                <td><input type="date" name="DDateString" class="textinput" value="${product.productDDate}"></td>
            </tr>
            <tr>
                <td class="item_name">供应商</td>
                <%--                <td><input type="number" name="supplierID" class="textinput"></td>--%>
                <td>
                    <select name="supplierIDAndName" class="textinput">
                        <c:forEach items="${suppliers}" var="supplier">
                            <option <c:if test="${product.supplierID==supplier.id}"> selected="selected"</c:if>>${supplier.str}</option>
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
        <input type="hidden" name="productQueryName" value="${productQueryName}">
    </form>
</div>
</body>
</html>
