<%@ page import="tk.quan9.javaweb.hanabisuki.entity.User" %><%--
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
    <title>用户信息详情页-Hanabi-BBS</title>
</head>
<body>
<h1>花火BBS</h1>
<h2>用户信息详情</h2>
<%
    User user=(User)session.getAttribute("userForProfile");
%>
<form method="post" action="/userProfileEditor">
    <table border="1">
        <tr>
            <td>用户ID：</td>
            <td><%=user.getId()%></td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td>
                <input type="text" value="<%=user.getUserName()%>" name="userName">
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" value="" name="passWord">
            </td>
        </tr>
        <tr>
            <td>Email：</td>
            <td>
                <input type="text" value="<%=user.getEmail()%>" name="email">
            </td>
        </tr>
        </tr>
        <tr>
            <td>手机号码：</td>
            <td>
                <input type="text" value="<%=user.getPhoneNum()%>" name="phoneNum">
            </td>
        </tr>
    </table>
    <input type="submit" value="提交">
</form>
<a href="/UserGetter">返回</a>
</body>
</html>
