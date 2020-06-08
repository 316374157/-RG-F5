package com.rgf5.controller;

import com.rgf5.bean.Course;
import com.rgf5.service.CourseService;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CourseServlet",value = "/CourseServlet")
public class CourseServlet extends BaseServlet {

    private  CourseService courseService = new CourseServiceImpl();

    protected void addCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Course course = WebUtils.paramsToBean(request, new Course());
        System.out.println(course);
        courseService.add(course);
        response.sendRedirect("pages/teacher/Course.jsp");
    }

    protected void getAllStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> courseList = courseService.getBeanListAll();
        System.out.println(courseList);
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/student/register.jsp").forward(request,response);
    }

    protected void getAllCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> courseList = courseService.getBeanListAll();
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/admin/coursemanager.jsp").forward(request,response);
    }
}
