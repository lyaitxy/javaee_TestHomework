<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/21
  Time: 14:58
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
        String fail1 = "用户名或者密码为空";
        String fail2 = "用户名或者密码错误";
        if (userName.equals("") || password.equals("")) {
    %>
        <jsp:forward page="dengLuFail.jsp">
            <jsp:param name="fail1" value="<%=fail1%>"/>
        </jsp:forward>
    <%
        } else if (userName.equals(application.getAttribute("userName")) &&
            password.equals(application.getAttribute("password"))) {
    %>
        <jsp:forward page="dengLuSuccess.jsp">
            <jsp:param name="userName" value="<%=userName%>"/>
        </jsp:forward>
    <%
        } else {
    %>
        <jsp:forward page="dengLuFail.jsp">
            <jsp:param name="fail2" value="<%=fail2%>"/>
        </jsp:forward>
    <%
        }
    %>
</body>
</html>
