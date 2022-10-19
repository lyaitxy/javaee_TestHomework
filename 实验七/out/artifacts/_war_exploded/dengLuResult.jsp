
<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/10/12
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.ly.HelloWorld.Bean.UserBean" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录结果</title>
</head>
<body>
    <%
        response.setCharacterEncoding("UTF-8");
        String fail = (String) request.getAttribute("fail");
        UserBean user = (UserBean)session.getAttribute("user");
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
