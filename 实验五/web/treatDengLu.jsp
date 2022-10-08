<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/28
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.ly.helloWorld.bean.UserBean" %>
<html>
<head>
    <title>处理登录</title>
</head>
<body>
    <%
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        if (userName.equals("") || password.equals("")) {
    %>
        <h2>用户名或者密码为空</h2>
    <%
        } else {
            UserBean user = (UserBean) application.getAttribute("user");
            if(userName.equals(user.getName()) && password.equals(user.getPassword())){
    %>
        <h2>您好！<%=userName%>登录成功</h2>
    <%
        session.setAttribute("user", user);
        } else {
    %>
        <h2>用户名或者密码错误</h2>
    <%
        }
        }
    %>
</body>
</html>
