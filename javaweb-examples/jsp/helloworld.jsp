<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>helloWorld</title>
</head>
<body>
    Hello World!<br/>
    <%
        out.println("Your IP address is " + request.getRemoteAddr());
    %>
    <%! int day=3; %>
    <% if (day>2) { %>
        <p>hhhh</p>
    <% } else { %>
        <p>hwhwhwhwhw</p>
    <% } %>

</body>
</html>