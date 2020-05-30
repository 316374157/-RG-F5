package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.StudentDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.dao.impl.StudentDaoImpl;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.TeacherService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.TeacherServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> myBeanList = classService.getMyBeanList(teacher);
        request.setAttribute("myBeanList",myBeanList);
        request.getRequestDispatcher("pages/teacher/MyAllClass.jsp").forward(request, response);
    }

    protected void getClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        StudentDao studentDao = new StudentDaoImpl();
        ClassDao classDao = new ClassDaoImpl();
        String classId = request.getParameter("classId");
        Classes beanByClassId = classDao.getBeanByClassId(classId);
        List<Student> beanListByClassId = studentDao.getBeanListByClassId(classId);
        request.setAttribute("beanByClassId",beanByClassId);
        System.out.println(beanByClassId);
        request.setAttribute("beanListByClassId",beanListByClassId);
        request.getRequestDispatcher("pages/teacher/Class.jsp").forward(request, response);
    }
}
