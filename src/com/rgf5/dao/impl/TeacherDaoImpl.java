package com.rgf5.dao.impl;

import com.rgf5.bean.Teacher;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.TeacherDao;

import java.util.List;

/**
 * @ClassName TeacherDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class TeacherDaoImpl implements TeacherDao {
    @Override
    public boolean add(Teacher teacher) {
        return false;
    }

    @Override
    public Teacher getBeanByTeacherId(String username) {
        return null;
    }

    @Override
    public Teacher getBeanById(Integer id) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByTeacherName(String teacherName) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListAll() {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByCourseId(String courseId) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByClassId(String classId) {
        return null;
    }

  @Override
  public Teacher login(String username, String passWd) {
        String sql = "select id,username,passWd,sex,teacher_name as teacherName,course_id1 as courseId1," +
                "course_id2 as courseId2,course_id3 as courseId3 from teachers where username=? and passWd=?";
        return BaseDao.getBean(sql, Teacher.class, username,passWd);
    }

    @Override
    public boolean update(Teacher teacher) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }
}
