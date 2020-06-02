package com.rgf5.dao.impl;

import com.rgf5.bean.Teacher;
import com.rgf5.dao.BaseDao;
import com.rgf5.dao.TeacherDao;

import java.util.List;

/**
 * @ClassName TeacherDaoImpl
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/26
 * @Version V1.0
 **/
public class TeacherDaoImpl implements TeacherDao {
    @Override
    public boolean add(Teacher teacher)
    {
        String sql = "INSERT INTO teachers SET username = ?,passwd = ?,sex = ?," +
                "course_id1 = ?,course_id2 = ?,course_id3 = ?,teacher_name = ?";
        return BaseDao.update(sql,teacher.getUsername(),teacher.getPassWd(),
                teacher.getSex(),teacher.getCourseId1(),teacher.getCourseId2(),
                teacher.getCourseId3(),teacher.getTeacherName());
    }


    @Override
    public Teacher getBeanByTeacherId(String username) {
        String sql = "SELECT id,username,passwd AS passWd,sex,teacher_Name AS teacherName,course_id1 AS courseId1," +
                "course_id2 AS courseId2,course_id3 AS courseId3 FROM teachers WHERE username = ?";
        return BaseDao.getBean(sql, Teacher.class,username);
    }

    @Override
    public Teacher getBeanById(Integer id) {
        String sql = "SELECT id,username,passwd AS passWd,sex,teacher_Name AS teacherName,course_id1 AS courseId1," +
                "course_id2 AS courseId2,course_id3 AS courseId3 FROM teachers WHERE id = ?";
        return BaseDao.getBean(sql, Teacher.class,id);
    }

    @Override
    public List<Teacher> getBeanListByTeacherName(String teacherName) {
        String sql = "SELECT id,username,passwd AS passWd,sex,teacher_name AS teacherName,course_Id1 AS courseId1," +
                "course_Id2 AS courseId2,course_Id3 AS courseId3 FROM teachers WHERE teacher_name = ?";
        return BaseDao.getBeanList(sql, Teacher.class,teacherName);
    }

    @Override
    public List<Teacher> getBeanListAll() {
        String sql = "SELECT id,username,passwd AS passWd,sex,teacher_Name AS teacherName,course_Id1 AS courseId1," +
                "course_Id2 AS courseId2,course_Id3 AS courseId3 FROM teachers";
        return BaseDao.getBeanList(sql, Teacher.class);
    }

    @Override
    public List<Teacher> getBeanListByCourseId(String courseId) {
        String sql = "SELECT id,username,passwd AS passWd,sex,teacher_name AS teacherName, " +
                "course_id1 AS courseId1,course_id2 AS courseId2,course_id3 AS courseId3 FROM teachers " +
                " WHERE course_id1 = ? OR course_id2 = ? OR course_id3 = ?";
        return BaseDao.getBeanList(sql, Teacher.class ,courseId,courseId,courseId);
    }

    @Override
    public List<Teacher> getBeanListByClassId(String classId) {
        String sql = "SELECT id,username,passwd ,sex,teacher_name ,course_id1 ,course_id2 ,course_id3  FROM teachers" +
                "                WHERE course_id1 IN (SELECT course_id1 FROM classes WHERE class_id = ?)" +
                "                OR course_id1 IN (SELECT course_id2 FROM classes WHERE class_id = ?)" +
                "                OR course_id1 IN (SELECT course_id3 FROM classes WHERE class_id = ?)" +
                "                OR course_id1 IN (SELECT course_id4 FROM classes WHERE class_id = ?)" +
                "                OR course_id1 IN (SELECT course_id5 FROM classes WHERE class_id = ?)" +
                "                OR course_id2 IN (SELECT course_id1 FROM classes WHERE class_id = ?)" +
                "                OR course_id2 IN (SELECT course_id2 FROM classes WHERE class_id = ?)" +
                "                OR course_id2 IN (SELECT course_id3 FROM classes WHERE class_id = ?)" +
                "                OR course_id2 IN (SELECT course_id4 FROM classes WHERE class_id = ?)" +
                "                OR course_id2 IN (SELECT course_id5 FROM classes WHERE class_id = ?)" +
                "                OR course_id3 IN (SELECT course_id1 FROM classes WHERE class_id = ?)" +
                "                OR course_id3 IN (SELECT course_id2 FROM classes WHERE class_id = ?)" +
                "                OR course_id3 IN (SELECT course_id3 FROM classes WHERE class_id = ?)" +
                "                OR course_id3 IN (SELECT course_id4 FROM classes WHERE class_id = ?)" +
                "                OR course_id3 IN (SELECT course_id5 FROM classes WHERE class_id = ?)";
        return BaseDao.getBeanList(sql, Teacher.class,classId,classId,classId,classId,classId,classId,classId,
                classId,classId,classId,classId,classId,classId,classId,classId);
    }

  @Override
  public Teacher login(String username, String passWd) {
        String sql = "SELECT id,username,passWd,sex,teacher_name AS teacherName,course_id1 AS courseId1," +
                "course_id2 AS courseId2,course_id3 AS courseId3 FROM teachers WHERE username = ? AND passWd = ?";
        return BaseDao.getBean(sql, Teacher.class, username,passWd);
    }

    @Override
    public boolean update(Teacher teacher) {
        String sql = "UPDATE teachers SET username = ?,passwd = ?,sex = ?," +
                "course_id1 = ?,course_id2 = ?,course_id3 = ?,teacher_name = ? WHERE id = ?";
        return BaseDao.update(sql, teacher.getUsername(),teacher.getPassWd(),
                teacher.getSex(),teacher.getCourseId1(),teacher.getCourseId2(),
                teacher.getCourseId3(),teacher.getTeacherName(),teacher.getId());
    }


    @Override
    public boolean delete(Integer id) {
        String sql = "DELETE FROM teachers WHERE id = ?";
        return BaseDao.update(sql, id);
    }
}
