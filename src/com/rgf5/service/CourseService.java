package com.rgf5.service;

import com.rgf5.bean.Course;

import java.util.List;

/**
 * @author 31637 课程事务控制
 */
public interface CourseService {
    /**
     * 添加一个课程
     * @param course 添加的课程
     * @return true表示添加成功
     */
    public boolean add(Course course);
    /**
     * 课程信息更新
     * @param course 更新过的课程
     * @return True表示修改成功
     */
    public boolean update(Course course);

    /**
     * 删除一个课程
     * @param course 课程对象
     * @return true表示删除成功
     */
    public boolean delete(Course course);
    /**
     * 获取所有的课程信息
     * @return 所有的课程信息
     */
    public List<Course> getBeanListAll();
    /**
     * 通过课程编号获取课程信息
     * @param course 课程对象
     * @return 一个课程的所有信息
     */
    public Course getBeanByCourseId(Course course);
    /**
     * 通过课程名获取课程信息
     * @param course 课程对象
     * @return 一个课程的信息
     */
    public Course getBeanByCourseName(Course course);
}
