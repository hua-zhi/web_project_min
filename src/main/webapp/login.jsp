<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/index.css" />
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
        .logining {
            width: 500px;
            margin: 100px auto;
        }
        .logining input{
            background-color: #cbefd1;
        }
        .logining button {
            background-color: #367f48;
            color: white;
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
    <div class="logining">
<form action="login" method="post">
    用户名：<input type="text" name="username"><br>
    密码：<input type="password" name="pwd"><br>
    <button type="submit">登录</button>
</form></div>
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
