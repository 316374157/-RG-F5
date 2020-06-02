package com.rgf5.dao.impl;

import com.rgf5.bean.Course;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.CourseDao;

import java.util.List;

public class CourseDaoImpl implements CourseDao {
    @Override
    public boolean add(Course course) {
        String sql = "insert into course set course_id = ?,course_name = ?";
        return BaseDao.update(sql,course.getCourseId(),course.getCourseName());
    }


    @Override
    public boolean update(Course course) {
        String sql = "update course set course_id=?,course_name=? where id = ?";
        return BaseDao.update(sql, course.getCourseId(),course.getCourseName(),course.getId());
    }

    @Override
    public boolean delete(Integer id) {
        String sql = "delete from course where id = ?";
        return BaseDao.update(sql, id);
    }

    @Override
    public List<Course> getBeanListAll() {
        String sql = "select id,course_id as courseid,course_name as coursename from course";
        return BaseDao.getBeanList(sql, Course.class);
    }

    @Override
    public Course getBeanByCourseId(String courseId) {
        String sql = "select id,course_id as courseId,course_name as coursename from course where course_id = ?";
        return BaseDao.getBean(sql, Course.class, courseId);
    }

    @Override
    public Course getBeanByCourseName(String courseName) {
        String sql = "select id,course_id as courseid,course_name as coursename from course where course_name = ?";
        return BaseDao.getBean(sql,Course.class,courseName);
    }
}
