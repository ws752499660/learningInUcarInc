<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Comment" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.User" %>
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
<div style="position: relative;text-align: center;">
<h1>花火BBS</h1>
<h2>欢迎你，<%
    User user=(User) session.getAttribute("LoginUser");
                out.print(user.getUserName());%></h2>
<h2>评论列表</h2>
</div>
<a href="CommentGetter">刷新</a>
<h3 style="color: red">
<% if(session.getAttribute("deleteFlag")!=null){ %>
    <% if((boolean)session.getAttribute("deleteFlag")){ %>
    <b>删除成功！</b>
    <% }else{ %>
    <b>删除失败！</b>

<%      }
        session.setAttribute("deleteFlag",null);
    }
%>
</h3>
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
            <td><% out.print(commentList.get(i).getCommentUserId()); %></td>
            <td>
                <a href="deleteComment?commentId=<%= commentList.get(i).getId()%>">删除</a>
                <a href="editcomment?commentId=<%= commentList.get(i).getId()%>">修改</a>
            </td>
        </tr>
        <% } %>
    </table>
<%
    }
%>
    <table>
        <tr>
            <td>页数：</td>
            <% for(int i=0;i<(int)session.getAttribute("pageListLength");i++){%>
                <td><a href="CommentGetter?commentPage=<%= i+1%>">[<%= i+1 %>] </a></td>
            <% } %>
        </tr>
    </table>
    <a href="/editcomment?commentId=new">新建评论</a>
    <br>
    <a href="/UserGetter">查看用户信息</a>
    <br>
    <a href="/redirectJsp/search">通过用户ID搜索发言</a>
    <br>
    <a href="/logout">退出</a>
</table>
</body>
</html>
