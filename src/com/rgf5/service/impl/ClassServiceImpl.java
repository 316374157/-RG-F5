package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.service.ClassService;

import java.util.List;

/**
 * @ClassName ClassServiceImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/28
 * @Version V1.0
 **/
public class ClassServiceImpl implements ClassService {

    private ClassDao classDao = new ClassDaoImpl();

    @Override
    public boolean add(Classes classes) {
        return false;
    }

    @Override
    public boolean update(Classes classes) {
        return false;
    }

    @Override
    public boolean delete(Classes classes) {
        return false;
    }

    @Override
    public List<Classes> getBeanListAll() {
        return null;
    }

    @Override
    public Classes getBeanByClassId(Classes classes) {
        return null;
    }

    @Override
    public List<Classes> getBeanListByCourseId(Course course) {
        return classDao.getBeanListByCourseId(course.getCourseId());
    }

    @Override
    public Classes getBeanByClassName(Classes classes) {
        return null;
    }
}
