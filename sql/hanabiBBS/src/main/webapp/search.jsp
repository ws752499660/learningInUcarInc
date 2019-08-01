<%@ page import="java.util.List" %>
<%@ page import="entity.Comment" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/1
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>搜索页-Hanabi-BBS</title>
</head>
<body>
<h1>花火BBS</h1>
<h2>用户发言搜索</h2>
<form action="searchByUser" method="post">
    <table>
        <tr>
            <td>用户id：</td>
            <td>
                <input type="text" name="userId">
            </td>
            <td>
                <input type="submit" value="搜索">
            </td>
        </tr>
    </table>
</form>
<%
    List<Comment> commentList=(List)session.getAttribute("commentListByUser");
    if(commentList!=null){
%>
<table border="1">
    <tr>
        <th>标题</th>
        <th>内容</th>
        <th>发布时间</th>
        <th>最后编辑时间</th>
        <th>本条评论ID</th>
        <th>用户ID</th>
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
    </tr>
    <% } %>
</table>
<%
    }
%>
<a href="CommentGetter">返回</a>
</body>
</html>