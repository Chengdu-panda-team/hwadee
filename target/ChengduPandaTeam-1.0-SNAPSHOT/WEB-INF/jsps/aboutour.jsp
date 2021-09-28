<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/7/28
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于我们</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
<%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">--%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/sliderStyle.js"></script>
    <style>
        .scroll-background{
            background-image: url("<%=request.getContextPath()%>/resources/images/sprite.png");
            background-repeat: no-repeat;
        }
        .middle {
            margin:0  auto;
            width:100%;
        }
        .left {
            float:left;
            clear:right;
            margin:0;
            width:20%;
            height:600px;
            background:whitesmoke;
            padding: 2em 2em;
        }
        .content {
            float:left;
            clear:right;
            width:60%;
            height:600px;
            background:white;
            font-family:方正粗黑宋简体;
            font-size: 20px;
            color:#122b40;
            background:url("<%=request.getContextPath()%>/resources/images/aboutour.jpg");
            background-repeat: no-repeat;
            background-size: 150%,150%;
            line-height: 175%;
        }
        .right {
            float:right;
            margin:0;
            width:20%;
            height:600px;
            background:whitesmoke;
            padding: 2em 2em;
        }
        .foot {
            float:left;
            width:100%;
            height:150px;
            margin: 0;
            background-color:lightyellow;
            text-align: center;
        }
        .textinput {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
            -moz-transition: border linear 0.2s, box-shadow linear 0.2s;
            -o-transition: border linear 0.2s, box-shadow linear 0.2s;
            transition: border linear 0.2s, box-shadow linear 0.2s;
            height: 40px;
            width:100%;
        }
    </style>
</head>
<body>
<div id="Head_1">
    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/logo.png" width="90px" height="75px"/>
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
<div class="middle">
    <div class="left">
        <form action="<%=request.getContextPath()%>/about/send" method="post" class="survey" onsubmit="return checkForm()">
            <h4>*立即咨询 获取加盟资料</h4>
            <input type="text" name="Name" placeholder="请输入称呼，如“万先生”" class="textinput" >
            <input type="text" name="Tel" class="textinput" placeholder="请输入手机号" >
            <input type="text" name="Mail" class="textinput" placeholder="请输入邮箱" >
            <input type="text" name="Region" class="textinput" placeholder="请输入所要加盟地区" >
            <textarea name="Question" class="textinput" placeholder="请输入想要咨询的内容"></textarea>
            &nbsp;&nbsp;<input name="Yes" type="radio" required="">我同意加盟
            &nbsp;&nbsp;<input type="submit" value="提交" class="btn">
<%--            <div id="slideBar" style="display: none; position: absolute; top: 200px; left: 50px;"></div>--%>
            <div id="slideBar" style="display: none;"></div>
            <script type="text/javascript">
                var dataList = ["0","1"];
                var options = {
                    dataList: dataList,
                    success:function(){
                        flag = true;
                        var s = document.getElementById("slideBar");
                        s.style.display = "none";
                    },
                    fail: function(){
                        flag = false;
                    }
                };
                SliderBar("slideBar", options);
            </script>
            <script>
                var flag = false;
            </script>
            <script type="text/javascript">
                function checkForm() {
                    if (flag === false) {
                        var s = document.getElementById("slideBar");
                        s.style.display = "block";
                    }
                    else {
                        alert('提交成功！期待您的加盟！');
                    }
                    return flag;
                    // if (flag) {
                    //     //如果验证不通过
                    //     return false;
                    // } else {
                    //     //验证通过
                    //     return true;
                    // // }
                }
            </script>
        </form>

    </div>

    <div class="content" align="center">
        <h2 style="font-family:方正粗黑宋简体;font-size: 30px; padding-top: 10px">关于我们</h2>
        <p>“猫仔茶”作为猫仔茶企业文化有限公司旗下品牌，</p>
        <p>是一个专为年轻人打造新鲜茶饮的全国连锁品牌。</p>
        <p>从2021年创立至今，猫仔茶始终坚持高质平价原则，</p>
        <p>致力于推动全球茶饮行业更好、更快的发展。</p>
        <p>猫仔茶还将熊猫元素融入其中，憨态可掬的熊猫形象深入人心。</p>
        <p>特色饮品加上特别的中国文化元素深受年轻人士的喜爱。</p>
        <p>对于猫仔茶来说，“茶”有着特殊的含义。</p>
        <p>茶，不止是一个动作，一杯饮品，更代表着一种生活方式。</p>
        <p>猫仔茶回到做好一杯饮品的本质上，用原料、工艺、创新精神来创作饮品。</p>
        <p>坚持原叶现萃，使用华中农业大学一级华农绿针，保证茶汤既去除了涩味又保留了茶香，</p>
        <p>通过茶、鲜果这些食材的组合创新，呈现出生活中值得等待的美味品牌IP。</p>
    </div>

    <div class="right">
        <form action="<%=request.getContextPath()%>/about/sendCustomerText" method="post" class="survey" onsubmit="return checkForm2()">
            <h4>*这是一份用户体验问卷</h4>
            <h4>口感打分：</h4>
            <input type="radio" name="flavor" required="" value="不喜欢">不喜欢
            <input type="radio" name="flavor" required="" value="一般">一般
            <input type="radio" name="flavor" required="" value="非常好">非常好

            <h4>外观打分：</h4>
            <input type="radio" name="outlook" id="l1" required="" value="不喜欢">不喜欢
            <input type="radio" name="outlook" id="l2" required="" value="一般">一般
            <input type="radio" name="outlook" id="l3" required="" value="非常好">非常好

            <h4>服务打分：</h4>
            <input type="radio" name="service" id="s1" required="" value="不喜欢">不喜欢
            <input type="radio" name="service" id="s2" required="" value="一般">一般
            <input type="radio" name="service" id="s3" required="" value="非常好">非常好


            <textarea name="feedback" class="textinput" placeholder="请献上您宝贵的意见或建议！"></textarea>

            &nbsp;&nbsp;<input type="submit" value="提交" class="btn">
            <h4>据说提交的都是小可爱哦！比心♥</h4>
            <script type="text/javascript">
                function checkForm2() {
                    alert('提交成功！感谢您的反馈！');
                    return true;
                }
            </script>
        </form>
    </div>

    <div class="foot">
        <div class="foot-text">
            <h3>@猫仔茶</h3>
            <p>成都总部:成都市郫都区红旗大道北段国家信息中心四楼405</p>
            <p>武汉分公司:武汉市洪山区狮子山街道华中农业大学荟园区</p>
            <p>版权所有：猫仔茶企业文化有限公司加盟热线:xxx-xxx-xxx投诉热线: xxx-xxx-xxx </p>
        </div>
    </div>
</div>
</body>
</html>
