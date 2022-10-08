<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/28
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
    <%
        String userName = request.getParameter("userName");
    %>
        <h2>您好！<%=userName%>登录成功</h2>
</body>
</html>
