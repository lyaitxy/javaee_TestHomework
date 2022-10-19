<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/10/12
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册结果</title>
</head>
<body>
    <%
        String fail = (String) request.getAttribute("fail");
        String msg = (String) request.getAttribute("msg");
        if(fail != null) {
    %>
        <h2><%=fail%></h2>
    <%
        } else if(msg!=null) {
    %>
        <h2><%=msg%></h2>
    <%
        }
    %>
</body>
</html>
