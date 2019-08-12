
<%@ page import="java.util.List" %>
<%@ page import="hanabiMVC.entity.User" %>
<%@ page import="hanabiMVC.service.impl.Security" %>
<%@ page import="hanabiMVC.service.UserGroupService" %>
<%@ page import="hanabiMVC.service.impl.UserGroupServiceImpl" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/31
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>用户信息查看页-Hanabi-BBS</title>
</head>
<body>
<div style="position: relative;text-align: center;">
    
    <h1 class="mdui-color-light-blue-900">花火BBS</h1>
    <h2>用户信息查看</h2>
    <h3 style="color: red">
        <% if(session.getAttribute("userInfoWarning")!=null){
            out.print(session.getAttribute("userInfoWarning"));
            session.setAttribute("userInfoWarning",null);
        }
        %>
    </h3>
    <div class="mdui-table-fluid" style="width: 1000px;margin: 0 auto">
        <table class="mdui-table mdui-table-hoverable">
            <tr>
                <th>用户ID</th>
                <th>用户名</th>
                <th>发言条数</th>
                <th>电子邮件</th>
                <th>电话号码</th>
                <th>用户组别</th>
                <th>用户角色</th>
                <th>操作</th>
            </tr>
            <%

                UserGroupService userGroupService=(UserGroupService)session.getAttribute("userGroupService");
                List<User> userList=(List)session.getAttribute("userList");
                for(int i=0;i<userList.size();i++){
            %>
                <tr>
                    <td><%=userList.get(i).getId()%></td>
                    <td><%=userList.get(i).getUserName()%></td>
                    <td><%=userList.get(i).getCommentCounts()%></td>
                    <td><%=userList.get(i).getEmail()%></td>
                    <td><%=userList.get(i).getPhoneNum()%></td>
                    <td><%=userGroupService.getGroupNameById(userList.get(i).getGroupId())%></td>
                    <td><%
                        switch (userList.get(i).getType()){
                            case "AU":{
                                out.print("超级管理员");
                                break;
                            }
                            case "BU":{
                                out.print("组管理员");
                                break;
                            }
                            case "CU":{
                                out.print("普通用户");
                                break;
                            }
                            case "BAN":{
                                out.print("封禁");
                                break;
                            }
                            default:{
                                out.print("");
                            }
                        }%>
                    </td>
                    <td>
                        <a class="mdui-btn mdui-ripple" href="/userProfileProducer?userId=<%=String.valueOf(userList.get(i).getId())%>">修改</a>
                    </td>
                </tr>
            <%
                }
                session.setAttribute("userGroupService",null);
            %>
        </table>
    </div>
    <div style="position: relative; top:20px;">
        <a href="/CommentGetter" class="mdui-btn mdui-ripple">返回</a>
    </div>

</div>
<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>
</body>
</html>
