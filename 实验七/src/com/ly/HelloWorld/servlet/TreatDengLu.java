package com.ly.HelloWorld.servlet;

import com.ly.HelloWorld.Bean.UserBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet("/test07/dengLuServlet")
public class TreatDengLu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置跳转位置
        String url = "/dengLuResult.jsp";
        //得到session对象
        HttpSession session = req.getSession(true);
        //获取表单数据
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        //判断用户名或者密码是否为空，如是就跳转给处理页面
        if (userName.equals("") || password.equals("")) {
            req.setAttribute("fail", "用户名或者密码为空");
            req.getRequestDispatcher(url).forward(req, resp);
        } else {
            //判断用户是否已经注册,在数据库中进行查找
            Connection con = null;
            Statement statement = null;
            ResultSet rs = null;
            String sqlUrl = "jdbc:mysql://localhost:3306/ly";
            String sqlUser = "root";
            String sqlPassword = "ly20030321";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(sqlUrl, sqlUser, sqlPassword);
                statement = con.createStatement();
                rs = statement.executeQuery("select name,password from tb_user where name=\""+userName+"\" and password=+"+password);
                if (rs.next()) {
                    UserBean user = new UserBean();
                    user.setName(rs.getString("name"));
                    user.setPassword(rs.getString("password"));
                    session.setAttribute("user", user);
                    req.getRequestDispatcher(url).forward(req, resp);
                } else {
                    req.setAttribute("fail", "用户名或者密码错误");
                    req.getRequestDispatcher(url).forward(req, resp);
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("驱动加载失败或者连接失败");
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (statement != null) {
                        statement.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (Exception e) {
                    System.out.println("关闭失败");
                }
            }

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
