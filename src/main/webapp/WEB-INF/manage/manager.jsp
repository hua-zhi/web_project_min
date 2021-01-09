<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新闻管理</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/index.css"/>
    <style>
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
        .report {
            width: auto;
            margin: 100px auto;
            height: 100%;
        }
        thead {
            background-color: #358f74;
        }
        /*.report ul li {*/
        /*    list-style-type: circle;*/
        /*    color: #2aabd2;*/
        /*}*/
        ul {
            list-style: none;
        }

        table {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
        }

        table thead {
            background-color: #4caf50;
            color: white;
        }
        table th {
            background-color: #358f74;
        }
        table th, table td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;

        }

        a.btn {
            display: inline-block;
            background-color: #f44336;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
        }
        a.btn-add {
            width: 100%;
            text-align: center;
            background-color: rgb(116, 210, 170);
        }
    </style>
</head>

<body><div class="main">
    <div class="page-header">
        <h2>
            <img src="https://www.nefu.edu.cn/2019images/logo.png" alt="" /> 信息与计算机工程学院
            <em>软件工程</em>
        </h2>
    </div>
<%--    nav--%>
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
                <a href="manage/addNews" class="btn btn-add">添加新闻</a>
                <div class="report">
                        <table>
                            <thead>
                            <tr style="background-color: #004079;">
                                <th>#</th>
                                <th>标题</th>
                                <th>编辑人</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${news}" var="n">
                                <tr>
                                    <td>${n.id}</td>
                                    <td>${n.title}</td>
                                    <td>${n.author}</td>
                                    <td class="more"><a href="manage/getNewContent?nid=${n.id}" class="btn btn-notify">查看</a> <a href="manage/updateNews?nid=${n.id}" class="btn btn-modify">修改</a> <a href="manage/delNews?nid=${n.id}" class="btn">删除</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
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
</body>

</html>

