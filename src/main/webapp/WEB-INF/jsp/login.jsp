<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/5/9
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BLog login</title>
    <style>
        body {
            background-image: url("${pageContext.request.contextPath}/img/lg_bg.jpg");
            background-size: 100% 100%;
        }

        #container {
            position: absolute;
            left: 40%;
            top: 20%;

            /*animation-name: myfirst;
            animation-duration: 10s;
            animation-timing-function: linear;
            animation-delay: 3s;
            animation-iteration-count: infinite;
            animation-direction: alternate;
            animation-play-state: running;*/

            background-color: rgba(92, 150, 229, 0.6);
            width: 350px;
            height: 350px;
            border-radius: 15px;
            box-shadow: 10px 10px 5px rgba(0, 0, 0, 0.1);
        }

        /*动画内容*/
        @keyframes myfirst {
            0% {
                background: rgba(255, 0, 0, 0.45);
                left: 300px;
                top: 0px;
            }
            25% {
                background: rgba(255, 255, 0, 0.45);
                left: 600px;
                top: 0px;
            }
            50% {
                background: rgba(0, 0, 255, 0.45);
                left: 600px;
                top: 300px;
            }
            75% {
                background: rgba(0, 128, 0, 0.45);
                left: 300px;
                top: 300px;
            }
            100% {
                background: rgba(255, 0, 0, 0.45);
                left: 300px;
                top: 0px;
            }
        }

        #container .titlePan {
            margin-top: 20px;
            width: 350px;
            height: 40px;
            font-size: 25px;
            font-family: 黑体;
            text-align: center;
        }

        #container .lgPane {
            margin-top: 30px;
            padding: 20px;
        }

        #container .btnDiv {
            margin: 5px 7px;
        }

        .button {
            background-color: #2580dd;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .button1 {
            border-radius: 8px;
        }

        .input-text {
            border: 1px solid #C3CED9;
            border-radius: 5px 5px 5px 5px;
            font-size: 14px;
            height: 31px;
            line-height: 31px;
            margin-right: 10px;
            padding: 0;
            width: auto;
        }
    </style>
</head>

<body id="mybody">

<form name="input" action="user/login" method="get">
    <div id="container" align="center">
        <div class="titlePan">
            Login Blog
        </div>
        <div class="lgPane">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input class="input-text" type="text" name="username"></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input class="input-text" type="password" name="userpassword"></td>
                </tr>
            </table>
        </div>

        <div class="btnDiv" align="center">
            <button class="button button1" type="submit">登陆</button>
            <button class="button button1" type="reset" name="reset">重置</button>
        </div>
    </div>
</form>
<%--<div id="canvasContainer" align="center">
    <canvas id="myCanvas" width="720" height="400" style="border:1px solid #000000;">
        你的浏览器不支持HTML5 canvas！
    </canvas>
</div>--%>
<script>
    var container = document.getElementById('container');

    var body = document.getElementById('mybody');

    container.onclick = function () {

    };

    body.onclick = function () {
        var r = parseInt(Math.random()*255);
        var g = parseInt(Math.random()*255);
        var b = parseInt(Math.random()*255);
        var a = Math.random();
        body.style.backgroundColor = 'rgba('+r + ',' + g + ',' + b + ',' + a+')';
    }
</script>
</body>
</html>
