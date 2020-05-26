package com.rgf5.dao.impl;

import com.rgf5.bean.Student;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.StudentDao;

import java.util.List;

/**
 * @ClassName StudentDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class StudentDaoImpl implements StudentDao {
    @Override
    public Student getBeanByStudentId(String username) {
        return null;
    }

    @Override
    public Student getBeanById(Integer id) {
        return null;
    }

    @Override
    public List<Student> getBeanListByStudentName(String studentName) {
        return null;
    }

    @Override
    public List<Student> getBeanListAll() {
        return null;
    }

    @Override
    public List<Student> getBeanListByClassId(String classId) {
        return null;
    }

    @Override
    public List<Student> getBeanListByCourseId(String courseId) {
        return null;
    }

    @Override
    public boolean register(Student student) {
        return false;
    }


    @Override
    public Student login(String username, String passWd) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName from " +
                "students where username=? and passWd=?";
        return BaseDao.getBean(sql, Student.class, username,passWd);
    }

    @Override
    public boolean update(Student student) {
        return false;
    }

    @Override
    public boolean changeClassId(Student student) {
        return false;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }
}
