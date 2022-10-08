<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/14
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登录</title>
</head>
<body>
    <%
        String name = request.getParameter("userName");
        String passwd = request.getParameter("password");
        if (name.equals("") || passwd.equals("")) {
    %>
        <h2>用户名或者密码为空！</h2>
    <%
        } else if (name.equals("李阳") && passwd.equals("20202680")) {
    %>
        <h2>您好！<%=name%>登录成功</h2>
    <%
        } else {
    %>
        <h2>用户名或者密码错误！</h2>
    <%
        }
    %>
</body>
</html>
