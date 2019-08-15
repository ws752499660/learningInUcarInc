<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Comment" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.User" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.service.UserGroupService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>评论列表页-Hanabi-BBS</title>
</head>
<body>
<%
    List<Comment> commentList=(List) session.getAttribute("commentList");
%>
<div style="position: relative;text-align: center;">
<h1 class="mdui-color-light-blue-900">花火BBS</h1>
<h2>欢迎你，<%
    User user=(User) session.getAttribute("LoginUser");
                out.print(user.getUserName());%>
</h2>
<h4>
    您的用户组为
    <%
        out.print(session.getAttribute("UserGroupName"));
    %>，您是
    <%
        switch (user.getType()){
            case "AU":{
                out.print("超级管理员");
                break;
            }
            case "BU":{
                out.print("普通管理员");
                break;
            }
            case "CU":{
                out.print("普通用户");
                break;
            }
            default:out.print("普通用户");
        }
    %>
</h4>
<h2>评论列表</h2>

<a class="mdui-btn mdui-ripple " href="CommentGetter">刷新</a>
<a href="/newComment" class="mdui-btn mdui-ripple">新建评论</a>
<a href="/UserGetter" class="mdui-btn mdui-ripple">查看用户信息</a>
<a href="/redirectJsp/search" class="mdui-btn mdui-ripple">通过用户ID搜索发言</a>
<a href="/rightsControl"class="mdui-btn mdui-ripple">权限/组别控制</a>
<a href="/log"class="mdui-btn mdui-ripple">查看操作记录</a>


<h3 style="color: red">
<% if(session.getAttribute("commentWarning")!=null){
        out.print(session.getAttribute("commentWarning"));
        session.setAttribute("commentWarning",null);
    }
%>
</h3>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
        <%
            if(!commentList.isEmpty()) {
        %>
        <table class="mdui-table mdui-table-hoverable">
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
                    <a class="mdui-btn mdui-ripple" href="deleteComment?commentId=<%= commentList.get(i).getId()%>">删除</a>
                    
                    <a class="mdui-btn mdui-ripple" href="editcomment?commentId=<%= commentList.get(i).getId()%>">修改</a>
                </td>
            </tr>
            <% } %>
        </table>
        <%
            }
        %>
    </div>
    <div style="position: relative; top:10px;">
        <b>页数:</b>
        <% for(int i=0;i<(int)session.getAttribute("pageListLength");i++){%>
            <a class="mdui-btn mdui-btn-icon mdui-btn-dense mdui-color-theme-accent mdui-ripple" href="CommentGetter?commentPage=<%= i+1%>"><%= i+1 %> </a>
        <% } %>
    </div>
    <br>
    <a href="/logout" class="mdui-btn mdui-ripple mdui-color-grey-600" style="color: #fff;margin-bottom: 40px">退出</a>

</div>
<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>
</body>
</html>
