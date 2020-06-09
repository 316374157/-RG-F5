package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.TeacherDao;
import com.rgf5.dao.impl.TeacherDaoImpl;
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

    TeacherDao teacherDao = new TeacherDaoImpl();


    @Override
    public boolean add(Teacher teacher) {
        return teacherDao.add(teacher);
    }

    @Override
    public Teacher getBeanByTeacherId(Teacher teacher) {
        return null;
    }

    @Override
    public Teacher getBeanById(Teacher teacher) {
        return teacherDao.getBeanById(teacher.getId());
    }

    @Override
    public List<Teacher> getBeanListByTeacherName(Teacher teacher) {
        return null;
    }

    @Override
    public List<Teacher> getBeanListAll() {
        return teacherDao.getBeanListAll();
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
        return teacherDao.login(teacher.getUsername(), teacher.getPassWd());
    }

    @Override
    public boolean update(Teacher teacher) {
        return teacherDao.update(teacher);
    }

    @Override
    public boolean delete(Teacher teacher) {
        return teacherDao.delete(teacher.getId());
    }
}
