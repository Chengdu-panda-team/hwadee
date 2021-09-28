<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/22
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>showGoods</title>
    <style>
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
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/echarts.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body class="back">
    <div class="rt_content" style="overflow:auto;width:100%; height:80%;">
        <div class="page_title">
            <h2 style="color: burlywood;font-family: 方正粗黑宋简体 ">商品列表展示</h2>
            <a href="<%=request.getContextPath()%>/goods/add" class="btn">添加商品</a>
        </div>
        <form action="<%=request.getContextPath()%>/goods/queryGoods" method="post">
            <section class="mtb">
                <select class="select" name="goodsQueryCategory">
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('null')}">selected="selected"</c:if>>选择种类</option>
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('果茶')}">selected="selected"</c:if>>果茶</option>
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('奶茶')}">selected="selected"</c:if>>奶茶</option>
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('冷萃茶')}">selected="selected"</c:if>>冷萃茶</option>
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('烧仙草')}">selected="selected"</c:if>>烧仙草</option>
                    <option <c:if test="${goodsQuery.goodsQueryCategory.equals('咖啡')}">selected="selected"</c:if>>咖啡</option>
                </select>
                <input type="text" class="textbox textbox_225" name="goodsQueryName" placeholder="输入商品名称关键词" <c:if test="${goodsQuery.goodsQueryName != null}">value="${goodsQuery.goodsQueryName}"</c:if>/>
                <input type="text" class="textbox textbox_225" name="goodsQueryLowPrice" placeholder="输入期望最低价格" <c:if test="${goodsQuery.goodsQueryLowPrice != null}">value="${goodsQuery.goodsQueryLowPrice}"</c:if>/>
                <input type="text" class="textbox textbox_225" name="goodsQueryHighPrice" placeholder="输入期望最高价格" <c:if test="${goodsQuery.goodsQueryHighPrice != null}">value="${goodsQuery.goodsQueryHighPrice}"</c:if>/>
                <input type="submit" value="查询" class="btn"/>
            </section>
        </form>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>缩略图</th>
                <th>商品编号</th>
                <th>商品名称</th>
                <th>商品价格</th>
                <th>商品种类</th>
                <th>商品信息</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${page.arrayList}" var="goods">
                <tr>
                    <td class="center"><img src="<%=request.getContextPath()%>/resources/images/${goods.goodsImg}" width="100" height="100"/></td>
                    <td>${goods.goodsID}</td>
                    <td>${goods.goodsName}</td>
                    <td><strong class="rmb_icon">${goods.goodsPrice}</strong></td>
                    <td>${goods.goodsCategory}</td>
                    <td>${goods.goodsInf}</td>
                    <td>
                        <a href="<%=request.getContextPath()%>/goods/update/${page.curPage}/${goods.goodsID}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>" title="编辑" class="btn btn-success">编辑</a>
                        <a href="<%=request.getContextPath()%>/goods/deleteGoods/${page.curPage}/${goods.goodsID}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>" title="删除" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>

        </table>
        <div id="main" style="width: 500px; height: 350px; position: absolute; top: 300px; left: 850px;"></div>
        <script type="text/javascript">
            var myChart = echarts.init(document.getElementById('main'));

            // 指定图表的配置项和数据
            var option = {
                tooltip: {
                    trigger: 'item'
                },
                legend: {
                    top: '5%',
                    left: 'center'
                },
                series: [
                    {
                        name: '商品种类',
                        type: 'pie',
                        radius: ['40%', '70%'],
                        avoidLabelOverlap: false,
                        itemStyle: {
                            borderRadius: 10,
                            borderColor: '#fff',
                            borderWidth: 2
                        },
                        label: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            label: {
                                show: true,
                                fontSize: '40',
                                fontWeight: 'bold'
                            }
                        },
                        labelLine: {
                            show: false
                        },
                        data: [
                            {value: ${goodsCategories[0]}, name: '果茶'},
                            {value: ${goodsCategories[1]}, name: '奶茶'},
                            {value: ${goodsCategories[2]}, name: '冷萃茶'},
                            {value: ${goodsCategories[3]}, name: '烧仙草'},
                            {value: ${goodsCategories[4]}, name: '咖啡'}
                        ]
                    }
                ]
            };

            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        </script>
        <aside class="paging">
            <a href="<%=request.getContextPath()%>/goods/show/1?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>">首页</a>
            <c:if test="${page.curPage==1}">
                上一页
            </c:if>
            <c:if test="${page.curPage!=1}">
                <a href="<%=request.getContextPath()%>/goods/show/${page.curPage-1}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>">上一页</a>
            </c:if>
            <c:if test="${page.curPage==page.pageCount}">
                下一页
            </c:if>
            <c:if test="${page.curPage!=page.pageCount}">
                <a href="<%=request.getContextPath()%>/goods/show/${page.curPage+1}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>">下一页</a>
            </c:if>
            <a href="<%=request.getContextPath()%>/goods/show/${page.pageCount}?<c:if test="${goodsQuery.goodsQueryName != null}">goodsQueryName=${goodsQuery.goodsQueryName}&</c:if><c:if test="${goodsQuery.goodsQueryCategory != null}">goodsQueryCategory=${goodsQuery.goodsQueryCategory}&</c:if><c:if test="${goodsQuery.goodsQueryLowPrice != null}">goodsQueryLowPrice=${goodsQuery.goodsQueryLowPrice}&</c:if><c:if test="${goodsQuery.goodsQueryHighPrice != null}">goodsQueryHighPrice=${goodsQuery.goodsQueryHighPrice}&</c:if>">尾页</a>
            第${page.curPage}页/共${page.pageCount}页
        </aside>
    </div>
</body>
</html>
