package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Teacher;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.TeacherService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.TeacherServiceImpl;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "TeacherServlet",value = "/TeacherServlet")
public class TeacherServlet extends BaseServlet {

    /**
     * 刚进入资料库时的显示
     * @param request 请求
     * @param response 响应
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void getMyClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeacherService teacherService = new TeacherServiceImpl();
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> myClasses = classService.getMyBeanList(teacher);
        CourseService courseService = new CourseServiceImpl();
        Map<String, List<String>> listMap = courseService.getMyCourseInMyClass(teacher, myClasses);
        request.setAttribute("myClasses",myClasses);
        request.setAttribute("listMap",listMap);
        request.getRequestDispatcher("pages/teacher/Data.jsp").forward(request, response);
    }

    protected void getMyAllClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeacherService teacherService = new TeacherServiceImpl();
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> myBeanList = classService.getMyBeanList(teacher);
        System.out.println("teacherService="+teacherService);
        System.out.println("session="+session);
        System.out.println("teacher="+teacher);
        System.out.println("classService="+classService);
        System.out.println("myBeanList="+myBeanList);
        request.setAttribute("myBeanList",myBeanList);
        request.getRequestDispatcher("pages/teacher/MyAllClass.jsp").forward(request, response);
    }
}
