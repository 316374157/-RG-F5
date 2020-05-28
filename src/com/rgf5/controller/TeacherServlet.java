package com.rgf5.controller;

import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.TeacherDao;
import com.rgf5.dao.impl.TeacherDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TeacherServlet",value = "/TeacherServlet")
public class TeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        System.out.println(action);
        if("change".equals(action))
        {
            System.out.println(username+" "+password);
            TeacherDao teacherDao =new TeacherDaoImpl();
            List<Teacher> beanListAll = teacherDao.getBeanListAll();
            System.out.println(beanListAll);
            /*response.sendRedirect("pages/teacher/ChangeInfo.jsp");*/
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
