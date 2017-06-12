<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/5/22
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog register</title>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script>
        function $(id) {
            return document.getElementById(id);
        }

        //用户名
        function username_focus() {
            /*var username=$("username");*/
            $("usernameCK").innerHTML = "";
        }

        function username_blur() {
            var username = $("username");
            var usernameCK = $("usernameCK");
            if (username.value == "") {
                usernameCK.innerHTML = "请输入用户名";
                return false;
            }
            return true;
        }

        //密码
        function password_focus() {
            $("passwordCK").innerHTML = "";
        }
        function password_blur() {
            if ($("password").value == "") {
                $("passwordCK").innerHTML = "请输入密码！";
                return false;
            }
            return true;
        }

        //确认密码
        function password2_focus() {
            $("pswd_cfCK").innerHTML = "";
        }
        function password2_blur() {
            var password = $("password").value;
            var passwordConfirm = $("pswd").value;
            if (passwordConfirm == "") {
                $("pswd_cfCK").innerHTML = "请确认密码！";
                return false;
            } else if (password != passwordConfirm) {
                $("pswd_cfCK").innerHTML = "两次密码不一致！";
                return false;
            }
            return true;
        }

        //年龄
        function age_focus() {
            var z = /^[0-9]*$/;
            if (!z.test($("age").value))
                $("ageCK").innerHTML = "年龄只能为数字！";
            else
                $("ageCK").innerHTML = "";
        }
        function age_blur() {
            var age = $("age").value;
            var z = /^[0-9]*$/;
            if (z.test(age))
                return true;
            else {
                $("ageCK").innerHTML = "年龄只能为数字！";
                return false;
            }
        }

        function submitConfirm() {
            var usernameFlag = username_blur();
            var passwordFlag = password2_blur();
            var ageFlag = age_blur();
            if (usernameFlag && passwordFlag && ageFlag)
                return true;
            return false;
        }

        //图片预览
        /**
         * 从 file 域获取 本地图片 url
         */
        function getFileUrl(sourceId) {
            var url;
            if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
                url = $(sourceId).value;
            } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
                url = window.URL.createObjectURL($(sourceId).files.item(0));
            } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
                url = window.URL.createObjectURL($(sourceId).files.item(0));
            }
            return url;
        }

        /**
         * 将本地图片 显示到浏览器上
         */
        function preImg(sourceId, targetId) {
            var url = getFileUrl(sourceId);
            var imgPre = $(targetId);
            imgPre.src = url;
        }

    </script>
</head>
<body>
<div align="center">
    <form name="input" action="${pageContext.request.contextPath}/user/register" method="post"
          onsubmit="return submitConfirm()">
        <table>
            <caption>用户注册</caption>
            <tr>
                <th></th>
                <th></th>
                <th width="200"></th>
            </tr>

            <tr>
                <td>*用户名：</td>
                <td><input type="text" id="username" name="username" onfocus="username_focus()"
                           onblur="username_blur()"></td>
                <td>
                    <div id="usernameCK"></div>
                </td>
            </tr>
            <tr>
                <td>*密码：</td>
                <td><input type="password" id="password" name="password" onfocus="password_focus()"
                           onblur="password_blur()"></td>
                <td>
                    <div id="passwordCK"></div>
                </td>
            </tr>
            <tr>
                <td>*确认密码：</td>
                <td><input type="password" id="pswd" name="confirm_password" onfocus="password2_focus()"
                           onblur="password2_blur()"></td>
                <td>
                    <div id="pswd_cfCK"></div>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <input name="sex" type="radio" value="男">男
                    <br><input name="sex" type="radio" value="女">女
                </td>
                <td></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" id="age" name="age" onfocus="age_focus()" onblur="age_blur()"></td>
                <td>
                    <div id="ageCK"></div>
                </td>
            </tr>
            <%--<tr>
                <td>头像：</td>
                <td>
                    <p>
                        <label>请选择一个图像文件：</label>
                        <br><input type="file" id="file_input" name="iconFile" onchange="preImg(this.id,'usericon')"/>
                    </p>
                    <div id="result">
                        <img id="usericon" src="" alt="用户图片" width="100" height="100"/>
                    </div>
                </td>
                <td></td>
            </tr>--%>
            <tr></tr>
            <tr>
                <td><input type="submit" value="提交"></td>
                <td></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
