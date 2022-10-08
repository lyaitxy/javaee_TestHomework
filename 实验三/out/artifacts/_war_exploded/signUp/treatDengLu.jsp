<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/14
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登录</title>
</head>
<body>
    <%
        String name = request.getParameter("userName");
        String passwd = request.getParameter("password");
        String fail1 = "用户名或者密码为空！";
        String fail2 = "用户名或者密码错误！";
        if (name.equals("") || passwd.equals("")) {
    %>
        <jsp:forward page="dengLuFail.jsp">
            <jsp:param name="fail1" value="<%=fail1%>"/>
        </jsp:forward>
    <%
        } else if (name.equals("李阳") && passwd.equals("20202680")) {
    %>
        <jsp:forward page="dengLuSuccess.jsp">
            <jsp:param name="userName" value="<%=name%>"/>
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
