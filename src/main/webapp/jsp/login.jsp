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
            background-image: url("${pageContext.request.contextPath}/images/lg_bg.jpg");
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

        #container .registerLink{
            margin-top: 30px;
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

        /*当鼠标放到文本框时，提示文本的样式*/
        .import_prompt {
            border: solid 1px #ffcd00;
            background-color: #ffffda;
            padding-left: 5px;
            padding-right: 5px;
            line-height: 20px;
        }

        /*当文本框内容不符合要求时，提示文本的样式*/
        .error_prompt {
            border: solid 1px #ff3300;
            background-color: #fff2e5;
            /*background-image: url(../images/li_err.gif);*/
            /*background-repeat: no-repeat;*/
            background-position: 5px 2px;
            padding: 2px 5px 0px 25px;
            line-height: 20px;
        }

        /*当文本框内容输入正确时，提示文本的样式*/
        .ok_prompt {
            border: solid 1px #01be00;
            background-color: #e6fee4;
            /*background-image: url(../images/li_ok.gif);
            background-repeat: no-repeat;*/
            background-position: 5px 2px;
            padding: 2px 5px 0px 25px;
            line-height: 20px;
        }
    </style>
</head>

<body id="mybody">

<form name="input" action="user/login" method="post" onsubmit="return checkForm()">
    <div id="container" align="center">
        <div class="titlePan">
            Login Blog
        </div>
        <div class="lgPane">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td><input class="input-text" type="text" name="username" id="username" onfocus="userNameFocus()"
                               onblur="userNameBlur()"></td>
                    <td>
                        <div id="usernameCK"></div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input class="input-text" type="password" name="userpassword" id="password" ,
                               onfocus="passwordFocus()" onblur="passwordBlur()"></td>
                    <td>
                        <div id="passwordCK"></div>
                    </td>
                </tr>
            </table>
        </div>

        <div class="btnDiv" align="center">
            <button class="button button1" type="submit">登陆</button>
            <button class="button button1" type="reset" name="reset">重置</button>
        </div>

        <div class="registerLink">没有账号？<a href="${pageContext.request.contextPath}/jsp/register.jsp">注册</a> </div>
    </div>
</form>
<%--<div id="canvasContainer" align="center">
    <canvas id="myCanvas" width="720" height="400" style="border:1px solid #000000;">
        你的浏览器不支持HTML5 canvas！
    </canvas>
</div>--%>
<script>
    function $(idName) {
        return document.getElementById(idName);
    }
    var body = $("mybody");

    body.onclick = function () {
        var r = parseInt(Math.random() * 255);
        var g = parseInt(Math.random() * 255);
        var b = parseInt(Math.random() * 255);
        var a = Math.random();
        body.style.backgroundColor = 'rgba(' + r + ',' + g + ',' + b + ',' + a + ')';
    }

    /*验证用户名*/
    function userNameFocus() {
        var userNameId = $("usernameCK");
        userNameId.className = "import_prompt";
        userNameId.innerHTML = "";
    }


    function userNameBlur() {
        var userName = $("username");
        var userNameId = $("usernameCK");
        if (userName.value == "") {
            userNameId.className = "error_prompt";
            userNameId.innerHTML = "用户名不能为空！";
            return false;
        }
        return true;
    }

    /*验证密码*/
    function passwordFocus() {
        var passwordId = $("passwordCK");
        passwordId.className = "import_prompt";
        passwordId.innerHTML = "";
    }

    function passwordBlur() {
        var password = $("password");
        var passwordId = $("passwordCK");
        if (password.value == "") {
            passwordId.className = "error_prompt";
            passwordId.innerHTML = "密码不能为空！";
            return false;
        }
        return true;
    }

    /*表单提交时验证表单内容输入的有效性*/
    function checkForm() {
        var flagUserName = userNameBlur();
        var flagPassword = passwordBlur();

        if (flagUserName && flagPassword) {
            return true;
        }
        else {
            return false;
        }
    }

</script>
</body>
</html>
