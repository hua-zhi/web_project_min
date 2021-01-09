<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/index.css" />
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        center {
            text-align: center;
        }
        ul li {
            list-style: none;
        }
        .section {
            text-align: center;
            display: flex;
        }
        .section-1 {
            padding: 10px;
            margin: 10px;
            width: 600px;
            height: auto;
        }
        .section-1 p{
            text-align: justify;
        }

        *, ::after, ::before {
            box-sizing: border-box;
        }
        .footer .up {
            display: flex;
            text-align: center;
        }
        .footer-center {
            flex-basis: 40%;
        }
        .footer-right {
            flex-basis: 30%;
        }
        .footer-left {
            flex-basis: 30%;
        }
        .footer .bottom{
            text-align: center;
        }
    </style>
</head>
<body>
<body>
<div class="main">
    <div class="page-header">
        <h2>
            <img src="https://www.nefu.edu.cn/2019images/logo.png" alt="" /> 信息与计算机工程学院
            <em>软件工程</em>

        </h2>
    </div>
    <!-- navbar -->
    <nav class="myNav navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand active" href="${pageContext.request.contextPath}/index.jsp">首页<span class="sr-only">(current)</span></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">


                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">招生就业<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/introduction-1.jsp">专业介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/introduction-2.jsp">专业前景</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">实验室<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/lab925.jsp">925实验室</a></li>
                            <li><a href="${pageContext.request.contextPath}/lab927.jsp">927实验室</a></li>
                        </ul>
                    </li>
                    <!-- <li class="active"><a href="#">师资力量 <span class="sr-only">(current)</span></a></li> -->
                    <li><a href="${pageContext.request.contextPath}/teacher.jsp">师资力量</a></li>
                    <li><a href="${pageContext.request.contextPath}/news">新闻</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${pageContext.request.contextPath}/manage/login">登录</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <!-- swipe -->
    <div id="carousel-example-generic" class="carousel slide myswipe" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="https://www.nefu.edu.cn/images/20/yuandan20210101.jpg" alt="...">
                <div class="carousel-caption">
                    <!--                  新的一年，新的开始，加油呀-->
                </div>
            </div>

            <div class="item">
                <img src="https://www.nefu.edu.cn/images/20/dongzhi20201221.gif" alt="...">
                <div class="carousel-caption">
                    <!--                  ...-->
                </div>
            </div>
            <div class="item">
                <img src="https://www.nefu.edu.cn/images/20/lixingjieyue20200925.jpg" alt="">
                <div class="carousel-caption">
                    <!--                  ...-->
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--                    主体-->
    <div class="section">
        <div class="row">
            <div class="col-md-6 section-1">
                <img src="https://www.nefu.edu.cn/2019images/dh_sy_r-2019.png">
                <h5>专业介绍</h5>
                <p>
                    东北林业大学信息与计算机工程学院组建于1999年6月。
                    学院以“自强、务实、尚学、进取”为院训，坚持“以人为本、人才强院、提高质量、特色发展”的办学原则，
                    确立了“突出创新教育，注重内涵建设”的办学理念和“知识、能力、素质”三位一体的现代人才培养模式。
                    学院现拥有国家一级重点学科林业工程下设的“林业信息工程”<a href="${pageContext.request.contextPath}/introduction-1.jsp">>>了解更多</a>
                </p>

            </div>
            <div class="col-md-6 section-1">
                <img src="https://icec.nefu.edu.cn/__local/9/B1/77/701BF5F0EC1BAE6C9AC60044D6D_5F4504C7_77C0.jpg?e=.jpg" height="120" width="180">
                <h5>教师风采</h5>

                <p>
                    东北林业大学信息与计算机工程学院组建于1999年6月。
                    学院以“自强、务实、尚学、进取”为院训，坚持“以人为本、人才强院、提高质量、特色发展”的办学原则，
                    确立了“突出创新教育，注重内涵建设”的办学理念和“知识、能力、素质”三位一体的现代人才培养模式。
                    学院现拥有国家一级重点学科林业工程下设的“林业信息工程”<a href="${pageContext.request.contextPath}/teacher.jsp">>>了解更多</a>
                </p>

            </div>
        </div>
        <!--            左边专业介绍 右边老师-->
    </div>
    <div class="footer">
        <div class="up">
            <div class="footer-left ">
                <h3>友情链接</h3>
                <ul class="bottom ">
                    <li><a href="https://www.nefu.edu.cn/">东北林业大学</a></li>
                    <li><a href="https://jwc.nefu.edu.cn/">教务处</a></li>
                    <li><a href="http://acm.nefu.edu.cn/">ACM测评系统</a></li>
                </ul>
            </div>
            <div class="footer-center ">
                <img src="https://www.nefu.edu.cn/2019images/logo01.png" alt="">
            </div>
            <div class="footer-right">
                <h3>联系方式</h3>
                <ul class="bottom ">
                    <li>电子邮箱</li>
                    <li>电话</li>
                </ul>
            </div>
        </div>
        <div class="bottom">
            <p>校址：黑龙江省哈尔滨市香坊区和兴路26号 邮编：150040</p>
            <p>版权所有 © lsm</p>
        </div>

    </div>

</div>


<!-- js -->

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script>
        $(function(){
        $('.dropdown-toggle').dropdown();
        });
    </script>
</body>
</body>
</html>
