
<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.User" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.service.impl.Security" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/31
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>用户信息查看页-Hanabi-BBS</title>
</head>
<body>
<h1>花火BBS</h1>
<h2>用户信息查看</h2>
<table border="1">
    <tr>
        <th>用户ID</th>
        <th>用户名</th>
        <th>发言条数</th>
        <th>电子邮件</th>
        <th>电话号码</th>
        <th>操作</th>
    </tr>
    <%
        List<User> userList=(List)session.getAttribute("userList");
        for(int i=0;i<userList.size();i++){
    %>
        <tr>
            <td><%=userList.get(i).getId()%></td>
            <td><%=userList.get(i).getUserName()%></td>
            <td><%=userList.get(i).getCommentCounts()%></td>
            <td><%=userList.get(i).getEmail()%></td>
            <td><%=userList.get(i).getPhoneNum()%></td>
            <td>
                <a href="userProfileProducer?userId=<%=String.valueOf(userList.get(i).getId())%>">修改</a>
            </td>
        </tr>
    <%
        }
    %>
</table>
<a href="/CommentGetter">返回</a>
</body>
</html>
