package com.rgf5.dao.impl;

import com.rgf5.bean.Admin;
import com.rgf5.bean.Classes;
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
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName " +
                "from students where username=?";
        return BaseDao.getBean(sql, Student.class,username);
    }

    @Override
    public Student getBeanById(Integer id) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName " +
                "from students where id=?" ;
        return BaseDao.getBean(sql, Student.class,id);
    }

    @Override
    public List<Student> getBeanListByStudentName(String studentName) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName " +
                "from students where student_name=?" ;
        return BaseDao.getBeanList(sql,Student.class,studentName);
    }

    @Override
    public List<Student> getBeanListAll() {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName from students";
        return BaseDao.getBeanList(sql, Student.class);
    }

    @Override
    public List<Student> getBeanListByClassId(String classId) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName from students where class_id=?";
        return BaseDao.getBeanList(sql,Student.class,classId);
    }

    @Override
    public List<Student> getBeanListByCourseId(String courseId) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName from students";
        return BaseDao.getBeanList(sql,Student.class, courseId);
    }

    @Override
    public boolean register(Student student) {
        String sql = "insert into students(id,username,passWd,sex,class_id,student_name) values(?,?,?,?,?,?)";
        return BaseDao.update(sql,student.getId(),student.getUsername(),student.getPassWd(),
                student.getSex(),student.getClassId(),student.getStudentName());
    }


    @Override
    public Student login(String username, String passWd) {
        String sql = "select id,username,passWd,sex,class_id as classId,student_name as studentName from " +
                "students where username=? and passWd=?";
        return BaseDao.getBean(sql, Student.class, username,passWd);
    }

    @Override
    public boolean update(Student student) {
        String sql= "update students set passWd=? where student_name=?";
        return BaseDao.update(sql,student.getPassWd(),student.getUsername());
    }

    @Override
    public boolean changeClassId(Student student) {
        String sql= "update students set className=? where student_name=?";
        return BaseDao.update(sql,student.getClassId(),student.getUsername());
    }

    @Override
    public boolean delete(Integer id) {
        String sql = "delete students where id=?";
        return BaseDao.update(sql, id);
    }
}
