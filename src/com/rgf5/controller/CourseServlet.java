package com.rgf5.controller;

import com.rgf5.bean.Course;
import com.rgf5.service.CourseService;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.utils.WebUtils;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CourseServlet",value = "/CourseServlet")
public class CourseServlet extends BaseServlet {

    protected void addCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Course course = WebUtils.paramsToBean(request, new Course());
        System.out.println(course);
        CourseService courseService = new CourseServiceImpl();
        courseService.add(course);
        response.sendRedirect("pages/teacher/Course.jsp");
    }

    protected void getAllStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListAll();
        System.out.println(courseList);
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/student/register.jsp").forward(request,response);
    }
}
