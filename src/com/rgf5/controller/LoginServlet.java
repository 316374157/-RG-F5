package com.rgf5.controller;

import com.rgf5.bean.Admin;
import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.service.AdminService;
import com.rgf5.service.StudentService;
import com.rgf5.service.TeacherService;
import com.rgf5.service.impl.AdminServiceImpl;
import com.rgf5.service.impl.StudentServiceImpl;
import com.rgf5.service.impl.TeacherServiceImpl;
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
        System.out.println(user);
        if("admin".equals(user)){
            Admin admin = WebUtils.paramsToBean(request, new Admin());
            System.out.println(admin);
            AdminService adminService = new AdminServiceImpl();
            admin = adminService.login(admin);
            System.out.println(admin);
            if(admin!=null){
                session.setAttribute("admin", admin);
                System.out.println();
                response.sendRedirect("pages/admin/home.jsp");
            }else {
                request.setAttribute("msg", "账号或密码错误！");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else if("student".equals(user)){
            Student student = WebUtils.paramsToBean(request, new Student());
            System.out.println(student);
            StudentService studentService = new StudentServiceImpl();
            student = studentService.login(student);
            System.out.println(student);
            if(student!=null){
                session.setAttribute("student", student);
                response.sendRedirect("pages/student/home.jsp");
            }else {
                request.setAttribute("msg", "账号或密码错误！");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else{
            Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
            System.out.println(teacher);
            TeacherService teacherService = new TeacherServiceImpl();
            teacher = teacherService.login(teacher);
            System.out.println(teacher);
            if(teacher!=null){
                session.setAttribute("teacher", teacher);
                request.getRequestDispatcher("TeacherServlet?method=home").forward(request, response);
            }else {
                request.setAttribute("msg", "账号或密码错误！");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
