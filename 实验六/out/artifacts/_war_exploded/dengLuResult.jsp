<%@ page import="com.ly.helloWorld.bean.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/10/5
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登录</title>
</head>
<body>
    <%
        String fail = (String) request.getAttribute("fail");
        UserBean user = (UserBean) session.getAttribute("user");
        if (fail != null) {
    %>
        <h2><%=fail%></h2>
    <%
        } else {
    %>
    <h2>您好！<%=user.getName()%>登录成功</h2>
    <%
        }
    %>
</body>
</html>
