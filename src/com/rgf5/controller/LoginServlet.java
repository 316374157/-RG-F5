package com.rgf5.controller;

import com.rgf5.bean.Admin;
import com.rgf5.dao.AdminDao;
import com.rgf5.dao.impl.AdminDaoImpl;
import com.rgf5.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet",value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Admin admin = WebUtils.paramsToBean(request, new Admin());
        AdminDao adminDao = new AdminDaoImpl();
        admin = adminDao.getBean(admin);
        if(admin!=null){
            session.setAttribute("admin", admin);
            request.getRequestDispatcher("/pages/admin/home.jsp").forward(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
