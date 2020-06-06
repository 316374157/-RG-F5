package com.rgf5.controller;

import com.rgf5.bean.*;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.CourseDao;
import com.rgf5.dao.SignDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.dao.impl.CourseDaoImpl;
import com.rgf5.dao.impl.SignDaoImpl;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.DataBankService;
import com.rgf5.service.SignService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.DataBankServiceImpl;
import com.rgf5.service.impl.SignServiceImpl;
import com.rgf5.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "SignServlet",value = "/SignServlet")
public class SignServlet extends BaseServlet {

    protected void getAllSignInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        SignDao signDao = new SignDaoImpl();
        CourseDao courseDao = new CourseDaoImpl();
        ClassDao classDao = new ClassDaoImpl();
        Course beanByCourseId1 = courseDao.getBeanByCourseId(teacher.getCourseId1());
        Course beanByCourseId2 = courseDao.getBeanByCourseId(teacher.getCourseId2());
        Course beanByCourseId3 = courseDao.getBeanByCourseId(teacher.getCourseId3());
        List<Classes> beanListByCourseId1 = classDao.getBeanListByCourseId(teacher.getCourseId1());
        List<Classes> beanListByCourseId2 = classDao.getBeanListByCourseId(teacher.getCourseId2());
        List<Classes> beanListByCourseId3 = classDao.getBeanListByCourseId(teacher.getCourseId3());
        request.setAttribute("beanByCourseId1",beanByCourseId1);
        request.setAttribute("beanByCourseId2",beanByCourseId2);
        request.setAttribute("beanByCourseId3",beanByCourseId3);
        request.setAttribute("beanListByCourseId1",beanListByCourseId1);
        request.setAttribute("beanListByCourseId2",beanListByCourseId2);
        request.setAttribute("beanListByCourseId3",beanListByCourseId3);
        request.getRequestDispatcher("pages/teacher/AllSignInfo.jsp").forward(request, response);
    }


    protected void getSignInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseId = request.getParameter("courseId");
        String classId = request.getParameter("classId");
        SignDao signDao = new SignDaoImpl();
        List<Sign> beanListByCC = signDao.getBeanListByCC(courseId, classId);
        System.out.println(beanListByCC);
        request.setAttribute("beanListByCC",beanListByCC);
        request.getRequestDispatcher("pages/teacher/SignInformation.jsp").forward(request, response);
    }

    protected void signStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        SignService signService = new SignServiceImpl();
        Sign sign = WebUtils.paramsToBean(request, new Sign());
        signService.signStudent(student, sign);
        response.getWriter().write(student.getStudentName()+"签到成功");
    }

    protected void getSign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> myClasses = classService.getMyBeanList(teacher);
        CourseService courseService = new CourseServiceImpl();
        Map<String, List<String>> listMap = courseService.getMyCourseInMyClass(teacher, myClasses);
        request.setAttribute("myClasses",myClasses);
        request.setAttribute("listMap",listMap);
        request.getRequestDispatcher("pages/teacher/Sign.jsp").forward(request, response);
    }

    protected void getFileByCourseAndClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Course course = WebUtils.paramsToBean(request, new Course());
        Classes classes = WebUtils.paramsToBean(request, new Classes());
        DataBankService dataBankService = new DataBankServiceImpl();
        LinkedHashMap<String, List<DataBank>> fileMap = dataBankService.getFileByCourseIdAndClassId(course, classes);
        request.setAttribute("fileMap", fileMap);
        request.getRequestDispatcher("SignServlet?method=getSign").forward(request, response);
    }
}
