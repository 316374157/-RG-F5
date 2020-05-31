package com.rgf5.dao.impl;

import com.rgf5.bean.Sign;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.SignDao;

import java.util.List;

public class SignDaoImpl implements SignDao {
    @Override
    public boolean add(Sign sign)
    {
        String sql = "INSERT INTO sign SET id = ,class_Id = ?,student_Id = ?" +
                "sign_1 = ?,sign_2 = ?,sign_3 = ?,sign_4 = ?,sign_5 = ?";
        return BaseDao.update(sql,sign.getId(),sign.getClassId(),sign.getStudentId(),
                sign.getSign1(),sign.getSign2(),sign.getSign3(),sign.getSign4(),sign.getSign5());
    }

    @Override
    public boolean update(Sign sign)
    {
        String sql = "UPDATE INTO sign SET id = ,class_Id = ?,student_Id = ?" +
                "sign_1 = ?,sign_2 = ?,sign_3 = ?,sign_4 = ?,sign_5 = ?";
        return BaseDao.update(sql,sign.getId(),sign.getClassId(),sign.getStudentId(),
                sign.getSign1(),sign.getSign2(),sign.getSign3(),sign.getSign4(),sign.getSign5());
    }

    @Override
    public boolean delete(Sign sign)
    {
        String sql = "DELETE FROM student WHERE id = ?";
        return BaseDao.update(sql, sign);
    }

    @Override
    public List<Sign> getBeanListAll()
    {
        String sql = "SELECT id = ,class_Id as classId,student_Id as studentId" +
                "sign_1 as sign1,sign_2 as sign2,sign_3 as sign3,sign_4 as sign4,sign_5 as sign5 from signs";
        return BaseDao.getBeanList(sql, Sign.class);
    }

    @Override
    public List<Sign> getBeanListByStudentId(String studentId)
    {
        String sql = "SELECT id = ,class_Id as classId,student_Id as studentId" +
                "sign_1 as sign1,sign_2 as sign2,sign_3 as sign3,sign_4 as sign4,sign_5 as sign5 from signs"+
                "where student_Id = ?";
        return BaseDao.getBeanList(sql, Sign.class, studentId);
    }

    @Override
    public List<Sign> getBeanListByClassId(String classId)
    {
        String sql = "SELECT id = ,class_Id as classId,student_Id as studentId" +
                "sign_1 as sign1,sign_2 as sign2,sign_3 as sign3,sign_4 as sign4,sign_5 as sign5 from signs"+
                " where class_Id = ?";
        return BaseDao.getBeanList(sql, Sign.class,classId);
    }

    @Override
    public List<Sign> getBeanListByCourseId(String courseId)
    {
        String sql = "SELECT id = ,class_Id as classId,student_Id as studentId" +
                "sign_1 as sign1,sign_2 as sign2,sign_3 as sign3,sign_4 as sign4,sign_5 as sign5 from signs"+
                " where course_id = ?";
        return BaseDao.getBeanList(sql, Sign.class,courseId);
    }
}
