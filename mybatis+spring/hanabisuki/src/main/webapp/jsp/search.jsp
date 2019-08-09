<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Comment" %>
<%--
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
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>搜索页-Hanabi-BBS</title>
</head>
<body>
<div style="position: relative;text-align: center;">
    <h1 class="mdui-color-light-blue-900">花火BBS</h1>
    <h2>用户发言搜索</h2>
    <div style="width: 400px;margin: 0 auto">
        <form action="/searchByUser" method="post" >
        <div class="mdui-textfield mdui-textfield-floating-label">
                <label class="mdui-textfield-label">用户ID</label>
                <input class="mdui-textfield-input" type="text" name="commentUserId"/>
        </div>
        <input type="submit" class="mdui-btn mdui-ripple" value="搜索">
        </form>
    </div>
    <%
        List<Comment> commentList=(List)session.getAttribute("commentListByUser");
        if(commentList!=null){
    %>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
    <table class="mdui-table">
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
            <td><% out.print(commentList.get(i).getCommentUserId()); %></td>
        </tr>
        <% } %>
    </table>
    </div>
    <%
        }
    %>
    <div style="position: relative; top:20px;">
            <a href="/CommentGetter" class="mdui-btn mdui-ripple margin-bottom: 40px">返回</a>
    </div>
</div>
<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>
</body>
</html>