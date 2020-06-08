package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "ClassesServlet",value = "/ClassesServlet")
public class ClassesServlet extends BaseServlet {

    private ClassService classService = new ClassServiceImpl();

    protected void getAllClasses(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Classes> classesList = classService.getBeanListAll();
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListAll();
        HashMap<String, Object> map = new HashMap<>();
        for (Course course : courseList) {
          map.put(course.getCourseId(), course.getCourseName());
        }
        request.setAttribute("classesList",classesList);
        request.setAttribute("map",map);
        request.getRequestDispatcher("pages/admin/classdetail.jsp").forward(request, response);
    }
}
