package com.rgf5.service.impl;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;
import com.rgf5.dao.ClassDao;
import com.rgf5.dao.impl.ClassDaoImpl;
import com.rgf5.service.ClassService;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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
        return classDao.getBeanByClassName(classes.getClassName());
    }

    @Override
    public List<Classes> getMyBeanList(Teacher teacher) {
        List<Classes> classes1 = classDao.getBeanListByCourseId(teacher.getCourseId1());
        List<Classes> classes2 = classDao.getBeanListByCourseId(teacher.getCourseId2());
        List<Classes> classes3 = classDao.getBeanListByCourseId(teacher.getCourseId3());
        List<Classes> classes = new ArrayList<>();
        classes.addAll(classes1);
        classes.addAll(classes2);
        classes.addAll(classes3);
        Map<String, Classes> result = new LinkedHashMap<>();
        for (Classes item : classes) {
            result.put(item.getClassId(), item);
        }
        return new ArrayList<>(result.values());
    }

}
