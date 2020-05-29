package com.rgf5.controller;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.DataBank;
import com.rgf5.service.DataBankService;
import com.rgf5.service.impl.DataBankServiceImpl;
import com.rgf5.utils.WebUtils;
import java.util.LinkedHashSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DataBankServlet",value = "/DataBankServlet")
public class DataBankServlet extends BaseServlet {

    protected void getFileByCourseAndClass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Course course = WebUtils.paramsToBean(request, new Course());
        Classes classes = WebUtils.paramsToBean(request, new Classes());
        DataBankService dataBankService = new DataBankServiceImpl();
        List<DataBank> fileList = dataBankService.getFileByCourseIdAndClassId(course, classes);
        LinkedHashSet<String> set = new LinkedHashSet<>();
        for (DataBank item : fileList) {
          set.add(item.getDataType());
        }
        request.setAttribute("fileList",fileList);
        request.setAttribute("set", set);
        request.getRequestDispatcher("TeacherServlet?method=getMyClass").forward(request, response);
    }
}
