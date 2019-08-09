<%@ page import="tk.quan9.javaweb.hanabisuki.entity.User" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.UserGroup" %>
<%@ page import="java.util.List" %>
<%@ page import="tk.quan9.javaweb.hanabisuki.entity.Role" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/8
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>权限控制页-Hanabi-BBS</title>
</head>
<body>
<div style="position: relative;text-align: center;">
    <h1 class="mdui-color-light-blue-900">花火BBS</h1>
    <h2>权限控制页</h2>
    <h3 style="color: red">
        <% if(session.getAttribute("rsWarning")!=null){
            out.print(session.getAttribute("rsWarning"));
            session.setAttribute("rsWarning",null);
        }
        %>
    </h3>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
        <h4>用户组别调整</h4>
        <form action="/changeGroup" method="post">
        <table class="mdui-table">
            <tr>
                <td>用户id：</td>
                <td>
                    <input type="text" class="mdui-textfield-input" name="userId"/>
                </td>
            </tr>
            <tr>
                <td>新组别：</td>
                <td>
                    <select class="mdui-select" name="newGroupId">
                        <%
                            List<UserGroup> groupList=(List)session.getAttribute("groupList");
                            for(UserGroup group:groupList){
                        %>
                        <option value=<%=group.getId()%>> <%=group.getGroupName()%> </option>
                        <%
                            }
                        %>
                    </select>
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

    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto;margin-top: 20px;">
        <h4>角色权限调整</h4>
        <form action="/changeRole" method="post">
            <table class="mdui-table">
                <tr>
                    <td>用户id：</td>
                    <td>
                        <input type="text" class="mdui-textfield-input" name="userId"/>
                    </td>
                </tr>
                <tr>
                    <td>新角色：</td>
                    <td>
                        <select class="mdui-select" name="roleName">
                            <%
                                List<Role> roleList=(List)session.getAttribute("roleList");
                                for(Role role:roleList){
                            %>
                            <option value=<%=role.getRoleName()%>> <%=role.getRoleName()%> </option>
                            <%
                                }
                            %>
                        </select>
                        (AU-超级管理员，BU-组管理员，CU-普通用户，BAN-封禁)
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
