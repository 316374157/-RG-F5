package com.rgf5.bean;

/**
 * @ClassName Class
 * @Description: TODO
 * @Author 31637
 * @Date 2020/5/18
 * @Version V1.0
 **/
public class Classes {

    /**
     * 主键
     */
    private Integer id;
    /**
     * 班级id
     */
    private String classId;
    /**
     * 班级名称
     */
    private String className;
    /**
     * 第一个课程号
     */
    private  String courseId1;
    /**
     * 第二个课程号
     */
    private  String courseId2;
    /**
     * 第三个课程号
     */
    private  String courseId3;
    /**
     * 第四个课程号
     */
    private  String courseId4;
    /**
     * 第五个课程号
     */
    private  String courseId5;

    public Classes() {
    }

    public Classes(Integer id, String classId, String className, String courseId1, String courseId2, String courseId3, String courseId4, String courseId5) {
        this.id = id;
        this.classId = classId;
        this.className = className;
        this.courseId1 = courseId1;
        this.courseId2 = courseId2;
        this.courseId3 = courseId3;
        this.courseId4 = courseId4;
        this.courseId5 = courseId5;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
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

    public String getCourseId4() {
        return courseId4;
    }

    public void setCourseId4(String courseId4) {
        this.courseId4 = courseId4;
    }

    public String getCourseId5() {
        return courseId5;
    }

    public void setCourseId5(String courseId5) {
        this.courseId5 = courseId5;
    }

    @Override
    public String toString() {
        return "Classes{" +
                "id=" + id +
                ", classId='" + classId + '\'' +
                ", className='" + className + '\'' +
                ", courseId1='" + courseId1 + '\'' +
                ", courseId2='" + courseId2 + '\'' +
                ", courseId3='" + courseId3 + '\'' +
                ", courseId4='" + courseId4 + '\'' +
                ", courseId5='" + courseId5 + '\'' +
                '}';
    }
}
