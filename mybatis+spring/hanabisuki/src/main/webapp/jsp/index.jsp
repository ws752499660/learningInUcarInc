<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.css" rel="stylesheet">
    <title>Hanabi-BBS</title>
</head>
<body>
<div id="app">
    <div style="position: relative;text-align: center;top: 100px;">
        <h1>欢迎使用花火BBS</h1>
        <h2>请登录</h2>
    </div>
    <div style="position: relative;
            margin: 0 auto;
            top: 110px;
            width: 500px;">
        <form action="/Login" method="POST">
            <div class="mdui-textfield mdui-textfield-floating-label">
                    <label class="mdui-textfield-label">用户ID</label>
                    <input class="mdui-textfield-input" type="text" name="id"/>
            </div>
            <div class="mdui-textfield mdui-textfield-floating-label">
                <label class="mdui-textfield-label">密码</label>
                <input class="mdui-textfield-input" type="password" name="passWord"/>
            </div>
            <input type="submit" 
            class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent"
            style="display:block;
                    margin:0 auto;
                    position: relative;
                    top: 10px;
                    background: #66ccff;
                    color: #ffffff;
                    font-weight: bold"
            value="登录">
            <!-- <button
                @click="submit" 
                class="mdui-btn mdui-btn-raised mdui-ripple mdui-color-theme-accent"
                style="display:block;
                        margin:0 auto;
                        position: relative;
                        top: 10px;
                        background: #66ccff;
                        color: #ffffff;
                        font-weight: bold">
                登录
            </button> -->
        </form>
    </div>
</div>
<%
    session.setAttribute("LoginUser",null);
%>
<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.js"></script>

<!-- <script src="https://cdn.bootcss.com/vue/2.6.10/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdn.bootcss.com/blueimp-md5/2.11.0/js/md5.min.js"></script>
<script>
    var vue=new Vue({
        el:"#app",
        data:{
            id:"",
            passWord:""
        },
        methods: {
            submit:function(){
                this.passWord=md5(this.passWord);
                console.log(this.passWord+" "+this.id);
                axios.post("/Login","id="+this.id+"&passWord="+this.passWord)
                    .then(function (response) {
                        console.log("hi~");
                        console.log(response);
                    });
            }
        },
    })
</script> -->
</body>
</html>
