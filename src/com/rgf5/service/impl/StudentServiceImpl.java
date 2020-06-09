package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Student;
import com.rgf5.dao.StudentDao;
import com.rgf5.dao.impl.StudentDaoImpl;
import com.rgf5.service.StudentService;

import java.util.List;

/**
 * @ClassName StudentServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class StudentServiceImpl implements StudentService {

    StudentDao studentDao = new StudentDaoImpl();


    @Override
    public Student getBeanByStudentId(Student student) {
        return null;
    }

    @Override
    public Student getBeanById(Student student) {
        return studentDao.getBeanById(student.getId());
    }

    @Override
    public List<Student> getBeanListByStudentName(Student student) {
        return null;
    }

    @Override
    public List<Student> getBeanListAll() {
        return studentDao.getBeanListAll();
    }

    @Override
    public List<Student> getBeanListByClassId(Classes classes) {
        return null;
    }

    @Override
    public List<Student> getBeanListByCourseId(Course course) {
        return null;
    }

    @Override
    public boolean register(Student student){
        return studentDao.register(student);
    }

    @Override
    public Student login(Student student) {
        return studentDao.login(student.getUsername(), student.getPassWd());
    }

    @Override
    public boolean update(Student student) {
        return studentDao.update(student);
    }

    @Override
    public boolean changeClassId(Student student) {
        return false;
    }

    @Override
    public boolean delete(Student student) {
        return false;
    }
}
