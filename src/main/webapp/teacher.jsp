<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
<%--    <link rel="stylesheet" type="text/css" href="teacher/css/htmleaf-demo.css">--%>
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
        /*上面是通用的 下面是我的教师们*/
        .box{
            border: 1px solid #333;
            position: relative;
            overflow: hidden;
            margin: 5px;
        }
        .box img{
            width: 100%;
            height:348.69px;
            /* margin-bottom: 5px; */
        }
        .box .box-content{
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            color: #fff;
            text-align: center;
            padding: 20% 20px;
            background: rgba(0,0,0,0.6);
            transform: rotate(-90deg);
            transform-origin: left top 0;
            transition: all 0.50s ease 0s;
        }
        .box .title{
            display: inline-block;
            font-size: 22px;
            color: #fff;
            margin: 0 0 15px 0;
            position: relative;
            transform: rotate(180deg);
            transform-origin: right top 0;
            transition: all .3s ease-in-out 0.2s;
        }
        .box .post{
            display: block;
            font-size: 18px;
            margin-bottom: 15px;
            transform: rotate(180deg);
            transform-origin: right top 0;
            transition: all .3s ease-in-out 0.4s;
        }
        .box .description{
            font-size: 15px;
            margin-bottom: 20px;
            padding: 0 20px;
            transform: rotate(180deg);
            transform-origin: right top 0;
            transition: all .3s ease-in-out 0.6s;
        }
        .box .read{
            font-size: 20px;
            font-weight: bold;
            color: #fff;
            display: block;
            letter-spacing:2px;
            text-transform: uppercase;
            transform: rotate(180deg);
            transform-origin: right top 0;
            transition: all 0.3s ease-in-out 0.8s;
        }
        .box .read:hover{
            color: #e8802e;
            text-decoration: none;
        }
        .box:hover .box-content,
        .box:hover .title,
        .box:hover .post,
        .box:hover .description,
        .box:hover .read {
            transform:rotate(0deg);
        }
        @media screen and (max-width: 1020px){
            .box{ margin-bottom:20px; }
        }
        @media screen and (max-width: 359px){
            .box .box-content{ padding: 10% 20px; }
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
                            <li><a href="/introduction-1.jsp">专业介绍</a></li>
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
    <!--                    主体-->
    <div class="demo">
        <div class="container mt30">
            <div class="row">
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/3/66/8F/FF5379F67BB6AF08CD4060548C4_E26124F3_15E9.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">苏健民</h3>
                            <span class="post">教授</span>
                            <p class="description">
                                硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。
                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/9/B1/77/701BF5F0EC1BAE6C9AC60044D6D_5F4504C7_77C0.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">李莉</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。		                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1600.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/2/C9/F1/DF40CF2463E80750001BF292370_EDCA56D9_29BA.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">张锡英</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                硕士生导师。主要研究方向：现代信息技术及网络应用，数据库技术、图像检索。
                                <a href="https://icec.nefu.edu.cn/info/1024/1602.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/0/13/A7/E674AC69D2A77D3F4AAE70A54B5_3E40B0CF_8C3E.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">王波</h3>
                            <span class="post">讲师</span>
                            <p class="description">
                                主要研究方向：软件工程，遥感和林业信息。		      </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1606.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/3/66/8F/FF5379F67BB6AF08CD4060548C4_E26124F3_15E9.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">苏健民</h3>
                            <span class="post">教授</span>
                            <p class="description">
                                硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。
                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/9/B1/77/701BF5F0EC1BAE6C9AC60044D6D_5F4504C7_77C0.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">李莉</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。		                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1600.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/2/C9/F1/DF40CF2463E80750001BF292370_EDCA56D9_29BA.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">张锡英</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                硕士生导师。主要研究方向：现代信息技术及网络应用，数据库技术、图像检索。
                                <a href="https://icec.nefu.edu.cn/info/1024/1602.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/0/13/A7/E674AC69D2A77D3F4AAE70A54B5_3E40B0CF_8C3E.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">王波</h3>
                            <span class="post">讲师</span>
                            <p class="description">
                                主要研究方向：软件工程，遥感和林业信息。		      </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1606.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/3/66/8F/FF5379F67BB6AF08CD4060548C4_E26124F3_15E9.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">苏健民</h3>
                            <span class="post">教授</span>
                            <p class="description">
                                硕士生导师，软件工程一级学科带头人，省计算机学会嵌入式专委会委员。主要研究方向：自动控制、信号与信息处理。
                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1598.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/9/B1/77/701BF5F0EC1BAE6C9AC60044D6D_5F4504C7_77C0.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">李莉</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。		                            </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1600.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/2/C9/F1/DF40CF2463E80750001BF292370_EDCA56D9_29BA.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">张锡英</h3>
                            <span class="post">副教授</span>
                            <p class="description">
                                硕士生导师。主要研究方向：现代信息技术及网络应用，数据库技术、图像检索。
                                <a href="https://icec.nefu.edu.cn/info/1024/1602.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="box">
                        <img src="https://icec.nefu.edu.cn/__local/0/13/A7/E674AC69D2A77D3F4AAE70A54B5_3E40B0CF_8C3E.jpg?e=.jpg" alt=""/>
                        <div class="box-content">
                            <h3 class="title">王波</h3>
                            <span class="post">讲师</span>
                            <p class="description">
                                主要研究方向：软件工程，遥感和林业信息。		      </p>
                            <a href="https://icec.nefu.edu.cn/info/1024/1606.htm" class="read">read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

