<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>欢迎光临miniMall</title>
</head>
<body>
<h1>Mini Mall</h1>
<h2>请登录</h2>
<form method="post" action="Login">
    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <input type="text" name="userName" >
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="登录">
            </td>
        </tr>
    </table>
</form>
<p>
    <%
        HttpSession sessionIndex=request.getSession();
        String warning=(String) sessionIndex.getAttribute("warning");
        if(warning!=null){
            out.print(warning);
            session.setAttribute("warning",null);
        }
    %>
</p>
</body>
</html>
