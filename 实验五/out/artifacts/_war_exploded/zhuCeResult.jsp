<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/28
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册结果</title>
</head>
<body>
    <%
        String fail1 = request.getParameter("fail1");
        String fail2 = request.getParameter("fail2");
        if (fail1 == null) {
    %>
        <h2><%=fail2%></h2>
    <%
        } else {
    %>
        <h2><%=fail1%></h2>
    <%
        }
    %>
</body>
</html>
