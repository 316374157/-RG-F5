package com.rgf5.dao.impl;

import com.rgf5.bean.Classes;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.ClassDao;

import java.util.List;

/**
 * @ClassName ClassDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class ClassDaoImpl implements ClassDao {

    @Override
    public boolean add(Classes classes) {
        String sql = "insert into classes(id,class_id,class_name,course_id1,course_id2,course_id3,course_id4,course_id5)" +
                " values(?,?,?,?,?,?,?)";
        return BaseDao.update(sql, classes.getId(),classes.getClassId(),classes.getClassName(),
                    classes.getCourseId1(),classes.getCourseId2(),classes.getCourseId3(),classes.getCourseId4()
                ,classes.getCourseId5());
    }

    @Override
    public boolean update(Classes classes) {
        String sql = "update classes set class_id=?,class_name=?,course_id1=?,course_id2=?,course_id3=?" +
                ",course_id4=?,course_id5=? where id =?";
        return BaseDao.update(sql, classes.getClassId(),classes.getClassName(),
                classes.getCourseId1(),classes.getCourseId2(),classes.getCourseId3(),classes.getCourseId4()
                ,classes.getCourseId5(),classes.getId());
    }

    @Override
    public boolean delete(Integer id) {
        String sql = "delete classes where id=?";
        return BaseDao.update(sql, id);
    }

    @Override
    public List<Classes> getBeanListAll() {
        String sql = "select id,class_id as classId,class_name as className,course_id1 as courseId1,course_id2 as courseId2," +
                "course_id3 as courseId3,course_id4 as courseId4,course_id5 as courseId5  from classes";
        return BaseDao.getBeanList(sql, Classes.class);
    }

    @Override
    public Classes getBeanByClassId(String classId) {
        String sql = "select id,class_id as classId,class_name as className,course_id1 as courseId1,course_id2 as courseId2," +
                "course_id3 as courseId3,course_id4 as courseId4,course_id5 as courseId5  from classes where class_id=?";
        return BaseDao.getBean(sql, Classes.class,classId);
    }

    @Override
    public List<Classes> getBeanListByCourseId(String courseId) {
        String sql = "select id,class_id as classId,class_name as className,course_id1 as courseId1,course_id2 as courseId2," +
                "course_id3 as courseId3,course_id4 as courseId4,course_id5 as courseId5  from classes where course_id1=?" +
                " or course_id2=? or course_id3=? or course_id4=? or course_id5=?";
        return BaseDao.getBeanList(sql, Classes.class,courseId,courseId,courseId,courseId,courseId);
    }

    @Override
    public Classes getBeanByClassName(String className) {
        String sql = "select id,class_id as classId,class_name as className,course_id1 as courseId1,course_id2 as courseId2," +
                "course_id3 as courseId3,course_id4 as courseId4,course_id5 as courseId5  from classes where class_name=?";
        return BaseDao.getBean(sql, Classes.class,className);
    }
}
