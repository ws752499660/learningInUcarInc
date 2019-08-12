<%@ page import="hanabiMVC.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/31
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>用户信息详情页-Hanabi-BBS</title>
</head>
<body>
<div style="position: relative;text-align: center;">
    <h1 class="mdui-color-light-blue-900">花火BBS</h1>
    <h2>用户信息详情</h2>
    <%
        User user=(User)session.getAttribute("userForProfile");
    %>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
    <form method="post" action="/userProfileEditor">
        <table class="mdui-table">
            <tr>
                <td>用户ID：</td>
                <td><%=user.getId()%></td>
            </tr>
            <tr>
                <td>用户名：</td>
                <td>
                    <input type="text" class="mdui-textfield-input" value="<%=user.getUserName()%>" name="userName">
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <input type="password" class="mdui-textfield-input" value="" name="passWord">
                </td>
            </tr>
            <tr>
                <td>Email：</td>
                <td>
                    <input type="text" class="mdui-textfield-input" value="<%=user.getEmail()%>" name="email">
                </td>
            </tr>
            </tr>
            <tr>
                <td>手机号码：</td>
                <td>
                    <input type="text" class="mdui-textfield-input" value="<%=user.getPhoneNum()%>" name="phoneNum">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" class="mdui-btn mdui-ripple"  value="提交">
                </td>
            </tr>
        </table>
    </form>
    </div>

    <div style="position: relative; top:20px;">
            <a href="/UserGetter" class="mdui-btn mdui-ripple">返回</a>
    </div>
</div>

<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>
</body>
</html>
