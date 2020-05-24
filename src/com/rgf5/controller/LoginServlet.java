package com.rgf5.controller;

import com.rgf5.bean.Admin;
import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.service.AdminService;
import com.rgf5.service.impl.AdminServiceImpl;
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
        String user = request.getParameter("user");
        if("admin".equals(user)){
            Admin admin = WebUtils.paramsToBean(request, new Admin());
            AdminService adminService = new AdminServiceImpl();
            admin = adminService.login(admin);
            if(admin!=null){
                session.setAttribute("admin", admin);
                response.sendRedirect("pages/admin/home.jsp");
            }
        }else if("student".equals(user)){
            Student student = WebUtils.paramsToBean(request, new Student());
            if(student!=null){
                session.setAttribute("student", student);
                response.sendRedirect("pages/student/home.jsp");
            }
        }else{
            Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
            if(teacher!=null){
                session.setAttribute("teacher", teacher);
                response.sendRedirect("pages/teacher/home.jsp");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
