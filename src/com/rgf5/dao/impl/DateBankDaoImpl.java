package com.rgf5.dao.impl;

import com.rgf5.bean.DateBank;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.DateBankDao;

import java.util.List;

/**
 * @ClassName DateBankDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class DateBankDaoImpl implements DateBankDao {

    @Override
    public boolean add(DateBank dateBank) {
        String sql = "insert into databank(data_name,data_path,class_id,course_id,data_type) values(?,?,?,?,?)";
        return BaseDao.update(sql, dateBank.getDataName(),dateBank.getDataPath(),dateBank.getClassId(),dateBank.getDataType());
    }

    @Override
    public boolean delete(DateBank dateBank) {
        String sql = "delete databank where id=?";
        return BaseDao.update(sql, dateBank.getId());
    }

    @Override
    public List<DateBank> getBeanListAll() {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank";
        return BaseDao.getBeanList(sql, DateBank.class);
    }

    @Override
    public List<DateBank> getBeanByDataName(String dataName) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank";
        return BaseDao.getBeanList(sql, DateBank.class);
    }

    @Override
    public DateBank getBeanByDataPath(String dataPath) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank where data_path=?";
        return BaseDao.getBean(sql, DateBank.class, dataPath);
    }

    @Override
    public List<DateBank> getBeanListByClassId(String classId) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank where class_id=?";
        return BaseDao.getBeanList(sql, DateBank.class,classId);
    }

    @Override
    public List<DateBank> getBeanListByCourseId(String courseId) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank where course_id=?";
        return BaseDao.getBeanList(sql, DateBank.class,courseId);
    }

    @Override
    public List<DateBank> getBeanListByDataType(String dataType) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType from databank where data_type=?";
        return BaseDao.getBeanList(sql, DateBank.class,dataType);
    }
}
