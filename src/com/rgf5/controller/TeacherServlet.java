package com.rgf5.controller;

import com.rgf5.bean.Teacher;
import com.rgf5.dao.TeacherDao;
import com.rgf5.service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TeacherServlet",value = "/TeacherServlet")
public class TeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username =request.getParameter("username");
        Teacher teacher = new Teacher();
        request.setAttribute("list_displayEditnotice", teacher);
        System.out.println("displayEditnotice="+teacher);
        request.getRequestDispatcher("Editnotice.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
