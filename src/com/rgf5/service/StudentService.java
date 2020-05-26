package com.rgf5.service;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Student;

import java.util.List;

/**
 * @author 31637 学生的事务控制
 */
public interface StudentService {

    /**
     * 通过账号查找用户
     * @param student 学生对象
     * @return 要查找的用户
     */
    public Student getBeanByStudentId(Student student);

    /**
     * 通过id查找用户
     * @param student 学生对象
     * @return 要查找的用户
     */
    public Student getBeanById(Student student);

    /**
     * 通过学生姓名查找用户
     * @param student 学生对象
     * @return 要查找的用户
     */
    public List<Student> getBeanListByStudentName(Student student);

    /**
     * 获取所有的学生信息
     * @return 所有的学生信息
     */
    public List<Student> getBeanListAll();

    /**
     * 通过班级id获取班级所有学生的信息
     * @param classes 班级对象
     * @return 一个班级的所有学生信息
     */
    public List<Student> getBeanListByClassId(Classes classes);

    /**
     * 通过课程号获取该课程的所有学生信息
     * @param course 课程对象
     * @return 一个课程的所有学生信息
     */
    public List<Student> getBeanListByCourseId(Course course);


    /**
     * 学生注册
     * @param student 要注册的学生
     * @return true表示注册成功
     */
    public boolean register(Student student);

    /**
     * 学生登录
     * @param student 学生对象
     * @return 要登录的用户
     */
    public Student login(Student student);

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
     * @param student 学生对象
     * @return true表示删除成功
     */
    public boolean delete(Student student);

}
