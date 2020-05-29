package com.rgf5.dao.impl;

import com.rgf5.bean.DataBank;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.DataBankDao;

import java.util.List;

/**
 * @ClassName DateBankDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class DataBankDaoImpl implements DataBankDao {

    @Override
    public boolean add(DataBank dataBank) {
        String sql = "insert into databank(data_name,data_path,class_id,course_id,data_type,author_id,author_name) values(?,?,?,?,?,?,?)";
        return BaseDao.update(sql, dataBank.getDataName(), dataBank.getDataPath(), dataBank.getClassId(),
                dataBank.getCourseId(),dataBank.getDataType(),dataBank.getAuthorId(),dataBank.getAuthorName());
    }

    @Override
    public boolean delete(DataBank dataBank) {
        String sql = "delete databank where id=?";
        return BaseDao.update(sql, dataBank.getId());
    }

    @Override
    public List<DataBank> getBeanListAll() {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank";
        return BaseDao.getBeanList(sql, DataBank.class);
    }

    @Override
    public List<DataBank> getBeanByDataName(String dataName) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank where data_name=?";
        return BaseDao.getBeanList(sql, DataBank.class,dataName);
    }

    @Override
    public DataBank getBeanByDataPath(String dataPath) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank where data_path=?";
        return BaseDao.getBean(sql, DataBank.class, dataPath);
    }

    @Override
    public List<DataBank> getBeanListByClassId(String classId) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank where class_id=?";
        return BaseDao.getBeanList(sql, DataBank.class,classId);
    }

    @Override
    public List<DataBank> getBeanListByCourseId(String courseId) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank where course_id=?";
        return BaseDao.getBeanList(sql, DataBank.class,courseId);
    }

    @Override
    public List<DataBank> getBeanListByDataType(String dataType) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from databank where data_type=?";
        return BaseDao.getBeanList(sql, DataBank.class,dataType);
    }

    @Override
    public List<DataBank> getBeanListByPerson(Integer authorId,String authorName) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from " +
                "databank where author_id=? and author_name=?";
        return BaseDao.getBeanList(sql, DataBank.class,authorId,authorName);
    }

    @Override
    public List<DataBank> getFileByCourseIdAndClassId(String courseId, String classesId) {
        String sql = "select id,data_name as dataName,data_path as dataPath,class_id as classId,course_id as courseId" +
                ",data_type as dataType,author_id as authorId,author_name as authorName from " +
                "databank where course_id=? and class_id=?";
        return BaseDao.getBeanList(sql, DataBank.class,courseId,classesId);
    }
}
