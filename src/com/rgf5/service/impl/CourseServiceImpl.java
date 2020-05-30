package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.CourseDao;
import com.rgf5.dao.impl.CourseDaoImpl;
import com.rgf5.service.CourseService;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName CourseServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/28
 * @Version V1.0
 **/
public class CourseServiceImpl implements CourseService {

    CourseDao courseDao = new CourseDaoImpl();

    @Override
    public boolean add(Course course) {
        return courseDao.add(course);
    }

    @Override
    public boolean update(Course course) {
        return false;
    }

    @Override
    public boolean delete(Course course) {
        return false;
    }

    @Override
    public List<Course> getBeanListAll() {
        return null;
    }

    @Override
    public Course getBeanByCourseId(Course course) {
        return null;
    }

    @Override
    public Course getBeanByCourseName(Course course) {
        return courseDao.getBeanByCourseName(course.getCourseName());
    }

    @Override
    public Map<String, List<String>> getMyCourseInMyClass(Teacher teacher, List<Classes> classes) {
        Map<String, List<String>> result = new LinkedHashMap<>();
        List<String> courseTeacher = new ArrayList<>();
        courseTeacher.add(teacher.getCourseId1());
        courseTeacher.add(teacher.getCourseId2());
        courseTeacher.add(teacher.getCourseId3());
        for (Classes item : classes) {
          List<String> list = new ArrayList<>();
          for (String id : courseTeacher) {
            if(id!=null && (id.equals(item.getCourseId1())|| id.equals(item.getCourseId2())
                || id.equals(item.getCourseId3()) || id.equals(item.getCourseId4())
                || id.equals(item.getCourseId5()))){
                list.add( courseDao.getBeanByCourseId(id).getCourseName());
            }
          }
            result.put(item.getClassName(), list);
        }
        return result;
    }


}
