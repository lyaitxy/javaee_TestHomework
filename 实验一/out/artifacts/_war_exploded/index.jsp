<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/8/31
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
  <head>
    <title>实验一</title>
  </head>
  <body>
        <%
            String name = request.getParameter("name");
            String passwd = request.getParameter("password");
            String sex = request.getParameter("sex");
            String[] hobby = request.getParameterValues("hobby");
            String type = request.getParameter("type");
            String selfIntroduction = request.getParameter("self-introduction");
            if (!name.equals("")) {
                name = "姓名未填写";
            }
            if (!passwd.equals("")) {
                passwd = "密码未填写";
            }
        %>

    您好！ <%=name%> <br>
    您的密码是：<%=passwd%> <br>
    您的性别是：<%=sex%> <br>
    您的爱好是：<% for (String s : hobby) {
            out.print(s+" ");
        } %> <br>
    您的类型是：<%=type%> <br>
    您的自我介绍是：<%=selfIntroduction%>

  </body>
</html>
