<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/25
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物——miniMall</title>
</head>
<body>
<h1>Mini Mall</h1>
<h2>购物界面</h2>
<p>
    欢迎您！
    <%
        HttpSession shoppingSession=request.getSession();
        String userName=(String) shoppingSession.getAttribute("userName");
        out.print(userName);
    %>
</p>
<p>
    <a href="LogOut">注销</a>
    <a href="cart.jsp">查看购物车</a>
</p>
<form method="post" action="AddGoods">
    <table>
        <tr>
            <td>请输入你想购买的商品</td>
            <td>
                <input type="text" name="goodsName">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="添加至购物车">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
