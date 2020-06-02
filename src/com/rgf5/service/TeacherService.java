package com.rgf5.service;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;

import java.util.List;

/**
 * @author 31637 教师事务控制
 */
public interface TeacherService {


    /**
     * 管理员添加一名老师
     * @param teacher 添加的老师
     * @return true表示添加成功
     */
    public boolean add(Teacher teacher);

    /**
     * 通过老师的ID查询老师信息
     * @param teacher 老师对象
     * @return 被查询老师的信息
     */
    public Teacher getBeanByTeacherId(Teacher teacher);

    /**
     * 通过id查询老师的全部信息
     * @param teacher 老师对象
     * @return  被查询老师的id
     */
    public Teacher getBeanById(Teacher teacher);

    /**
     * 通过老师的姓名查询老师的信息
     * @param teacher 老师对象
     * @return 老师的所有信息
     */
    public List<Teacher> getBeanListByTeacherName(Teacher teacher);

    /**
     * 获取所有的老师信息
     * @return 所有的老师信息
     */
    public List<Teacher> getBeanListAll();
    /**
     * 通过课程id获取该课程老师的信息
     * @param course 课程对象
     * @return 该课程老师的信息
     */
    public List<Teacher> getBeanListByCourseId(Course course);
    /**
     * 通过班级id获取班级所有老师的信息
     * @param classes 班级对象
     * @return 一个班级的所有老师信息
     */
    public List<Teacher> getBeanListByClassId(Classes classes);
    /**
     * 老师登录
     * @param teacher 老师对象
     * @return 要登录的用户
     */
    public Teacher login(Teacher teacher);

    /**
     * 老师信息更新
     * @param teacher 老师对象
     * @return True表示修改成功
     */
    public boolean update(Teacher teacher);

    /**
     * 删除一个老师账号
     * @param teacher 老师对象
     * @return true表示删除成功
     */
    public boolean delete(Teacher teacher);
}
