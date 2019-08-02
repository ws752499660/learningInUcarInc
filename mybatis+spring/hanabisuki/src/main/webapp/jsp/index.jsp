<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Hanabi-BBS</title>
</head>
<body>
<h1>欢迎使用花火BBS</h1>
<h2>请登录</h2>
<form method="post" action="Login">
    <table >
        <tr>
            <td>用户ID：</td>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" name="passWord">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="登录">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
