<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/21
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登录</title>
</head>
<body>
    <%
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        if (userName.equals("") && password.equals("")) {
    %>
        <h2>用户名或者密码为空</h2>
    <%
        } else if (userName.equals(application.getAttribute("userName")) &&
         password.equals(application.getAttribute("password"))
        ){
    %>
        <h2>您好！<%=userName%>登录成功</h2>
    <%
        session.setAttribute("isLogin", true);
        } else {
    %>
        <h2>用户名或者密码错误</h2>
    <%
        }
    %>
</body>
</html>
