<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/14
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
<%
        String name = request.getParameter("userName");
%>
    <h2>
        您好！<%=name%>注册成功
    </h2>
</body>
</html>
