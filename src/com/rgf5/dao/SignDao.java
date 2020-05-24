package com.rgf5.dao;

import com.rgf5.bean.Sign;

import java.util.List;

/**
 * 签到的数据库操作
 * @author Administrator
 */
public interface SignDao {
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
     * @param studentId 学生ID
     * @return 一个学生所有的签到信息
     */
    public List<Sign> getBeanListByStudentId(String studentId);
    /**
     * 通过班级ID获取签到信息
     * @param classId 班级ID
     * @return 一个班级所有的签到信息
     */
    public List<Sign> getBeanListByClassId(String classId);
    /**
     * 通过课程ID获取签到信息
     * @param courseId 课程ID
     * @return 一个课程所有的签到信息
     */
    public List<Sign> getBeanListByCourseId(String courseId);


}
