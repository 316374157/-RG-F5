package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Sign;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.CourseDao;
import com.rgf5.dao.SignDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.dao.impl.CourseDaoImpl;
import com.rgf5.dao.impl.SignDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

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
}
