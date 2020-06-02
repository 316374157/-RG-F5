package com.rgf5.dao;

import com.rgf5.bean.Course;

import java.util.List;

/**
 * 课程的数据库操作
 * @author Administrator
 */
public interface CourseDao {
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
     * @param id 要删除的课程id
     * @return true表示删除成功
     */
    public boolean delete(Integer id);
    /**
     * 获取所有的课程信息
     * @return 所有的课程信息
     */
    public List<Course> getBeanListAll();
    /**
     * 通过课程编号获取课程信息
     * @param courseId 课程编号
     * @return 一个课程的所有信息
     */
    public Course getBeanByCourseId(String courseId);

    /**
     * 通过课程名获取课程信息
     * @param courseName 课程名
     * @return 一个课程的信息
     */
    public Course getBeanByCourseName(String courseName);
}
