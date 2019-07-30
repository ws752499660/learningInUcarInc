<%@ page import="java.util.List" %>
<%@ page import="entity.Comment" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/30
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>评论列表页-Hanabi-BBS</title>
</head>
<body>
<%
    List<Comment> commentList=(List) session.getAttribute("commentList");
%>
<h1>花火BBS</h1>
<h2>评论列表</h2>
<table>
<%
    if(!commentList.isEmpty()) {
%>
    <table border="1">
        <tr>
            <th>标题</th>
            <th>内容</th>
            <th>发布时间</th>
            <th>最后编辑时间</th>
            <th>本条评论ID</th>
            <th>用户ID</th>
            <th>操作</th>
        </tr>
        <%
        for(int i=0;i<commentList.size();i++){
        %>
        <tr>
            <td><% out.print(commentList.get(i).getTitle()); %></td>
            <td><% out.print(commentList.get(i).getDetail()); %></td>
            <td><% out.print(commentList.get(i).getCreateTime()); %></td>
            <td><% out.print(commentList.get(i).getEditTime()); %></td>
            <td><% out.print(commentList.get(i).getId()); %></td>
            <td><% out.print(commentList.get(i).getUserId()); %></td>
            <td>
                <a href="deleteComment?commentId=<%= commentList.get(i).getId()%>">删除</a>
                <a href="editComment?commentId=<%= commentList.get(i).getId()%>">修改</a>
            </td>
        </tr>
        <% } %>
    </table>
<%
    }
%>
</table>
</body>
</html>
