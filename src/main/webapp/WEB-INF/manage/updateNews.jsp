<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--新闻查询--%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新闻修改</title>
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
        .update-title {
            color: black;
            font-size: 1.5em;
        }
        .update {
            width: 600px;
            height: 100%;
            margin: 100px auto;
        }
    </style>
</head>

<body>
<div class="main">
    <div class="page-header">
        <h2>
            <img src="https://www.nefu.edu.cn/2019images/logo.png" alt="" /> 信息与计算机工程学院
            <em>软件工程</em>
        </h2>
    </div>

                <div class="update">
                    <p class="update-title">请对信息进行修改</p>
                    <form action="manage/updateNews" method="post">
                        new id:<input type="text" name="nid" value="${news.id}" hidden>${news.id}<br>
                        new title:<input type="text" name="title" value="${news.title}"><br>
                        new content:<input type="text" name="content" value="${news.content}"><br>
                        new author:<input type="text" name="author" value="${news.author}"><br>
                        <br>
                        <button type="btn btn-notify">提交</button>
                    </form>
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

