package com.rgf5.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DataBankServlet",value = "/DataBankServlet")
public class DataBankServlet extends BaseServlet {

    protected void teacherGetAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*HttpSession session = request.getSession();
        Teacher teacher = (Teacher)session.getAttribute("teacher");
        DataBankService dataBankService = new DataBankServiceImpl();
        List<DataBank> teacherBank = dataBankService.teacherGetAll(teacher);
        System.out.println(teacherBank);
        request.setAttribute("teacherBank",teacherBank);
        request.getRequestDispatcher("pages/teacher/Data.jsp").forward(request, response);*/
    }
}
