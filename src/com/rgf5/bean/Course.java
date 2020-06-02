package com.rgf5.bean;

/**
 * @ClassName Course
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Course {
    /**
     * 主键
     */
    private Integer id;
    /**
     * 课程编号
     */
    private String courseId;
    /**
     * 课程名
     */
    private String courseName;

    public Course() {
    }

    public Course(Integer id, String courseId, String courseName) {
        this.id = id;
        this.courseId = courseId;
        this.courseName = courseName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }


    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", courseId='" + courseId + '\'' +
                ", courseName='" + courseName + '\'' +
                '}';
    }
}
