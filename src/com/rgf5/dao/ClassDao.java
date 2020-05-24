package com.rgf5.dao;

import com.rgf5.bean.Classes;

import java.util.List;

/**
 *班级的数据库操作
 * @author Administrator
 */
public interface ClassDao {
    /**
     * 管理员添加一个班级
     * @param classes 添加的班级
     * @return true表示添加成功
     */
    public boolean add(Classes classes);
    /**
     * 班级信息更新
     * @param classes 更新过的班级
     * @return True表示修改成功
     */
    public boolean update(Classes classes);

    /**
     * 删除一个班级账号
     * @param id 要删除的班级id
     * @return true表示删除成功
     */
    public boolean delete(Integer id);
    /**
     * 获取所有的班级信息
     * @return 所有的班级信息
     */
    public List<Classes> getBeanListAll();
    /**
     * 通过班级id获取班级信息
     * @param classId 班级id
     * @return 一个班级的所有信息
     */
    public Classes getBeanByClassId(String classId);
    /**
     * 通过课程id获取班级信息
     * @param courseId 课程id
     * @return 班级的信息
     */
    public List<Classes> getBeanListByCourseId(String courseId);
    /**
     * 通过班级名获取班级信息
     * @param className 班级名
     * @return 一个班级的信息
     */
    public Classes getBeanByClassName(String className);

}
