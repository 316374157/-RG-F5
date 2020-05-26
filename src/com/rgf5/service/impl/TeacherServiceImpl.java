package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;
import com.rgf5.service.TeacherService;

import java.util.List;

/**
 * @ClassName TeacherServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class TeacherServiceImpl implements TeacherService {
    @Override
    public boolean add(Teacher teacher) {
        return false;
    }

    @Override
    public Teacher getBeanByTeacherId(Teacher teacher) {
        return null;
    }

    @Override
    public Teacher getBeanById(Teacher teacher) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByTeacherName(Teacher teacher) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListAll() {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByCourseId(Course course) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListByClassId(Classes classes) {
        return null;
    }

    @Override
    public Teacher login(Teacher teacher) {
        return null;
    }

    @Override
    public boolean update(Teacher teacher) {
        return false;
    }

    @Override
    public boolean delete(Teacher teacher) {
        return false;
    }
}
