<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Comment" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/30
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>评论编辑页-Hanabi-BBS</title>
</head>
<body>
<div style="position: relative;text-align: center;">
    <h1 class="mdui-color-light-blue-900">花火BBS</h1>
    <h2>新建/编辑 评论</h2>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
        <form action="/editcomment" method="post">
            <table class="mdui-table">
                <tr>
                    <td>
                        标题：
                    </td>
                    <td>
                        <%
                            Comment comment=(Comment)session.getAttribute("commentToEdit");
                            if(comment!=null){
                                session.setAttribute("isEdit",true);
                        %>
                        <input type="text" class="mdui-textfield-input" name="title" value=<%= comment.getTitle()%>>
                        <%
                            }
                            else {
                                session.setAttribute("isEdit",false);
                        %>
                        <input type="text" class="mdui-textfield-input" name="title">
                        <% } %>
                    </td>
                </tr>
                <tr>
                    <td>
                        内容：
                    </td>
                    <td>
                    <%
                        if(comment!=null){
                    %>
                        <input type="input" class="mdui-textfield-input" name="detail" value=<%= comment.getDetail()%>>
                        <%
                        }else {
                        %>
                        <input type="input" class="mdui-textfield-input" name="detail">
                        <%
                        }
                        %>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" class="mdui-btn mdui-ripple" value="提交">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    
    <div style="position: relative; top:20px;">
            <a href="/CommentGetter" class="mdui-btn mdui-ripple">返回</a>
    </div>

</div>

<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>
</body>
</html>
