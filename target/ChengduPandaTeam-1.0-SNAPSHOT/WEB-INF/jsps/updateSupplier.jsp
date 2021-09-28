<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/23
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateSupplier</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">
</head>
<body>
<div>
    <h1 style="color: burlywood;font-family: 方正粗黑宋简体 ">修改供应商信息</h1>
    <form action="<%=request.getContextPath()%>/supplier/saveUpdate/${curPage}/${supplier.supplierID}?<c:if test="${supplierQueryName != null}">supplierQueryName=${supplierQueryName}&</c:if>">
        <table width="500px" height="300px">
            <tr>
                <td class="item_name">供应商名称</td>
                <td><input type="text" name="supplierName"class="textinput" value="${supplier.supplierName}"></td>
            </tr>
            <tr>
                <td class="item_name">供应商电话</td>
                <td><input type="tel" name="supplierTel"class="textinput" value="${supplier.supplierTel}"
                           pattern="\d{11}" oninvalid="setCustomValidity('必须填写11位的电话号码');"
                           oninput="setCustomValidity('');"></td>
            </tr>
            <tr>
                <td class="item_name">供应商地址</td>
                <td><input type="text" name="supplierAddress"class="textinput" value="${supplier.supplierAddress}"></td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="submit" class="btn" value="提交">
                    <input type="button" class="btn" value="取消" onclick="history.go(-1)">
                </td>
            </tr>
        </table>
        <input type="hidden" value="${supplierQueryName}" name="supplierQueryName">
    </form>
</div>
</body>
</html>
