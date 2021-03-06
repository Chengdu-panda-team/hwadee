<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>showSupplier</title>
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

    <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
<%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">--%>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>


<%--    <script type="text/javascript">--%>
<%--        function addSupplier() {--%>
<%--            $.ajax({--%>
<%--                type:"get",--%>
<%--                url:"<%=request.getContextPath()%>/supplier/add.action",--%>
<%--                data:{},--%>
<%--                success:function(data) {--%>
<%--                    alert("add");--%>

<%--                }--%>
<%--            });--%>
<%--        }--%>
<%--        function doAddSupplier() {--%>
<%--            $.post("<%=request.getContextPath()%>/supplier/doAdd.action",--%>
<%--                $("#add_supplier_form").serialize(),--%>
<%--                function(data){--%>
<%--                    alert("供应商信息保存成功！");--%>
<%--                    window.location.reload();--%>
<%--                });--%>
<%--        }--%>

<%--    </script>--%>

</head>
<body class="back">
    <div class="rt_content" style="overflow:auto;width:100%; height:80%;">
        <div class="page_title">

            <h2 style="color: burlywood;font-family: 方正粗黑宋简体 ">供应商列表展示</h2>
            <a href="<%=request.getContextPath()%>/supplier/doAdd" class="btn">添加供应商</a>
        </div>
        <form action="<%=request.getContextPath()%>/supplier/querySupplier" method="post">
            <section class="mtb">
                <input type="text" class="textbox textbox_225" name="supplierName" placeholder="输入供应商名称"<c:if test="${supplierName != null}">value="${supplierName}"</c:if>/>
                <input type="submit" value="查询" class="btn"/>
            </section>
        </form>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>供应商编号</th>
                <th>供应商名称</th>
                <th>供应商电话</th>
                <th>供应商地址</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${suppliers}" var="supplier">
                <tr>
                    <td>${supplier.supplierID}</td>
                    <td>${supplier.supplierName}</td>
                    <td>${supplier.supplierTel}</td>
                    <td>${supplier.supplierAddress}</td>
                    <td>
                        <a href="<%=request.getContextPath()%>/supplier/update/${curPage}/${supplier.supplierID}?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>" title="编辑" class="btn btn-success">编辑</a>
                        <a href="<%=request.getContextPath()%>/supplier/deleteSupplier/${curPage}/${supplier.supplierID}?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>" title="删除" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <aside class="paging">
            <a href="<%=request.getContextPath()%>/supplier/show/1?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>">首页</a>
            <c:if test="${curPage==1}">
                上一页
            </c:if>
            <c:if test="${curPage!=1}">
                <a href="<%=request.getContextPath()%>/supplier/show/${curPage-1}?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>">上一页</a>
            </c:if>
            <c:if test="${curPage==pageCount}">
                下一页
            </c:if>
            <c:if test="${curPage!=pageCount}">
                <a href="<%=request.getContextPath()%>/supplier/show/${curPage+1}?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>">下一页</a>
            </c:if>
            <a href="<%=request.getContextPath()%>/supplier/show/${pageCount}?<c:if test="${supplierName != null}">supplierName=${supplierName}&</c:if>">尾页</a>
            第${curPage}页/共${pageCount}页
        </aside>
    </div>

</body>
</html>
