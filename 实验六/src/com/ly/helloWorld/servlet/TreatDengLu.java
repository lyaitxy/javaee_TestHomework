package com.ly.helloWorld.servlet;

import com.ly.helloWorld.bean.UserBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.jws.soap.SOAPBinding;
import java.io.IOException;
@WebServlet("/test06/dengLuServlet")
public class TreatDengLu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //得到session对象
        HttpSession session = req.getSession(true);
        //获取application对象
        ServletContext application = req.getServletContext();
        //设置跳转位置
        String url = "/dengLuResult.jsp";
        RequestDispatcher rd = req.getRequestDispatcher(url);
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        //判断用户名或者密码是否为空，如是就跳转给处理页面
        if (userName.equals("") || password.equals("")) {
            req.setAttribute("fail", "用户名或者密码为空");
            rd.forward(req, resp);
        }

        //判断用户是否已经注册
        UserBean user = (UserBean) application.getAttribute("user");
        if (userName.equals(user.getName()) && password.equals(user.getPassword())) {
            session.setAttribute("user", user);
            rd.forward(req, resp);
        } else {
            req.setAttribute("fail", "用户名或者密码错误");
            rd.forward(req, resp);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
