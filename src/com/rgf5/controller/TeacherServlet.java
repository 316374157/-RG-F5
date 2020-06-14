package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Student;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.*;
import com.rgf5.dao.impl.*;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.TeacherService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.TeacherServiceImpl;
import com.rgf5.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
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

    public void changeTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        int id= Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String teachername = request.getParameter("teachername");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        TeacherDao teacherDao =new TeacherDaoImpl();
        Teacher oldteacher = teacherDao.getBeanById(id);
        String courceId1=oldteacher.getCourseId1();
        String courceId2=oldteacher.getCourseId2();
        String courceId3=oldteacher.getCourseId3();
        System.out.println(id+" "+username+" "+password+" "+gender+" "+username);
        List<Teacher> beanListAll = teacherDao.getBeanListAll();
        System.out.println(beanListAll);
        Teacher newteacher = new Teacher(id,username,password,gender,courceId1,courceId2,courceId3,teachername);
        teacherDao.update(newteacher);
        session.setAttribute("teacher", newteacher);
        response.sendRedirect("TeacherServlet?method=searchCourse");
    }

    public void searchCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String coursename1 ="";String coursename2 ="";String coursename3 ="";
        HttpSession session = request.getSession();
        TeacherDao teacherDao =new TeacherDaoImpl();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        CourseDao courseDao = new CourseDaoImpl();
        Course course1 = courseDao.getBeanByCourseId(teacher.getCourseId1());
        Course course2 = courseDao.getBeanByCourseId(teacher.getCourseId2());
        Course course3 = courseDao.getBeanByCourseId(teacher.getCourseId3());
        request.setAttribute("course1", course1);
        request.setAttribute("course2", course2);
        request.setAttribute("course3", course3);
        request.getRequestDispatcher("pages/teacher/MyInfo.jsp").forward(request, response);
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

    protected void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> myBeanList = classService.getMyBeanList(teacher);
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListTeacherAll(teacher);
        request.setAttribute("myBeanList",myBeanList);
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/teacher/Home.jsp").forward(request, response);
    }


    protected void updateCourse(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        Teacher params = WebUtils.paramsToBean(request, new Teacher());
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        System.out.println(params);
        System.out.println(teacher);
        if(teacher.getCourseId1()!=null&&teacher.getCourseId1().equals(params.getCourseId1())){
            teacher.setCourseId1(null);
        }
        if(teacher.getCourseId2()!=null&&teacher.getCourseId2().equals(params.getCourseId2())){
            teacher.setCourseId2(null);
        }
        if(teacher.getCourseId3()!=null&&teacher.getCourseId3().equals(params.getCourseId3())){
            teacher.setCourseId3(null);
        }
        System.out.println(teacher);
        TeacherService teacherService = new TeacherServiceImpl();
        teacherService.update(teacher);
        session.setAttribute("teacher",teacher);
        response.sendRedirect("pages/teacher/Course.jsp");
    }

    protected void CourseInfo(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        SignDao signDao = new SignDaoImpl();
        CourseDao courseDao = new CourseDaoImpl();
        ClassDao classDao = new ClassDaoImpl();
        String courseId = request.getParameter("courseId");
        Course beanByCourseId = courseDao.getBeanByCourseId(courseId);
        List<Classes> beanListByCourseId = classDao.getBeanListByCourseId(courseId);
        System.out.println(beanByCourseId);
        System.out.println(beanListByCourseId);
        request.setAttribute("beanByCourseId",beanByCourseId);
        request.setAttribute("beanListByCourseId",beanListByCourseId);
        request.getRequestDispatcher("pages/teacher/CourseClass.jsp").forward(request, response);
    }


    protected void getAllTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeacherService teacherService = new TeacherServiceImpl();
        List<Teacher> teacherList = teacherService.getBeanListAll();
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListAll();
        HashMap<String, Object> map = new HashMap<>();
        for (Course course : courseList) {
          map.put(course.getCourseId(), course.getCourseName());
        }
        request.setAttribute("teacherList",teacherList);
        request.setAttribute("map",map);
        request.getRequestDispatcher("pages/admin/teachermanager.jsp").forward(request, response);
    }

    protected void toAddTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListAll();
        request.setAttribute("courseList",courseList);
        request.getRequestDispatcher("pages/admin/addteacher.jsp").forward(request, response);
    }

    protected void addTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
        TeacherService teacherService= new TeacherServiceImpl();
        teacherService.add(teacher);
        getAllTeacher(request,response);
    }

    protected void updateTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
        TeacherService teacherService= new TeacherServiceImpl();
        teacherService.update(teacher);
        getAllTeacher(request,response);
    }

    protected void toUpdateTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
        TeacherService teacherService = new TeacherServiceImpl();
        teacher = teacherService.getBeanById(teacher);
        CourseService courseService = new CourseServiceImpl();
        List<Course> courseList = courseService.getBeanListAll();
        request.setAttribute("courseList",courseList);
        request.setAttribute("teacher",teacher);
        request.getRequestDispatcher("pages/admin/updateteacher.jsp").forward(request, response);
    }

    protected void deleteTeacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Teacher teacher = WebUtils.paramsToBean(request, new Teacher());
        TeacherService teacherService= new TeacherServiceImpl();
        teacherService.delete(teacher);
        getAllTeacher(request,response);
    }

    protected void teacherOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("index.jsp");
        System.out.println(session);
    }
}
