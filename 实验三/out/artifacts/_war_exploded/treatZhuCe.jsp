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
    <title>处理注册</title>
</head>
<body>
    <%
        String name = request.getParameter("userName");
        String passwd = request.getParameter("password");
        String isPasswd = request.getParameter("isPassword");
        if (name.equals("") || passwd.equals("")) {
    %>
            <h2>提示：用户名或密码为空</h2>
    <%
        } else if (passwd != isPasswd) {
    %>
            <h2>提示：密码不一致</h2>
    <%
        } else {
    %>
            <h2>您好！<%=name%>注册成功</h2>
    <%
        }
    %>
</body>
</html>
