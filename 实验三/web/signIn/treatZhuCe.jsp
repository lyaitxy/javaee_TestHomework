<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/14
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理注册</title>
</head>
<body>
    <%
        String name = request.getParameter("userName");
        String passwd = request.getParameter("password");
        String isPasswd = request.getParameter("isPassword");
        String fail1 = "用户名或者密码为空";
        String fail2 = "密码和确认密码不一致";
        if (name.equals("") || passwd.equals("")) {
    %>
            <jsp:forward page="zhuCeFail.jsp">
                <jsp:param name="fail1" value="<%=fail1%>"/>
            </jsp:forward>
    <%
        } else if (!passwd.equals(isPasswd)) {
    %>
            <jsp:forward page="zhuCeFail.jsp">
                <jsp:param name="fail2" value="<%=fail2%>"/>
            </jsp:forward>
    <%
        } else {
    %>
            <jsp:forward page="zhuCeSuccess.jsp">
                <jsp:param name="userName" value="<%=name%>"/>
            </jsp:forward>
    <%
        }
    %>
</body>
</html>
