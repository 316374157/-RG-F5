package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;
import com.rgf5.service.ClassService;
import com.rgf5.service.TeacherService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.TeacherServiceImpl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "TeacherServlet",value = "/TeacherServlet")
public class TeacherServlet extends BaseServlet {

    protected void getClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TeacherService teacherService = new TeacherServiceImpl();
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassService classService = new ClassServiceImpl();
        List<Classes> classes1 = classService.getBeanListByCourseId(new Course(null, teacher.getCourseId1(), null));
        List<Classes> classes2 = classService.getBeanListByCourseId(new Course(null, teacher.getCourseId2(), null));
        List<Classes> classes3 = classService.getBeanListByCourseId(new Course(null, teacher.getCourseId3(), null));
        List<Classes> classes = new ArrayList<>();
        classes.addAll(classes1);
        for (Classes item : classes2) {
            //if(item.getClassId().equals())
        }
        classes.addAll(classes2);
        classes.addAll(classes3);

        System.out.println(classes1);
        System.out.println(classes2);
        System.out.println(classes3);

        request.setAttribute("classes", classes);
        request.getRequestDispatcher("pages/teacher/Data.jsp").forward(request, response);
    }
}
