package com.rgf5.service;

import com.rgf5.bean.Classes;
import com.rgf5.bean.Course;
import com.rgf5.bean.Sign;
import com.rgf5.bean.Student;

import java.util.List;

/**
 * @author 31637 签到的事务控制
 */
public interface SignService {

    /**
     * 添加第一次签到信息
     * @param sign 添加的签到信息
     * @return true表示添加成功
     */
    public boolean add(Sign sign);
    /**
     * 签到信息更新
     * @param sign 更新过的签到
     * @return True表示更新成功
     */
    public boolean update(Sign sign);

    /**
     * 删除一次签到
     * @param sign 要删除的签到
     * @return true表示删除成功
     */
    public boolean delete(Sign sign);
    /**
     * 获取所有的签到信息
     * @return 所有的签到信息
     */
    public List<Sign> getBeanListAll();
    /**
     * 通过学生ID获取签到信息
     * @param student 学生对象
     * @return 一个学生所有的签到信息
     */
    public List<Sign> getBeanListByStudentId(Student student);
    /**
     * 通过班级ID获取签到信息
     * @param classes 班级对象
     * @return 一个班级所有的签到信息
     */
    public List<Sign> getBeanListByClassId(Classes classes);
    /**
     * 通过课程ID获取签到信息
     * @param course 课程对象
     * @return 一个课程所有的签到信息
     */
    public List<Sign> getBeanListByCourseId(Course course);
}
