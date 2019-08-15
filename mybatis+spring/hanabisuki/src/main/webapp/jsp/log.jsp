<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Log" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/15
  Time: 13:33
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
    <h2>操作记录查询</h2>

    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
        <form action="/getLog" method="post">
            <table class="mdui-table">
                <tr>
                    <td>
                        操作类型：
                        <select class="mdui-select" name="type">
                            <option value="Insert">增加</option>
                            <option value="Delete">删除</option>
                            <option value="Update">修改</option>
                            <option value="Select">查询</option>
                        </select>
                    </td>
                    <td>
                        操作作用范围：
                        <select class="mdui-select" name="target">
                            <option value="Comment">评论表</option>
                            <option value="User">用户表</option>
                            <option value="Rights or Group">权限或用户组表</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" class="mdui-btn mdui-ripple" value="查询">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <%
        List<Log> logList=(List)session.getAttribute("logList");
        if(logList!=null){
    %>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto;margin-top: 20px;">
        <table class="mdui-table mdui-table-hoverable">
            <tr>
                <th>操作用户ID</th>
                <th>操作类型</th>
                <th>作用范围</th>
                <th>耗费时间（ms）</th>
                <th>操作时间</th>
                <th>操作结果</th>
            </tr>
            <%
                for(Log log:logList){
            %>
                <tr>
                    <td><%=log.getUserId()%></td>
                    <td><%=log.getType()%></td>
                    <td><%=log.getTarget()%></td>
                    <td><%=log.getSpendTime()%></td>
                    <td><%=log.getTime()%></td>
                    <td><%=log.getResult()%></td>
                </tr>
            <%
                }
            %>
        </table>
    </div>
    <%
        }
        session.setAttribute("logList",null);
    %>
    <div style="position: relative; top:20px;">
        <a href="/CommentGetter" class="mdui-btn mdui-ripple">返回</a>
    </div>
</div>
</body>
</html>
