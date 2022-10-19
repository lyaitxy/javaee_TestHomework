package com.ly.HelloWorld.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

@WebServlet("/test07/zhuCeServlet")
public class TreatZhuCe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //连接数据库，设置所需变量
        Connection con = null;
        Statement ps = null;

        String sqUrl = "jdbc:mysql://localhost:3306/ly";
        String user = "root";
        String sqlPassword = "ly20030321";
        //得到Session对象
        HttpSession session = req.getSession();
        //设置跳转位置为zhuCeResult.jsp
        String url = "/zhuCeResult.jsp";
        //获取数据
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String isPassword = req.getParameter("isPassword");
        System.out.println("还没进行数据库操作"+userName + password + isPassword);
        //判断用户名或者密码是否为空
        if (userName.equals("") || password.equals("")) {

            req.setAttribute("fail", "用户名或者密码为空");
            req.getRequestDispatcher(url).forward(req, resp);
        } else if (!password.equals(isPassword)) {
            //判断密码是否一致
            req.setAttribute("fail", "密码与确认密码不一致");
            req.getRequestDispatcher(url).forward(req, resp);
        } else {
            //将注册信息存入数据库中
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(sqUrl, user, sqlPassword);
                ps = con.createStatement();
                int rs = ps.executeUpdate("insert into tb_user values(\""+userName+"\","+password+")");
                System.out.println(rs);
                if (rs == 1) {

                    req.setAttribute("msg", "您好！"+userName+ "注册成功");
                    req.getRequestDispatcher(url).forward(req, resp);
                }
            } catch (Exception e) {
                System.out.println("数据库连接失败");
                e.printStackTrace();
            } finally {
                try {

                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    System.out.println("关闭失败");
                }
            }
            req.getRequestDispatcher(url).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
