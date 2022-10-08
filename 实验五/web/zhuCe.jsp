<%--
  Created by IntelliJ IDEA.
  User: 李阳
  Date: 2022/9/14
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zhuCe</title>
</head>
<body>
    <form action="./singIn/treatZhuCe.jsp" method="post">
        <table>
            <tr>
            <label for="userName"></label>
                <td>用户名：</td>
                <td><input type="text" placeholder="请输入用户名" id="userName" name="userName"> <br></td>
            </tr>
            <tr>
            <label for="password"></label>
                <td>密码：</td>
                <td><input type="password" placeholder="请输入密码" id="password" name="password"> <br></td>
            </tr>
            <tr>
            <label for="isPassword"></label>
                <td>确认密码：</td>
                <td><input type="password" placeholder="请输入密码" name="isPassword" id="isPassword"> <br></td>
            </tr>
        </table>
        <input type="submit" value="确认">&nbsp;&nbsp;
        <input type="reset" value="重设">
    </form>
</body>
</html>
