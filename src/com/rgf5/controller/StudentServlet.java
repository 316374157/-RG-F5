package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.CourseDao;
import com.rgf5.dao.TeacherDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.dao.impl.CourseDaoImpl;
import com.rgf5.dao.impl.TeacherDaoImpl;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.StudentService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.StudentServiceImpl;
import com.rgf5.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "StudentServlet",value = "/StudentServlet")
public class StudentServlet extends BaseServlet {

    protected void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        ClassService classService = new ClassServiceImpl();
        ClassDao classDao = new ClassDaoImpl();
        Classes classes = classDao.getBeanByClassId(student.getClassId());
        request.setAttribute("classes",classes);
        CourseDao courseDao = new CourseDaoImpl();
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListClassAll(classes);
        Course course1 = courseDao.getBeanByCourseId(classes.getCourseId1());
        request.setAttribute("course1",course1);
        Course course2 = courseDao.getBeanByCourseId(classes.getCourseId2());
        request.setAttribute("course2",course2);
        Course course3 = courseDao.getBeanByCourseId(classes.getCourseId3());
        request.setAttribute("course3",course3);
        Course course4 = courseDao.getBeanByCourseId(classes.getCourseId4());
        request.setAttribute("course4",course4);
        Course course5 = courseDao.getBeanByCourseId(classes.getCourseId5());
        request.setAttribute("course5",course5);
        TeacherDao teacherDao = new TeacherDaoImpl();
        Teacher teacher1 = teacherDao.getBeanByCourseId(course1.getCourseId());
        if(course2 != null)
        {
            Teacher teacher2 = teacherDao.getBeanByCourseId(course2.getCourseId());
            request.setAttribute("teacher2",teacher2);
        }
        if(course3 != null)
        {
            Teacher teacher3 = teacherDao.getBeanByCourseId(course3.getCourseId());
            request.setAttribute("teacher3",teacher3);
        }
        if(course4 != null)
        {
            Teacher teacher4 = teacherDao.getBeanByCourseId(course4.getCourseId());
            request.setAttribute("teacher4",teacher4);
        }
        if(course5 != null)
        {
            Teacher teacher5 = teacherDao.getBeanByCourseId(course5.getCourseId());
            request.setAttribute("teacher5",teacher5);
        }
        request.setAttribute("courseList",courseList);
        request.setAttribute("teacher1",teacher1);
        request.getRequestDispatcher("pages/student/home.jsp").forward(request, response);
    }


    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Student student = WebUtils.paramsToBean(request, new Student());
        System.out.println(student);
        StudentService studentService = new StudentServiceImpl();
        boolean register = studentService.register(student);
        if(register){
            response.sendRedirect("index.jsp");
        }else {
            request.setAttribute("msg","账号已存在！");
            request.getRequestDispatcher("CourseServlet?method=getAllStudent").forward(request,response);
        }

    }

    protected void getMyAllCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        ClassDao classDao = new ClassDaoImpl();
        Classes beanByClassId = classDao.getBeanByClassId(student.getClassId());
        request.setAttribute("beanByClassId",beanByClassId);
        request.getRequestDispatcher("pages/student/coursedetail.jsp").forward(request, response);
    }

    protected void getCourseInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        String courseId = request.getParameter("courseId");
        CourseDao courseDao = new CourseDaoImpl();
        Course beanByCourseId = courseDao.getBeanByCourseId(courseId);
        System.out.println(beanByCourseId);
        request.setAttribute("beanByCourseId",beanByCourseId);
        request.getRequestDispatcher("pages/student/CourseInfo.jsp").forward(request, response);
    }

    protected void getAllStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentService studentService = new StudentServiceImpl();
        List<Student> studentList = studentService.getBeanListAll();
        ClassService classService = new ClassServiceImpl();
        List<Classes> classesList = classService.getBeanListAll();
        HashMap<String, Object> classMap = new HashMap<>();
        for (Classes classes : classesList) {
            classMap.put(classes.getClassId(), classes.getClassName());
        }
        request.setAttribute("classMap",classMap);
        request.setAttribute("studentList",studentList);
        request.getRequestDispatcher("pages/admin/studentdetail.jsp").forward(request, response);
    }


    protected void toUpdateStu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = WebUtils.paramsToBean(request, new Student());
        StudentService studentService = new StudentServiceImpl();
        student = studentService.getBeanById(student);
        ClassService classService = new ClassServiceImpl();
        List<Classes> classesList = classService.getBeanListAll();
        request.setAttribute("classesList",classesList);
        request.setAttribute("student",student);
        request.getRequestDispatcher("pages/admin/updatestudent.jsp").forward(request, response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Student student = WebUtils.paramsToBean(request, new Student());
        StudentService studentService = new StudentServiceImpl();
        studentService.update(student);
        session.setAttribute("student", student);
        toInfo(request, response);
    }

    protected void toInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ClassService classService = new ClassServiceImpl();
        List<Classes> classesList = classService.getBeanListAll();
        HashMap<String, String> map = new HashMap<>();
        for (Classes classes : classesList) {
          map.put(classes.getClassId(),classes.getClassName());
        }
        request.setAttribute("map", map);
        request.getRequestDispatcher("pages/student/myinfo.jsp").forward(request, response);
    }

    protected void updateStu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student student = WebUtils.paramsToBean(request, new Student());
        StudentService studentService = new StudentServiceImpl();
        studentService.update(student);
        getAllStudent(request,response);
    }


    protected void studentOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("index.jsp");
        System.out.println(session);
    }


    protected void toFilePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        Classes classes = new Classes();
        classes.setClassId(student.getClassId());
        ClassService classService = new ClassServiceImpl();
        classes = classService.getBeanByClassId(classes);
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListClassAll(classes);
        request.setAttribute("classes",classes);
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/student/databank.jsp").forward(request, response);
    }
}
