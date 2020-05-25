package com.rgf5.bean;

/**
 * @ClassName Teacher
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Teacher {

    /**
     * 主键，自增
     */
    private  int id;
    /**
     * 老师id
     */
    private String teacherId;
    /**
     * 密码
     */
    private String passWd;
    /**
     * 性别
     */
    private String sex;
    /**
     * 老师所教的第一个课程
     */
    private String courseId1;
    /**
     * 老师所教的第二个课程
     */
    private String courseId2;
    /**
     * 老师所教的第三个课程
     */
    private String courseId3;
    /**
     * 老师姓名
     */
    private String teacherName;

    public Teacher() {
    }

    public Teacher(int id, String teacherId, String passWd, String sex, String courseId1, String courseId2, String courseId3,String teacherName) {
        this.id = id;
        this.teacherId = teacherId;
        this.passWd = passWd;
        this.sex = sex;
        this.teacherName = teacherName;
        this.courseId1 = courseId1;
        this.courseId2 = courseId2;
        this.courseId3 = courseId3;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getPassWd() {
        return passWd;
    }

    public void setPassWd(String passWd) {
        this.passWd = passWd;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCourseId1() {
        return courseId1;
    }

    public void setCourseId1(String courseId1) {
        this.courseId1 = courseId1;
    }

    public String getCourseId2() {
        return courseId2;
    }

    public void setCourseId2(String courseId2) {
        this.courseId2 = courseId2;
    }

    public String getCourseId3() {
        return courseId3;
    }

    public void setCourseId3(String courseId3) {
        this.courseId3 = courseId3;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", teacherId='" + teacherId + '\'' +
                ", passWd='" + passWd + '\'' +
                ", sex='" + sex + '\'' +
                ", courseId1='" + courseId1 + '\'' +
                ", courseId2='" + courseId2 + '\'' +
                ", courseId3='" + courseId3 + '\'' +
                ", teacherName='" + teacherName + '\'' +
                '}';
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
}
