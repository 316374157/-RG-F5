package com.rgf5.dao;

import com.rgf5.bean.Student;

import java.util.List;

/**
 * @author Administrator 学生的数据库操作接口
 */
public interface StudentDao {
    /**
     * 通过账号查找用户
     * @param studentId 账号
     * @return 要查找的用户
     */
    public Student getBeanByStudentId(String studentId);

    /**
     * 通过id查找用户
     * @param id ID
     * @return 要查找的用户
     */
    public Student getBeanById(Integer id);

    /**
     * 通过学生姓名查找用户
     * @param studentName 学生姓名
     * @return 要查找的用户
     */
    public List<Student> getBeanListByStudentName(String studentName);

    /**
     * 获取所有的学生信息
     * @return 所有的学生信息
     */
    public List<Student> getBeanListAll();

    /**
     * 通过班级id获取班级所有学生的信息
     * @param classId 班级id
     * @return 一个班级的所有学生信息
     */
    public List<Student> getBeanListByClassId(String classId);

    /**
     * 通过课程号获取该课程的所有学生信息
     * @param courseId 课程号
     * @return 一个课程的所有学生信息
     */
    public List<Student> getBeanListByCourseId(String courseId);


    /**
     * 学生注册
     * @param student 要注册的学生
     * @return true表示注册成功
     */
    public boolean register(Student student);

    /**
     * 学生登录
     * @param studentId 学生账号
     * @param passWd 登录密码
     * @return 要登录的用户
     */
    public Student login(String studentId,String passWd);

    /**
     * 学生信息更新
     * @param student 改好资料的学生
     * @return True表示修改成功
     */
    public boolean update(Student student);

    /**
     * 修改学生的班级
     * @param student 需要修改的学生
     * @return true表示修改成功
     */
    public boolean changeClassId(Student student);

    /**
     * 删除一个学生账号
     * @param id 要删除的学生id
     * @return true表示删除成功
     */
    public boolean delete(Integer id);
}
