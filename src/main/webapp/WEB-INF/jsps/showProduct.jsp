<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="MaozaiTea.pojo.Product" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>showProduct</title>
    <style >
        /*.back{*/
        /*    background-color: #d1e7ed;*/
        /*}*/
        a {
            text-decoration:none;
        }
        .textbox{border:1px #139667 solid;height:26px;line-height:26px;padding:5px;font-size:12px; vertical-align:middle;}
        .textbox_295{width:295px;height: 50px}
        .textbox_225{width:225px;}
    </style>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body class="back">
    <div class="rt_content" style="overflow:auto;width:100%; height:80%;">
        <div class="page_title">
            <h2 style="color: burlywood;font-family: 方正粗黑宋简体 ">产品列表展示</h2>
            <a href="<%=request.getContextPath()%>/product/add" class="btn">添加产品</a>
        </div>
        <form action="<%=request.getContextPath()%>/product/queryProduct" method="post">
            <section class="mtb">
                <input type="text" class="textbox textbox_225" name="productName" placeholder="输入产品名称" <c:if test="${productName != null}">value="${productName}"</c:if>/>
                <input type="submit" value="查询" class="btn"/>
            </section>
        </form>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>产品编号</th>
                <th>产品名称</th>
                <th>产品价格</th>
                <th>产品库存</th>
                <th>生产日期</th>
                <th>截止日期</th>
                <th>供应商编号</th>
                <th>操作</th>
            </tr>
            <%
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                pageContext.setAttribute("simpleDateFormat", simpleDateFormat);
            %>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.productID}</td>
                    <td>${product.productName}</td>
                    <td>${product.productPrice}</td>
                    <td>${product.productNum}</td>
                    <td>${simpleDateFormat.format(product.productODate)}</td>
                    <td>${simpleDateFormat.format(product.productDDate)}</td>
                    <td>${product.supplierID}</td>
                    <td>
                        <a href="<%=request.getContextPath()%>/product/update/${curPage}/${product.productID}?<c:if test="${productName != null}">productName=${productName}&</c:if>" title="编辑" class="btn btn-success">编辑</a>
                        <a href="<%=request.getContextPath()%>/product/deleteProduct/${curPage}/${product.productID}?<c:if test="${productName != null}">productName=${productName}&</c:if>" title="删除" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <aside class="paging">
            <a href="<%=request.getContextPath()%>/product/show/1<c:if test="${productName != null}">?productName=${productName}</c:if>">首页</a>
            <c:if test="${curPage==1}">
                上一页
            </c:if>
            <c:if test="${curPage!=1}">
                <a href="<%=request.getContextPath()%>/product/show/${curPage-1}<c:if test="${productName != null}">?productName=${productName}</c:if>">上一页</a>
            </c:if>
            <c:if test="${curPage==pageCount}">
                下一页
            </c:if>
            <c:if test="${curPage!=pageCount}">
                <a href="<%=request.getContextPath()%>/product/show/${curPage+1}<c:if test="${productName != null}">?productName=${productName}</c:if>">下一页</a>
            </c:if>
            <a href="<%=request.getContextPath()%>/product/show/${pageCount}<c:if test="${productName != null}">?productName=${productName}</c:if>">尾页</a>
            第${curPage}页/共${pageCount}页
        </aside>
    </div>
</body>
</html>
