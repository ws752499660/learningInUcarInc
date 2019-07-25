<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/25
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物车——miniMall</title>
</head>
<body>
<h1>Mini Mall</h1>
<h2>购物车</h2>
<p>
    欢迎您！
    <%
        HttpSession cartSession=request.getSession();
        String userName=(String) cartSession.getAttribute("userName");
        out.print(userName);
    %>
</p>
<p>
    <a href="LogOut">注销</a>
    <a href="shopping.jsp">返回购物页面</a>
</p>


<%
    List goodsList=(List)cartSession.getAttribute("goodsList");
    if(goodsList!=null){
        %>
    <table border="1">
        <tr>
            <th>选购的商品</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${sessionScope.goodsList}" var="goods" varStatus="status">
                <tr>
                    <th><c:out value="${goods}"/></th>
                    <th>
                        <a href="RemoveGoods?goodsIndex=${status.index}">删除</a>
                    </th>
                </tr>
        </c:forEach>
    </table>
<%
    }
    else{
%>
        <table border="1">
        <tr>
            <th>选购的商品</th>
            <th>操作</th>
        </tr>
<%
    }
%>
</body>
</html>
