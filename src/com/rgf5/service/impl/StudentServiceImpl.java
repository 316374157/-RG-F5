package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Student;
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
    @Override
    public Student getBeanByStudentId(Student student) {
        return null;
    }

    @Override
    public Student getBeanById(Student student) {
        return null;
    }

    @Override
    public List<Student> getBeanListByStudentName(Student student) {
        return null;
    }

    @Override
    public List<Student> getBeanListAll() {
        return null;
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
    public boolean register(Student student) {
        return false;
    }

    @Override
    public Student login(Student student) {
        return null;
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
    public boolean delete(Student student) {
        return false;
    }
}
