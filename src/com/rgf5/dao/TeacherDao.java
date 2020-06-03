package com.rgf5.dao;

import com.rgf5.bean.Teacher;

import java.util.List;

/**
 * @author Administrator 老师的数据库操作
 */
public interface TeacherDao {

    /**
     * 管理员添加一名老师
     * @param teacher 添加的老师
     * @return true表示添加成功
     */
    public boolean add(Teacher teacher);

    /**
     * 通过老师的ID查询老师信息
     * @param username 被查询老师的ID
     * @return 被查询老师的信息
     */
    public Teacher getBeanByTeacherId(String username);

    /**
     * 通过id查询老师的全部信息
     * @param id 老师的ID
     * @return  被查询老师的id
     */
    public Teacher getBeanById(Integer id);

    /**
     * 通过老师的姓名查询老师的信息
     * @param teacherName 老师的姓名
     * @return 老师的所有信息
     */
    public List<Teacher> getBeanListByTeacherName(String teacherName);

    /**
     * 获取所有的老师信息
     * @return 所有的老师信息
     */
    public List<Teacher> getBeanListAll();
    /**
     * 通过课程id获取该课程老师的信息
     * @param courseId 课程id
     * @return 该课程老师的信息
     */
    public List<Teacher> getBeanListByCourseId(String courseId);
    /**
     * 通过班级id获取班级所有老师的信息
     * @param classId 班级id
     * @return 一个班级的所有老师信息
     */
    public List<Teacher> getBeanListByClassId(String classId);
    /**
     * 老师登录
     * @param teacherId 老师账号
     * @param passWd 登录密码
     * @return 要登录的用户
     */
    public Teacher login(String teacherId,String passWd);

    /**
     * 老师信息更新
     * @param teacher 改好资料的老师
     * @return True表示修改成功
     */
    public boolean update(Teacher teacher);



    /**
     * 删除一个老师账号
     * @param id 要删除的老师id
     * @return true表示删除成功
     */
    public boolean delete(Integer id);

    public Teacher getBeanByCourseId(String courseId);
}
