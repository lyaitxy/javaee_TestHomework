<%--
  Created by IntelliJ IDEA.
  User: ����
  Date: 2022/8/31
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
  <head>
    <title>ʵ��һ</title>
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
                name = "����δ��д";
            }
            if (!passwd.equals("")) {
                passwd = "����δ��д";
            }
        %>

    ���ã� <%=name%> <br>
    ���������ǣ�<%=passwd%> <br>
    �����Ա��ǣ�<%=sex%> <br>
    ���İ����ǣ�<% for (String s : hobby) {
            out.print(s+" ");
        } %> <br>
    ���������ǣ�<%=type%> <br>
    �������ҽ����ǣ�<%=selfIntroduction%>

  </body>
</html>
