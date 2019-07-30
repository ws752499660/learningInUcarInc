<%@ page import="entity.Comment" %><%--
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
    <title>评论修改页-Hanabi-BBS</title>
</head>
<body>
<h1>花火BBS</h1>
<h2>评论编辑</h2>
<form>
    <table>
        <tr>
            <td>
                标题：
            </td>
            <td>
                <%
                    Comment comment=(Comment)session.getAttribute("commentToEdit");
                    if(comment!=null){
                %>

                <%
                    }
                %>
            </td>
        </tr>
        <tr>
            <td>
                <textarea name="commentDetail"rows="3" cols="20">
                    <%
                        if(comment!=null){
                    %>
                    <%= comment.getDetail()%>
                    <%
                        }
                    %>
                </textarea>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
