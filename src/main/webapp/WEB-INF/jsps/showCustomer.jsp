<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>showCustomer</title>
    <style >

        a {
            text-decoration:none;
        }
        .textbox{border:1px #139667 solid;height:26px;line-height:26px;padding:5px;font-size:12px; vertical-align:middle;}
        .textbox_295{width:295px;height: 50px}
        .textbox_225{width:225px;}
        /*.back{*/
        /*    background-color: #d1e7ed;*/
        /*}*/
    </style>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body class="back">
    <div class="rt_content" style="overflow:auto;width:100%; height:80%;">
        <div class="page_title">
            <h2 style="color: burlywood;font-family: 方正粗黑宋简体 ">用户列表展示</h2>
            <a href="<%=request.getContextPath()%>/customer/add" class="btn">添加用户</a>
        </div>
        <form action="<%=request.getContextPath()%>/customer/queryCustomer" method="post">
            <section class="mtb">
                <select class="select" name="customerSex">
                    <option>选择性别</option>
                    <option <c:if test="${customerSex.equals('女')}">selected="selected"</c:if>>女</option>
                    <option <c:if test="${customerSex.equals('男')}">selected="selected"</c:if>>男</option>
                </select>
                <input type="text" class="textbox textbox_225" placeholder="输入用户姓名" name="customerName" value="${customerName}"/>
                <input type="submit" value="查询" class="btn"/>
            </section>
        </form>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>用户编号</th>
                <th>用户姓名</th>
                <th>用户电话</th>
                <th>用户地址</th>
                <th>用户性别</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${customers}" var="customer">
                <tr>
                    <td>${customer.customerID}</td>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerTel}</td>
                    <td>${customer.customerAddress}</td>
                    <td>${customer.customerSex}</td>
                    <td>
                        <a href="<%=request.getContextPath()%>/customer/update/${curPage}/${customer.customerID}?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>" title="编辑" class="btn btn-success">编辑</a>
                        <a href="<%=request.getContextPath()%>/customer/deleteCustomer/${curPage}/${customer.customerID}?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>" title="删除" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
        <aside class="paging">
            <a href="<%=request.getContextPath()%>/customer/show/1?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>">首页</a>
            <c:if test="${curPage==1}">
                上一页
            </c:if>
            <c:if test="${curPage!=1}">
                <a href="<%=request.getContextPath()%>/customer/show/${curPage-1}?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>">上一页</a>
            </c:if>
            <c:if test="${curPage==pageCount}">
                下一页
            </c:if>
            <c:if test="${curPage!=pageCount}">
                <a href="<%=request.getContextPath()%>/customer/show/${curPage+1}?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>">下一页</a>
            </c:if>
            <a href="<%=request.getContextPath()%>/customer/show/${pageCount}?<c:if test="${customerName!=null}">customerName=${customerName}&</c:if><c:if test="${customerSex!=null}">customerSex=${customerSex}&</c:if>">尾页</a>
            第${curPage}页/共${pageCount}页
        </aside>
    </div>
</body>
</html>
