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
    <title>评论编辑页-Hanabi-BBS</title>
</head>
<body>
<h1>花火BBS</h1>
<h2>新建/编辑 评论</h2>
<form action="editcomment" method="post">
    <table>
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
                <input type="text" name="title" value=<%= comment.getTitle()%>>
                <%
                    }
                    else {
                        session.setAttribute("isEdit",false);
                %>
                <input type="text" name="title">
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
                <input type="input" name="detail" value=<%= comment.getDetail()%>>
                <%
                }else {
                %>
                <input type="input" name="detail">
                <%
                }
                %>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
<a href="/CommentGetter">返回</a>
</body>
</html>
