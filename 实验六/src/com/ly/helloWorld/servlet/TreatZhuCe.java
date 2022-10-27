package com.ly.helloWorld.servlet;

import com.ly.helloWorld.bean.UserBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/test06/zhuCeServlet")
public class TreatZhuCe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置跳转位置
        String url = "/zhuCeResult.jsp";
        RequestDispatcher rd = req.getRequestDispatcher(url);
        //获取数据
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String isPassword = req.getParameter("isPassword");
        //判断用户名或者密码是否为空
        if (userName.equals("") || password.equals("")) {

            req.setAttribute("fail", "用户名或者密码为空");
            rd.forward(req, resp);
        } else if (!password.equals(isPassword)) {
            //判断密码是否一致
            req.setAttribute("fail", "密码与确认密码不一致");
            rd.forward(req, resp);
        } else {
            //将注册信息存入application对象
            UserBean user = new UserBean();
            user.setName(userName);
            user.setPassword(password);
            ServletContext application = req.getServletContext();
            application.setAttribute("user", user);
            rd.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
