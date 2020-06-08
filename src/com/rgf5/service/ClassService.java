package com.rgf5.service;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Teacher;

import java.util.List;

/**
 *班级的数据库操作
 * @author Administrator
 */
public interface ClassService {

    /**
     * 管理员添加一个班级
     * @param classes 班级对象
     * @return true表示添加成功
     */
    public boolean add(Classes classes);
    /**
     * 班级信息更新
     * @param classes 班级对象
     * @return True表示修改成功
     */
    public boolean update(Classes classes);

    /**
     * 删除一个班级账号
     * @param classes 班级对象
     * @return true表示删除成功
     */
    public boolean delete(Classes classes);
    /**
     * 获取所有的班级信息
     * @return 所有的班级信息
     */
    public List<Classes> getBeanListAll();
    /**
     * 通过班级id获取班级信息
     * @param classes 班级对象
     * @return 一个班级的所有信息
     */
    public Classes getBeanByClassId(Classes classes);
    /**
     * 通过课程id获取班级信息
     * @param course 课程对象
     * @return 班级的信息
     */
    public List<Classes> getBeanListByCourseId(Course course);
    /**
     * 通过班级名获取班级信息
     * @param classes 班级对象
     * @return 一个班级的信息
     */
    public Classes getBeanByClassName(Classes classes);

    /**
     * 老师获取本人所交的全部班级
     * @param teacher 老师对象
     * @return 老师的全部班级
     */
    public List<Classes> getMyBeanList(Teacher teacher);
}
