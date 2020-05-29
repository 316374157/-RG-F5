package com.rgf5.utils;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.service.ClassService;
import com.rgf5.service.CourseService;
import com.rgf5.service.impl.ClassServiceImpl;
import com.rgf5.service.impl.CourseServiceImpl;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

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

    public static void fileUpLoad(HttpServletRequest request){
        ServletContext servletPath = request.getServletContext();
        String rootPath = servletPath.getRealPath("databank");
        Classes classes = new Classes();
        Course course = new Course();
        CourseService courseService = new CourseServiceImpl();
        ClassService classService = new ClassServiceImpl();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
        try {
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                if(fileItem.isFormField()){
                    map.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        classes.setClassName(map.get("className"));
        course.setCourseName(map.get("courseName"));
        course = courseService.getBeanByCourseName(course);
        classes = classService.getBeanByClassName(classes);
        System.out.println(classes);
        System.out.println(course);
        rootPath = rootPath+"\\"+classes.getClassId()+"\\"+course.getCourseId()+"\\";
        System.out.println(rootPath);
        try {
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                if(fileItem.isFormField()){
                    System.out.println("普通");
                }else {
                    System.out.println("文件");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
