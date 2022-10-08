<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/21
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
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String isPassword = request.getParameter("isPassword");
        if (userName.equals("") && password.equals("")) {
    %>
        <h2>用户名或者密码为空</h2>
    <%
        } else if (!password.equals(isPassword)) {
    %>
        <h2>密码和确认密码不一样，请重新输入</h2>
    <%
        } else {
    %>
        <h2>您好！ <%=userName%>注册成功</h2>
    <%
        }
        application.setAttribute("userName", userName);
        application.setAttribute("password", password);
    %>
</body>
</html>
