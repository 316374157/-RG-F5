package com.rgf5.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminServlet",value = "/AdminServlet")
public class AdminServlet extends BaseServlet {
    /**
     * 获取所有的班级
     * @param request 请求
     * @param response 响应
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void getAllClasses(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
