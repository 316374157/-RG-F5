package com.rgf5.dao.impl;

import com.rgf5.bean.Sign;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.SignDao;

import java.util.List;

public class SignDaoImpl implements SignDao {
    @Override
    public boolean add(Sign sign)
    {
        String sql = "INSERT INTO sign_table(student_id,student_name,class_id,course_id,sign1,sign2,sign3,"
                    + "sign4,sign5) values(?,?,?,?,?,?,?,?,?)";
        return BaseDao.update(sql,sign.getStudentId(),sign.getStudentName(),sign.getClassId(),sign.getCourseId(),
                sign.getSign1(),sign.getSign2(),sign.getSign3(),sign.getSign4(),sign.getSign5());
    }


    @Override
    public boolean update(Sign sign)
    {
        String sql = "UPDATE sign_table SET student_id = ?,student_name = ?,class_id = ?,course_id=?," +
                "sign1 = ?,sign2 = ?,sign3 = ?,sign4 = ?,sign5 = ? where id =? ";
        return BaseDao.update(sql,sign.getStudentId(),sign.getStudentName(),sign.getClassId(),
                sign.getCourseId(),sign.getSign1(),sign.getSign2(),sign.getSign3(),
                sign.getSign4(),sign.getSign5(),sign.getId());
    }

    @Override
    public boolean delete(Sign sign)
    {
        String sql = "DELETE FROM sign_table WHERE id = ?";
        return BaseDao.update(sql, sign);
    }

    @Override
    public Sign getSignInfo(Sign sign) {
        String sql = "SELECT id,student_id as studentId,student_name as studentName,class_id as classId,"
                + "course_id as courseId,sign1,sign2,sign3,sign4,sign5 FROM sign_table WHERE "
                + "student_id=? AND course_id = ? AND class_id = ?";
        return BaseDao.getBean(sql, Sign.class,sign.getStudentId(),sign.getCourseId(),sign.getClassId());
    }

    @Override
    public List<Sign> getBeanListAll()
    {
        String sql = "SELECT id,class_Id as classId,course_Id as courseId,student_Id as studentId,student_name as studentName," +
                "sign1,sign2,sign3,sign4,sign5 from sign_table";
        return BaseDao.getBeanList(sql, Sign.class);
    }

    @Override
    public List<Sign> getBeanListByStudentId(String studentId)
    {
        String sql = "SELECT id,class_Id as classId,course_id as courseId,student_Id as studentId,student_name as studentName," +
                "sign1,sign2,sign3,sign4,sign5 from sign_table where student_Id = ?";
        return BaseDao.getBeanList(sql, Sign.class, studentId);
    }

    @Override
    public List<Sign> getBeanListByClassId(String classId)
    {
        String sql = "SELECT id,class_Id as classId,student_Id as studentId,student_name as studentName," +
                "sign1,sign2,sign3,sign4,sign5 from sign_table where class_Id = ?";
        return BaseDao.getBeanList(sql, Sign.class,classId);
    }

    @Override
    public List<Sign> getBeanListByCourseId(String courseId)
    {
        String sql = "SELECT id,class_Id as classId,student_Id as studentId,student_name as studentName," +
                "sign1,sign2,sign3,sign4,sign5 from sign_table where course_id = ?";
        return BaseDao.getBeanList(sql, Sign.class,courseId);
    }

    @Override
    public List<Sign> getBeanListByCC(String courseId,String classId){
        String sql = "SELECT id,student_id as studentId,student_name as studentName,class_id as classId,course_id as courseId,sign1,sign2,sign3," +
                "sign4,sign5 FROM sign_table WHERE course_id = ? AND class_id = ?";
        return BaseDao.getBeanList(sql, Sign.class,courseId,classId);
    }
}
