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
        return courseDao.update(course);
    }

    @Override
    public boolean delete(Course course) {
        return courseDao.delete(course.getId());
    }

    @Override
    public List<Course> getBeanListAll() {
        return courseDao.getBeanListAll();
    }

    @Override
    public Course getBeanByCourseId(Course course) {
        return courseDao.getBeanByCourseId(course.getCourseId());
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

    @Override
    public List<Course> getBeanListTeacherAll(Teacher teacher) {
        List<Course> courseList = new ArrayList<>();
        Course course1 = courseDao.getBeanByCourseId(teacher.getCourseId1());
        Course course2 = courseDao.getBeanByCourseId(teacher.getCourseId2());
        Course course3 = courseDao.getBeanByCourseId(teacher.getCourseId3());
        courseList.add(course1);
        courseList.add(course2);
        courseList.add(course3);
        return courseList;
    }

    @Override
    public List<Course> getBeanListClassAll(Classes classes) {
        List<Course> courseList = new ArrayList<>();
        Course course1 = courseDao.getBeanByCourseId(classes.getCourseId1());
        Course course2 = courseDao.getBeanByCourseId(classes.getCourseId2());
        Course course3 = courseDao.getBeanByCourseId(classes.getCourseId3());
        Course course4 = courseDao.getBeanByCourseId(classes.getCourseId4());
        Course course5 = courseDao.getBeanByCourseId(classes.getCourseId5());
        courseList.add(course1);
        courseList.add(course2);
        courseList.add(course3);
        courseList.add(course4);
        courseList.add(course5);
        return courseList;
    }
}
