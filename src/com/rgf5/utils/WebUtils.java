package com.rgf5.utils;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.DataBank;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.DataBankService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import com.rgf5.service.impl.DataBankServiceImpl;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

;

/**
 * @ClassName WebUtils 前端工具类
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/20
 * @Version V1.0
 **/
public class WebUtils {

    public static <T> T paramsToBean(HttpServletRequest request,T bean){
        try {
            Map<String, String[]> map = request.getParameterMap();
            BeanUtils.populate(bean, map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 文件上传，上传到服务器，并封装一个文件对象
     * @param request 请求
     * @return 封装好的文件对象
     */
    public static Map<String,Object> fileUpLoad(HttpServletRequest request){
        ServletContext servletPath = request.getServletContext();
        String rootPath = servletPath.getRealPath("databank");
        DataBank dataBank = new DataBank();
        Classes classes = new Classes();
        Course course = new Course();
        CourseService courseService = new CourseServiceImpl();
        ClassService classService = new ClassServiceImpl();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        Map<String, Object> result = new HashMap<>();
        result.put("error", "false");
        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
        fileUpload.setHeaderEncoding("utf-8");
        try {
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                if(fileItem.isFormField()){
                    map.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
                }else {
                    classes.setClassName(map.get("className"));
                    course.setCourseName(map.get("courseName"));
                    course = courseService.getBeanByCourseName(course);
                    classes = classService.getBeanByClassName(classes);
                    if(course==null || classes == null){
                        result.put("error", "true");
                        return result;
                    }
                    System.out.println(classes);
                    System.out.println(course);
                    result.put("course", course);
                    result.put("classes", classes);
                    rootPath = rootPath+"\\"+classes.getClassId()+"\\"+course.getCourseId()+"\\";
                    System.out.println(rootPath);
                    String name = fileItem.getName();
                    if(("").equals(name)||name==null){
                        result.put("error", "true");
                        return result;
                    }
                    dataBank.setDataName(name);
                    dataBank.setClassId(classes.getClassId());
                    dataBank.setCourseId(course.getCourseId());
                    dataBank.setDataType(map.get("dataType"));
                    System.out.println(name);
                    InputStream inputStream = fileItem.getInputStream();
                    name = UUID.randomUUID().toString().replace("-", "")
                            .substring(0, 10)+"_"+name;
                    System.out.println(name);
                    dataBank.setDataPath("databank/"+classes.getClassId()+"/"+course.getCourseId()+"/"+name);
                    FileOutputStream outputStream = new FileOutputStream(rootPath+name);
                    IOUtils.copy(inputStream,outputStream);
                    outputStream.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        result.put("dataBank", dataBank);
        return result;
    }


    /**
     * 文件下载模块
     * @param request 请求
     * @param response 响应
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    public static void fileDownLoad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataBank dataBank = paramsToBean(request, new DataBank());
        System.out.println(dataBank);
        DataBankService dataBankService = new DataBankServiceImpl();
        dataBank = dataBankService.getBeanById(dataBank);
        System.out.println(dataBank);
        String realPath = request.getServletContext().getRealPath("/")+dataBank.getDataPath();
        System.out.println(realPath);
        //1.设置响应的文件类型
        String type = request.getServletContext().getMimeType(dataBank.getDataName());
        response.setContentType(type);
        System.out.println(type);
        //2.解决下载文件的中文乱码（万能方案）
        String fileName = dataBank.getDataName();
        String gbkName = new String(fileName.getBytes("gbk"), "iso8859-1");
        //3.设置资源处理方式
        response.setHeader("Content-Disposition", "attachment;filename="+gbkName);
        FileInputStream inputStream = new FileInputStream(realPath);
        ServletOutputStream outputStream = response.getOutputStream();
        IOUtils.copy(inputStream, outputStream);
        inputStream.close();
        outputStream.close();
    }

    /**
     * 文件删除
     * @param request 请求
     */
    public static void fileDelete(HttpServletRequest request){
        ServletContext servletContext = request.getServletContext();
        String rootPath = servletContext.getRealPath("/");
        DataBank dataBank = paramsToBean(request, new DataBank());
        DataBankService dataBankService = new DataBankServiceImpl();
        dataBank = dataBankService.getBeanById(dataBank);
        rootPath = rootPath+dataBank.getDataPath();
        System.out.println(rootPath);
        new File(rootPath).delete();
        dataBankService.delete(dataBank);
        System.out.println("删除成功");
    }
}
