<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/21
  Time: 14:55
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
        String fail1 = "用户名或者密码为空";
        String fail2 = "密码与确认密码不一致";
        if (userName.equals("") || password.equals("")) {
    %>
        <jsp:forward page="zhuCeFail.jsp">
            <jsp:param name="fail1" value="<%=fail1%>"/>
        </jsp:forward>
    <%
        } else if (!password.equals(isPassword)) {
    %>
        <jsp:forward page="zhuCeFail.jsp">
            <jsp:param name="fail2" value="<%=fail2%>"/>
        </jsp:forward>
    <%
        } else {
            application.setAttribute("userName", userName);
            application.setAttribute("password", password);
    %>
        <jsp:forward page="zhuCeSuccess.jsp">
            <jsp:param name="userName" value="<%=userName%>"/>
        </jsp:forward>
    <%
        }
    %>


</body>
</html>
